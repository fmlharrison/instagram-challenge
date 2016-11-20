require 'rails_helper'

RSpec.feature 'Testing the nav bar buttons', :type => :feature do

  scenario 'Clicking the homepage link' do
    adding_post
    visit "/posts/1"
    click_link "Makersgram"
    expect(current_path).to eq("/")
  end

end
