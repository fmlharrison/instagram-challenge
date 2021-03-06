def adding_post
  visit '/'
  click_link 'Menu'
  click_link 'New Post'
  attach_file('Image', "spec/fixtures/files/head_shot_copy_3.jpg")
  fill_in "Caption", with: "The best head shot I could find"
  click_button 'Add Picture'
end

def add_post_no_photo
  visit '/'
  click_link 'Menu'
  click_link 'New Post'
  fill_in "Caption", with: "Ha ha, no photo!"
  click_button 'Add Picture'
end

def adding_comment
  find(:xpath, "//a[@href='/posts/1']").click
  fill_in "Comment", with: "You look like a dork!"
  click_button "Add Comment"
end

def add_empty_comment
  find(:xpath, "//a[@href='/posts/1']").click
  click_button "Add Comment"
end
