require 'rails_helper'

RSpec.describe "CreateEmails", :type => :request do
  describe "integration between emails#new and UserMailer" do
    fixtures :emails

    it "sends email when send button clicked" do
      visit new_email_path
      old_count = email_count
      click_button "Send"
      expect(email_count).to eq(old_count+1)
    end

    it "sends an email that matches the recipient field" do
      [:test1, :test2].each do |t|
        email = emails(t)
        UserMailer.send_to.deliver_now
        assert_equal [email.recipient], last_email.to
      end
    end
  end
end
