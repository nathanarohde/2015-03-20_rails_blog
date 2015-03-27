require 'rails_helper'

describe 'creates a new user' do
  it 'creates a new user' do
    visit root_path
    click_on 'Register'
    fill_in 'Email', with: 'dude@dudemail.com'
    fill_in 'Name', with: 'dude'
    fill_in 'Password', with: 'dude'
    fill_in 'Password confirmation', with: 'dude'
    click_on 'Sign Up'
    expect(page).to have_content 'User Show Page'
  end
end
