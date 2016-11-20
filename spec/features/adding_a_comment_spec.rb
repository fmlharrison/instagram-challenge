require 'rails_helper'

RSpec.feature "Adding a comment to a photo", :type => :feature do

  scenario 'Adding a comment' do
    adding_post
    adding_comment
    expect(page).to have_content("You look like a dork!")
    expect(page).to have_content("Comment added!")
  end

  scenario 'Try to comment without text' do
    adding_post
    add_empty_comment
    expect(page).to have_content("Please leave a comment, if you want to comment. Silly!")
  end
end
