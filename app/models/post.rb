class Post < ApplicationRecord

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user

  has_attached_file :image

  validates_presence_of :image
  validates_attachment_presence :image
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
