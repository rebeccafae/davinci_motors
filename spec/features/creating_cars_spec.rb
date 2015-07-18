require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(find(".flash")).to have_content('1968 Ford Mustang has been created')

    expect(page).to have_table("car_table")

    expect(find("#car_table")).to have_content("Ford")
    expect(find("#car_table")).to have_content("Mustang")
    expect(find("#car_table")).to have_content("1968")
    expect(find("#car_table")).to have_content("2300")
  end

  scenario 'can add a second car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    click_link 'New Car'

    fill_in 'Make', with: 'Subaru'
    fill_in 'Model', with: 'Legacy'
    fill_in 'Year', with: '2005'
    fill_in 'Price', with: '8000'

    click_button 'Create Car'

    expect(page).to have_table("car_table")

    expect(find("#car_table")).to have_content("Ford")
    expect(find("#car_table")).to have_content("Subaru")
  end
end

feature 'Editing Cars' do
  scenario 'can edit a car' do

    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(find(".flash")).to have_content('1968 Ford Mustang has been created')

    click_link 'Edit'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1950'
    fill_in 'Price', with: '4000'

    click_button 'Update Car'

    expect(find(".flash")).to have_content('1950 Ford Mustang has been updated')

  end
end
