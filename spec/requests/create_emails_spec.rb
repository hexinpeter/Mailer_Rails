require 'rails_helper'

RSpec.describe "CreateEmails", :type => :request do
  describe "integration between emails#new and UserMailer" do
    fixtures :emails

    it "sends email when send button clicked" do
      email = emails(:test1)
      old_count = email_count

      visit new_email_path
      fill_in 'Subject', with: email.subject
      fill_in 'Body', with: email.body
      fill_in 'Recipient', with: email.recipient
      click_button "Send"

      expect(email_count).to eq(old_count+1)
    end


    it "sent mails matches the filled-in content" do
      email = emails(:test1)

      visit new_email_path
      fill_in 'Subject', with: email.subject
      fill_in 'Body', with: email.body
      fill_in 'Recipient', with: email.recipient
      click_button "Send"

      expect(last_email.subject).to eq(email.subject)
      expect(last_email.to).to eq([email.recipient])
      expect(last_email.body.encoded).to match(email.body)
    end

    it "does not send email if the address is invalid" do
      email = emails(:invalid_addr)
      old_count = email_count

      visit new_email_path
      fill_in 'Subject', with: email.subject
      fill_in 'Body', with: email.body
      fill_in 'Recipient', with: email.recipient
      click_button "Send"

      expect(email_count).to eq(old_count)
    end

  end
end













