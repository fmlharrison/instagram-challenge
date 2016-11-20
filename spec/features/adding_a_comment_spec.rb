require 'rails_helper'

RSpec.feature "Adding a comment to a photo", :type => :feature do

  scenario 'Adding a comment' do
    adding_post
    adding_comment
    expect(page).to have_content("You look like a dork!")
  end
end
