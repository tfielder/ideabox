require 'rails_helper'

describe Category, type: :model do
  describe 'validatins' do
    it {should validate_presence_of :topic}
  end
end