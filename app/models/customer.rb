class Customer < ApplicationRecord
  belongs_to :province
  validates :full_name, :phone_number, presence: true

end
