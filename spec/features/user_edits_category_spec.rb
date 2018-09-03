require 'rails_helper'
describe 'from category index' do
  describe 'user clicks on edit category' do
    it 'takes user to category showpage' do
      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit categories_path

      first('.deletion').click_link 'Edit'

      expect(current_path).to eq(edit_category_path(cat1))
    end
  end
  describe 'user navigates to fill out category edit form' do
    it 'fills in edit form to update category' do
      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit categories_path

      first('.deletion').click_link 'Edit'

      expect(current_path).to eq(edit_category_path(cat1))

      fill_in :topic, with: "Something"
      click_link "Submit"

      expect(current_path).to eq(categories_path)
      expect(page).to have_content("Something")
    end
  end
end