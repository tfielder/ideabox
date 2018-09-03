require 'rails_helper'

describe Category, type: :model do
  describe 'validations' do
    it {should validate_presence_of :topic}
  end
  describe 'relationships' do
    it {should have_many :ideacategories}
    it {should have_many :ideas.through :ideacategories}
  end
end