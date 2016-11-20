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
    expect(page).to have_content("Your post was successful")
    expect(page).to have_content("The best head shot I could find")
    expect(page).to have_css("img[src*='head_shot_copy_3.jpg']")
  end

  scenario "Try to create a post without a picture" do
    add_post_no_photo
    expect(page).to have_content("You need to upload a photo first!")
  end

end
