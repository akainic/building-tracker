FactoryGirl.define do
  factory :building do
    street address '33 Harrison Ave'
    city 'Boston'
    state 'Massachusetts'
    postal code '02111'
    description 'awesome place to be'
  end

  factory :state do 
    sequence(:state) { |n| "State #{n}" }
  end
end