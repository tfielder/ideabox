class Idea < ApplicationRecord
  validates_presence_of :title, :image, :note
  belongs_to :category, optional: true
  belongs_to :user
  has_many :ideaimages
  has_many :ideas, through: :ideaimages
end