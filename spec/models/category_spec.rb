require 'rails_helper'

describe Category, type: :model do
  describe 'validations' do
    it {should validate_presence_of :topic}
  end
  describe 'relationships' do
    it {should have_many(:ideas)}
  end
end