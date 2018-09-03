require 'rails_helper'

describe 'as a visitor' do
  describe 'when I visit \ and click on link to sign up' do
    it 'can fill in info and sign up to be taken to welcome page' do
      username = 'wowza'
      visit '/'

      click_on "Sign Up to Be a User"

      expect(current_path).to eq(new_user_path)

      fill_in :user_username, with: username
      fill_in :user_password, with: "test"

      click_on "Create User"

      expect(page).to have_content("Welcome, #{username}!")
    end
  end
end