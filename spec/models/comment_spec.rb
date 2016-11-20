require 'rails_helper'

RSpec.describe Comment, type: :model do

  let!(:post) do
    Post.create(image: File.new(Rails.root + 'spec/fixtures/files/head_shot_copy_3.jpg'))
  end

  describe 'validations' do

    it 'has a comment' do
      comment = Comment.new(comment: "This is a great photo", post_id: post.id)
      expect(comment).to be_valid
    end

    it 'doesn\'t have a comment' do
      comment = Comment.new(comment: "", post_id: post.id)
      expect(comment).not_to be_valid
    end
  end

  describe 'table relationships' do

    it 'belongs to post' do
      c = Comment.reflect_on_association(:post)
      expect(c.macro).to eq :belongs_to
    end

  end
end
