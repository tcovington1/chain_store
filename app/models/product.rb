class Product < ApplicationRecord
  belongs_to :store
  has_many :reviews, dependent: :destroy
end
