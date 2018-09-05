class Idea < ApplicationRecord
  validates_presence_of :title, :image, :note
  belongs_to :category, optional: true
  belongs_to :user
end