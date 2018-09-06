class Image < ApplicationRecord
  validates_presence_of :url
  validates_presence_of :description
  has_many :ideaimages
  has_many :ideas, through: :ideaimages
end