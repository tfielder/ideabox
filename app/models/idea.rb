class Idea < ApplicationRecord
  validates_presence_of :title, :image, :note
  has_many :ideacategories
  has_many :categories, through: :ideacategories
end