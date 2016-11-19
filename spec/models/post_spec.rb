require 'rails_helper'

RSpec.describe Post, type: :model do

  describe 'Post with image' do

    it 'post only valid if a picture is present' do
      post = Post.new :image => File.new(Rails.root + 'spec/fixtures/files/head_shot_copy_3.jpg')
      expect(post).to be_valid
    end
    
  end

end
