require 'rails_helper'

describe 'on idea showpage' do
  it 'shows a specific idea' do
    idea1 = Idea.create(title: "monster", image: "frankenstein", note: "great idea")
    idea2 = Idea.create(title: "bride", image: "bride of frankenstein", note: "grandiose")

    visit ideas_path

    ('deletion').first.click_link("")
  end
end