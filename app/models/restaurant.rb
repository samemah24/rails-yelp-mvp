class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, presence: true
end
