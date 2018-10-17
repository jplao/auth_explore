require 'rails_helper'

describe 'user can login with their password' do
  it 'through a user' do
    user = User.create(name: "Willy Wonka", email: "willywonka@aol.com", password: "candy4life")

    visit '/'

    click_on "I already have an account"

    expect(current_path).to eq(login_path)
    fill_in "name", with: user.name
    fill_in "email", with: user.email
    fill_in "password", with: user.password

    click_on "Log in"

    expect(current_path).to eq(user_path(user))

    expect(page).to have_content("Hello #{user.name}")
  end
end
