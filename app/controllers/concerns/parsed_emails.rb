# A Class to store the lists of valid and invalid emails 
class ParsedEmails
  attr_reader :valid, :invalid

  def initialize(valid, invalid)
    @valid = valid
    @invalid = invalid
  end
end