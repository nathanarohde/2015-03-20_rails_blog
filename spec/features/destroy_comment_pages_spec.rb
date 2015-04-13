require 'rails_helper'

describe 'Destroys a comment' do
  it 'Destroys a comment' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    comment = FactoryGirl.create(:comment, post: post, user: user)
    visit post_path(post)
    find('.delete').find('delete').click
    #Attempting to target the delete link for a comment.
    # click_on 'Delete'
    expect(page).to have_no_content (comment.text)
  end
end
