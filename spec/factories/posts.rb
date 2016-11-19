include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :post do
    image { File.new(Rails.root + 'spec/fixtures/files/head_shot_copy_3.jpg') }
  end
end
