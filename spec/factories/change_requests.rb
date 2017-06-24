FactoryGirl.define do
  factory :change_request do
    token ""
    user nil
    old_content "MyText"
    new_content "MyText"
    details "MyText"
    urgent false
  end
end
