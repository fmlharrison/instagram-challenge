require "rails_helper"

RSpec.feature "Adding new photo", :type => :feature do

  scenario "Adding a new photo" do
    visit '/posts/new'
    expect(page).to have_content("Upload a new photo")
    expect(page).to have_content("Image")
    expect(page).to have_content("Caption")
  end

end
