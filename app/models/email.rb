class Email < ActiveRecord::Base
  validates :subject, :recipient, presence: true
  validates :recipient, format: { with: %r{\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z}i }
end
