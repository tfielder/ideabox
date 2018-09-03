class Category < ApplicationRecord
  validates_presence_of :topic
  has_many :ideacategories
  has_many :ideas, through: :ideacategories
end