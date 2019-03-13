class User < ApplicationRecord
  validates :username, presence: true, 
                       length: { minimum: 5, maximum: 25 }, 
                       uniqueness: { case_sensitive: false }

  # Check it out at rubular.com
  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
                    length: { maximum: 105 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end