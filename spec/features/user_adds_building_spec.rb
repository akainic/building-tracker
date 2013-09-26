require 'spec_helper'

feature 'user adds a building', %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
} do

  # Acceptance Criteria:
  #
  # * I must specify a street address, city, state, and postal code
  # * Only US states can be specified
  # * I can optionally specify a description of the building
  # * If I enter all of the required information in the required format, 
  #   the building is recorded
  # * If I do not specify all of the required information in the required formats, 
  #   the building is not recorded and I am presented with errors
  # * Upon successfully creating a building, I am redirected so that I can 
  #   record another building

  scenario 'user enters valid criteria to create a building record' do
    FactoryGirl.create(:state, state: 'Massachusetts')

    prev_count = Building.count 
    visit '/buildings/new'
    fill_in 'Street address', with: '33 Harrison Ave'
    fill_in 'City', with: 'Boston'
    select 'Massachusetts', from: 'State'
    fill_in 'Postal code', with: '02111'
    fill_in 'Description', with: 'awesome place to be'
    click_button 'Enter Building'

    expect(page).to have_content('You have successfully recorded this building.')
    expect(Building.count).to eql(prev_count + 1)
  end

  scenario 'user does not enter valid criteria to create a building record' do
    prev_count = Building.count 
    visit '/buildings/new'

    click_button 'Enter Building'
    expect(page).to have_content("can't be blank")
    expect(Building.count).to eql(prev_count)
  end

end