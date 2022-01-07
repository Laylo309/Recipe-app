require 'rails_helper'

RSpec.feature 'Recipe index', type: :feature do
  background do
    login_user
    visit recipes_path
  end

  scenario 'Should display the created recipe' do
    expect(page).to have_content('Delicious pizza')
  end

  scenario 'Should display the recipe description' do
    expect(page).to have_content('oh my good, this is so delicious')
  end

  scenario 'Should display a delete button' do
    expect(page).to have_content('Remove')
  end
end