require 'rails_helper'

describe 'on user showpage' do
  it 'shows only ideas from user' do
    user1 = User.create(username: "Job", password: "pass")
    user2 = User.create(username: "Sally", password: "boss")
    idea1 = user1.ideas.create(title: "monster", image: "frankenstein", note: "great idea")
    idea2 = user1.ideas.create(title: "bride", image: "loverly", note: "grandiose")
    idea3 = user2.ideas.create(title: "banjo", image: "catchy", note: "stupendous")
    
  end
end