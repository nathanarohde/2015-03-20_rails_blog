require 'rails_helper'

describe 'the add a comment process' do
  it 'adds a new comment' do
    post = Post.create(:title =>'Stuff', :content =>'More stuff')
    visit post_path(post)
    click_on 'Add Comment'
    fill_in 'Text', :with => 'comment stuff'
    click_on 'Create Comment'
    expect(page).to have_content 'comment stuff'
  end
end
