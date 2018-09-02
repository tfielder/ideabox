require 'rails_helper'

describe 'user sees all categories' do
  describe 'they visit /categories' do
    it 'displays all categories' do
      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit '/categories'

      expect(page).to have_content("#{cat1.topic}")
      expect(page).to have_content("#{cat2.topic}")
      expect(page).to have_link("Create a New Category")
    end
  end
end