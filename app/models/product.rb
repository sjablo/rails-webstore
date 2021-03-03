class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :nazwa, presence: true,
                    length: { minimum: 5 }
end
