require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    user = User.new(id: 1, name: 'hamza')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  subject do
    Recipe.new(
      name: 'Anything',
      preparation_time: 30,
      cooking_time: 50,
      description: 'Delicious recipe',
      public: true,
      user_id: 1
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid prepartion time' do
    subject.preparation_time = 0
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid cooking time' do
    subject.cooking_time = 0
    expect(subject).to_not be_valid
  end

  it 'is not valid with invalid description' do
    subject.description = ''
    expect(subject).to_not be_valid
  end

  it 'is not valid with negative cooking time' do
    subject.cooking_time = -2
    expect(subject).to_not be_valid
  end

  it 'is not valid with negative preparation time' do
    subject.preparation_time = -1
    expect(subject).to_not be_valid
  end
end
