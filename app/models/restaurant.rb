class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, presence: true
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
