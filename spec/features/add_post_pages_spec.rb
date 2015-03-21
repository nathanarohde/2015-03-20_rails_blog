require 'rails_helper'

describe 'the add a post process' do
  it 'adds a new post' do
    visit new_post_path
    fill_in 'Title', :with => 'stuff'
    fill_in 'Content', :with => 'more stuff'
    click_on 'Create Post'
    expect(page).to have_content 'stuff'
  end
end
