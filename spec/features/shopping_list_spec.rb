require 'rails_helper'

RSpec.feature 'Check for ingredients presence', type: :feature do
  background do
    login_user
    visit general_shopping_list_path
  end

  scenario 'Should show the correct ingredient' do
    expect(page).to have_content(@ingredient.food.name)
  end

  scenario 'Should show the correct quantity' do
    expect(page).to have_content '5.0Unit'
  end

  scenario 'show the correct value' do
    expect(page).to have_content "$ 5.0"
  end

  scenario 'show the Total' do
    expect(page).to have_content "Total"
  end
end