require 'rails_helper'

describe 'user can create a new user login' do
  it 'through a user' do

    visit new_user_path

    name = "Justin Time"
    email = "justin.time@gmail.com"
    password = "securepassword"

    fill_in 'user[name]', with: name
    fill_in 'user[email]', with: email
    fill_in 'user[password]', with: password

    click_on "Create User"

    expect(current_path).to eq user_path(User.last)
  end
end
