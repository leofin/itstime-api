FactoryGirl.define do
  factory :model2, class: ItsTimeApi::Model::Model2 do
    name { Faker::Address.state }
  end
end
