class Image < ApplicationRecord
  validates_presence_of :url
  has_many :ideaimages
  has_many :ideas, through: :ideaimages
end