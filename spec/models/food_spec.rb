require 'rails_helper'

RSpec.describe Food, type: :model do
  before :each do
    user = User.new(id: 1, name: 'hamza')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  subject do
    Food.new(
      name: 'Anything',
      measurement_unit: 'Gramm',
      price: 10,
      user_id: 1
    )
  end

  before { subject.save }

  it 'is valid with valid name' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with valid measurement unit' do
    expect(subject).to be_valid
  end

  it 'is valid with valid price' do
    expect(subject).to be_valid
  end
  it 'is not valid with negative price' do
    subject.price = -2
    expect(subject).to_not be_valid
  end
end
