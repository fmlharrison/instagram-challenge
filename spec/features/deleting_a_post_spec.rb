require "rails_helper"

RSpec.feature "Deleting a post", :type => :feature do

  scenario "Deleting an unwanted post" do
    create(:post, caption: "Silly face")
    visit "/"
    find(:xpath, "//a[@href='/posts/1']").click
    click_link "Delete"
    expect(page).not_to have_css("img[src*='head_shot_copy_3.jpg']")
    expect(page).to have_content("Post deleted!")
  end

end
