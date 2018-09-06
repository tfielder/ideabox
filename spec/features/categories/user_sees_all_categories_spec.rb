require 'rails_helper'

describe 'admin user sees all categories' do
  describe 'they visit admin/categories' do
    it 'displays all categories' do
      admin = User.create(username: "cruz", password: "boom", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      cat1 = Category.create(topic: "Social")
      cat2 = Category.create(topic: "Technology")

      visit admin_categories_path

      expect(page).to have_content("#{cat1.topic}")
      expect(page).to have_content("#{cat2.topic}")
      expect(page).to have_link("Create a New Category")
      expect(page).to have_content("Edit")
      expect(page).to have_content("Delete")
    end
  end
end