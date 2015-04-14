require 'rails_helper'

describe Comment, :vcr => true do
  it 'checks to see if the visit_path line leads to an update comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    comment = FactoryGirl.create(:comment)
    visit '/'
    click_on 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    visit edit_post_comment_path(post, comment)
    expect(page).to have_button 'Update Comment'
  end
end

describe Comment, :vcr => true do
  it 'Edits a comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    comment = FactoryGirl.create(:comment, post: post, user: user)
    visit edit_post_comment_path(post, comment)
    fill_in 'Text', :with => 'Edited Test'
    click_button 'Update Comment'
    expect(page).to have_content 'Edited Test'
  end
end
