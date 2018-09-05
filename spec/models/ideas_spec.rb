require 'rails_helper'

describe Idea, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :image}
    it {should validate_presence_of :note}
  end
  describe 'relationships' do
    it {should have_many(:categories)}
    it {should belong_to(:user)}
  end
end