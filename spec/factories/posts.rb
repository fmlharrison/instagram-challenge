include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :post do
    caption "nofilter"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/fixtures/files/head_shot_copy_3.jpg', 'image/jpg')
  end
end
