class User < ApplicationRecord
  has_many :owner_equipments
  has_many :enthusiast_equipments
end
