require 'rails_helper'

RSpec.feature 'Showing individual posts on a page', :type => :feature do

  scenario 'Can see a single post page' do
    post = create(:post)

    visit '/'
    find(:xpath, "//a[@href='/posts/1']").click
    expect(current_path).to eq(post_path(post))
  end
end
