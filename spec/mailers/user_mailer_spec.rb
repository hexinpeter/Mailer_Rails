require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "send" do
    fixtures :emails

    it "delivers" do
      email = emails(:test2)
      old_count = email_count
      UserMailer.send_to(email.recipient, email.subject, email.body).deliver_now
      expect(email_count).to eq(old_count+1)
    end

    it "renders the headers" do
      email = emails(:test2)
      UserMailer.send_to(email.recipient, email.subject, email.body).deliver_now
      expect(last_email.subject).to eq(email.subject)
      expect(last_email.to).to eq([email.recipient])
      expect(last_email.from).to eq(["petersendicate@gmail.com"])
    end

    it "renders the body" do
      email = emails(:test2)
      UserMailer.send_to(email.recipient, email.subject, email.body).deliver_now
      expect(last_email.body.encoded).to match(email.body)
    end
  end

end
