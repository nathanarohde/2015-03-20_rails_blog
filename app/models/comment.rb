class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :text, :presence => true
  # after_save :send_sms

private
  begin
    def send_sms
      RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC706876cf1cfabe288879d4ffc641e478/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILO_AUTH_TOKEN'],
      :payload => {
        :Body => 'Your post was commented on.',
        :From => ENV['TWILIO_PHONE_NUM'],
        :To => 9203445238
        # self.post.user.phone
      }
      ).execute
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response) ['message']
      errors.add(:base, message)
      false
    end
  end
end
