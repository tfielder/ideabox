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

      expect(page).to have_content("Logged in as, #{username}")
    end
  end
  describe 'it can login with credentials' do
    it 'can click on link to an account' do
      user = User.create(username: "Rocket", password: "test")

      visit '/'

      click_on "Sign In"

      fill_in :username, with: user.username
      fill_in :password, with: user.password

      click_on "Log In"

      expect(current_path).to eq(user_path(user))

      expect(page).to have_content("Logged in as, #{user.username}")
      expect(page).to have_content("Log Out")

    end
  end
  describe 'it can logout' do
    it 'can click on link to an account' do
      user = User.create(username: "Rocket", password: "test")

      visit '/'

      click_on "Sign In"

      fill_in :username, with: user.username
      fill_in :password, with: user.password

      click_on "Log In"

      expect(current_path).to eq(user_path(user))

      click_on "Log Out"

      expect(current_path).to eq(root_path)
      visit user_path(user)
      expect(current_path).to eq(root_path)
    end
  end
end