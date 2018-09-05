require 'rails_helper'

describe 'user creates a new idea' do
  describe 'they link from the user showpage' do
    it 'allows user to fill in a new idea' do
      user1 = User.create(username: "Job", password: "pass")

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      visit user_path(user1)
      click_link 'Create a New Idea'
    end
  end
end

# describe 'on create new idea page' do
#   describe 'user creates a new idea' do
#     it "can fill in a idea" do
#
#       user1 = User.create(username: "Job", password: "pass")
#
#       allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)
#
#       visit user_path(user1)
#       click_link 'Create a New Idea'
#
#       expect(current_path).to eq(new_user_idea_path(user1))
#
#       fill_in "idea[title]", with: "Shazam"
#       fill_in "idea[image]", with: "Shazoo"
#       fill_in "idea[note]", with: "Shazah"
#
#       click_on "Create Idea"
#
#       expect(page).to have_content("Shazam")
#       expect(page).to have_content("Shazah")
#     end
#   end
# end
