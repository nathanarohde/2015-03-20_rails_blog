require 'rails_helper'

describe 'the add a post process' do
  it 'adds a new post' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'dude'
    click_on 'Log in'
    visit new_post_path
    fill_in 'Title', :with => 'stuff'
    fill_in 'Content', :with => 'more stuff'
    click_on 'Create Post'
    expect(page).to have_content 'stuff'
  end
end
