class Idea < ApplicationRecord
  validates_presence_of :title, :image, :note
  has_many :categories
  belongs_to :user
end