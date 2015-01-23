module EmailValidation
  # Parse the list of email addresses using email validation API from MailGun.
  # A ParsedEmails object will be returned
  def parse_emails(addrs)
    addrs = addrs.join(",")
    apiKey = 'pubkey-41654c42ead4c66d226f4a0070d9f0cf'
    apiAddr = 'https://api.mailgun.net/v2/address/parse'
    response = HTTParty.get(apiAddr, query: {api_key: apiKey, addresses: addrs, syntax_only: false})
    returned = ParsedEmails.new(response["parsed"], response["unparseable"])
  end

  # Check the validity of a single address, return True or False
  def check_validity(addr)
    result = parse_emails([addr])
    if result.invalid.any? 
      return false 
    end
    return true
  end
  
end
