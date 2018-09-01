require 'rails_helper'

describe Idea, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :image}
    it 
  end
  describe 'relationships' do
    it {should respond_to :category}
  end
end