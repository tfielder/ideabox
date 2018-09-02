require 'rails_helper'

describe 'on category index page' do
  describe 'user clicks on delete next to category' do
    it 'deletes a category' do
      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit '/categories'

      click_link "Delete"

      expect(current_path).to eq (categories_path)
      expect(page).to have_content("#{cat2.topic}")
      expect(page).not_to have_content("#{cat1.topic}")

    end
  end
end