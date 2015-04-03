require 'rails_helper'

describe 'the edit a post process' do
  it 'edits a post' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    visit root_path
    click_on 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'dude'
    click_on 'Log in'
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Title', :with => 'New Title'
    fill_in 'Content', :with => 'New Content'
    click_button 'Update Post'
    expect(page).to have_content 'New Title'
  end
end
