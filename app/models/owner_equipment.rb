class OwnerEquipment < ApplicationRecord
  belongs_to :user
  belongs_to :equipment
  
end
