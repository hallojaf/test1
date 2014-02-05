require 'twilio-ruby'

class Message # model
  attr_reader :data

  def initialize(args = {})
    @data = args[:content]
  end

  def make_it_cool
    self.data.reverse.upcase
  end

  def make_it_cooler
    self.data.reverse
  end

  def self.load_message_from_db
    # let's pretend we're connecting to a database to get these ...
    self.new content: ["hi mom", "hi dad", "hi doge", "hi cayt"].sample
  end

end

class ConsolePrinter # view
  def self.render(content)
      puts content.make_it_cool
  end
end

class SMSPrinter # view
  def self.render(content)
      # Get your Account Sid and Auth Token from twilio.com/user/account
      account_sid = 'GET THIS FROM TWILIO'
      auth_token = 'GET THIS FROM TWILIO'
      @client = Twilio::REST::Client.new account_sid, auth_token

      message = @client.account.messages.create(:body => content.make_it_cooler,
          :to => "+1" + "YOUR NUMER HERE",
          :from => "+1" + "TWILIO AUTHORIZED SENDER HERE")
  end
end

class Messenger # controller
  PRINTERS = {:console => ConsolePrinter, :sms => SMSPrinter}
  def self.run
    message = Message.load_message_from_db

    PRINTERS[ARGV[0].to_sym].render(message)
  end
end

#########################################

# Mike's discussion topics: https://gist.github.com/mikelikesbikes/4b4aa10dd712b25cdd51

Messenger.run

m = Message.new(:content => "hi mom")
m.make_it_cool
