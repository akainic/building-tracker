require 'spec_helper'

feature 'user adds building owner', %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  # Acceptance Criteria:
  #
  # * I must specify a first name, last name, and email address
  # * I can optionally specify a company name
  # * If I do not specify the required information, I am presented 
  # * with errors
  # * If I specify the required information, the owner is recorded 
  # * and I am redirected to enter another new owner

  scenario 'user enters valid criteria to create a new owner record' do
    prev_count = Owner.count 
    visit '/owners/new'

    fill_in 'First name', with: 'Dan'
    fill_in 'Last name', with: 'Pickett'
    fill_in 'Email', with 'dan.pickett@missioncontrol.com'
    click_button 'Enter Owner'

    expect(page).to have_content('You have successfully recorded this owner.')
    expect(Owner.count).to eql(prev_count + 1)
  end

end