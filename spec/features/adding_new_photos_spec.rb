require "rails_helper"

RSpec.feature "Adding new photo", :type => :feature do

  scenario "Adding a new photo" do
    visit '/posts/new'
    expect(page).to have_content("Upload a new photo")
    expect(page).to have_content("Image")
    expect(page).to have_content("Caption")
  end

  scenario "Creting a new post with picture and caption" do
    adding_post
    expect(page).to have_content("The best head shot I could find")
    expect(page).to have_css("img[src*='head_shot_copy_3.jpg']")
  end

end
