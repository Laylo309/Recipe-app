require 'rails_helper'

RSpec.feature 'Food index', type: :feature do
  background do
    login_user
    visit foods_path
  end

  scenario 'Should display the created food' do
    expect(page).to have_content('Egg')
  end

  scenario 'Should display the measurement unit' do
    expect(page).to have_content('Unit')
  end

  scenario 'Should display the price' do
    expect(page).to have_content(1)
  end

  scenario 'Should display a delete button' do
    expect(page).to have_content('Delete')
  end
end
