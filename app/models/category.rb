class Category < ApplicationRecord
  validates_presence_of :topic
  has_many :ideas
end