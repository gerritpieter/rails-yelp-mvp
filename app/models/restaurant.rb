class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(italian japanese french belgian chinese),
                                    message: "%{value} is not a valid category" }
end
