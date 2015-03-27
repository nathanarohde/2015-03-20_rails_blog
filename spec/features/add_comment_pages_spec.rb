require 'rails_helper'

describe 'the add a comment process' do
  it 'adds a new comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    visit root_path
    click_on 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'dude'
    click_on 'Log in'
    visit post_path(post)
    click_on 'Add Comment'
    fill_in 'Text', :with => 'comment stuff'
    click_on 'Create Comment'
    expect(page).to have_content 'comment stuff'
  end
end
