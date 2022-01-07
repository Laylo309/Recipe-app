require 'rails_helper'

RSpec.feature 'Recipe Index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Name', email: 'user@example.com', password: 'admin123')
    @recipe = Recipe.create(user_id: @user.id, name: 'Wonderful cake', cooking_time: 5.5, preparation_time: 12.6,
                            description: 'Description', public: true)
    visit user_session_path
    within('form') do
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_password', with: 'admin123'
    end
    click_button 'Log in'
    visit recipes_path
  end

  it 'show the button of adding a recipe' do
    expect(page).to have_content 'Create new recipe'
  end

  it 'show recipe name' do
    expect(page).to have_content "Name"
  end

  it 'show recipe description' do
    expect(page).to have_content "Description"
  end

  it 'check the page title' do
    expect(page).to have_content 'Your List Of Recipes'
  end
end