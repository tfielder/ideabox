require 'rails_helper'

describe 'on create new category page' do
  describe 'user creates a new category' do
    it "can fill in a category topic" do
      visit 'categories_path'
      click_link 'Create a New Category'

      expect(current_path).to eq(new_category_path)

      fill_in "category[topic]", with: "Food"
      click_on "Create Category"

      expect(page).to have_content("Food")
    end
  end
end