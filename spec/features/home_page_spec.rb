require "rails_helper"

RSpec.feature "Home page", :type => :feature do

  scenario "Visiting the home page" do
    visit "/"
    expect(page.status_code).to be(200)
    expect(page).to have_content("Makersgram")
  end
end
