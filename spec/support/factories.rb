FactoryGirl.define do
  factory :building do
    street_address '33 Harrison Ave'
    city 'Boston'
    state 'Massachusetts'
    postal_code '02111'
    description 'awesome place to be'
  end

  factory :state do 
    sequence(:state) { |n| "State #{n}" }
  end

  factory :owner do
    first_name 'Dan'
    last_name 'Pickett'
    email 'dan.pickett@missioncontrol.com'
    company_name 'Launch Academy'
    owner { "#{first_name} #{last_name}"}
  end
end