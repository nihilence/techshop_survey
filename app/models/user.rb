class User < ApplicationRecord
  after_create :generate_token
  validates :email, uniqueness: true, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  has_many :owner_equipments
  has_many :enthusiast_equipments


  def generate_token
    token = SecureRandom.urlsafe_base64(16)
    while self.class.exists?(token: token)
      token = SecureRandom.urlsafe_base64(16)
    end
    self.token = token
    self.save!
    token
  end
end
