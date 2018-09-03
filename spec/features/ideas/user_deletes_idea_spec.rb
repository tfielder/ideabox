require 'rails_helper'

describe 'on idea index page' do
  describe 'user clicks on delete next to idea' do
    it 'deletes an idea' do
      idea1 = Idea.create(title: "monster", image: "frankenstein", note: "great idea")
      idea2 = Idea.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

      visit ideas_path

      first('.deletion').click_link("Delete")

      expect(current_path).to eq (ideas_path)
      expect(page).to have_content("#{idea2.title}")
      expect(page).not_to have_content("#{idea1.title}")
      expect(page).to have_content("#{idea2.note}")
      expect(page).not_to have_content("#{idea1.note}")

    end
  end
end