class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in:categories }
end
