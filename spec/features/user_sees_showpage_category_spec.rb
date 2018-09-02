require 'rails_helper'

describe 'from category index' do
  describe 'user clicks on individual category' do
    it 'takes user to category showpage' do
      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit '/categories'

      first('.deletion').click_link 'Edit'

      expect(current_path).to eq(edit_category_path(cat1))

    end
  end
end