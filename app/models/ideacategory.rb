class Ideacategory < ApplicationRecord
  belongs_to :idea
  belongs_to :category
end