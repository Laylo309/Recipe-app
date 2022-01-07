require 'rails_helper'

RSpec.feature 'Check for ingredients presence', type: :feature do
  background do
    login_user
    visit recipe_path(@recipe.id)
  end

  scenario 'Should show the correct ingredient' do
    expect(page).to have_content(@ingredient.food.name)
  end

  scenario 'Should show the correct quantity' do
    expect(page).to have_content '$ 5'
  end

  scenario 'Should allow the user to delete the ingredient' do
    expect(page).to have_content('Remove')
  end
end
