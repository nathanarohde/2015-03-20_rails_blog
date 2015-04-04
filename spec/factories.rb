FactoryGirl.define do
  factory(:user) do
    name('dude')
    email('dude@dudemail.com')
    phone('0123456789')
    password('dude')
    password_confirmation('dude')
  end
  factory(:post) do
    title('Post Title')
    content('Post Content')
  end
  factory(:comment) do
    text('Comment Text')
  end
end
