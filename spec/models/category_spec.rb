require 'rails_helper'

describe Category, type: :model do
  describe 'validatins' do
    it {should validate_presence_of :topic}
  end
  describe 'relationships' do
    it {should respond_to :idea}
  end
end