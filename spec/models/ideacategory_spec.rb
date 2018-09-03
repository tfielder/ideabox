require 'rails_helper'

describe Ideacategory, type: :model do
  describe 'relationships' do
    it {should belong_to(:category)}
    it {should belong_to(:idea)}
  end
end