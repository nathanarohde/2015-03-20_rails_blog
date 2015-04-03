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
    click_on 'Delete'
    expect(page).to have_no_content (post.title)
  end
end
