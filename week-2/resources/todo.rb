require 'twilio-ruby'

#message.rb
class Message
  attr_reader :text

  def initialize
    @text = File.readlines('data.txt', 'r')
  end
end

#console_printer.rb
class ConsolePrinter
  def self.render(text)
    puts "Welcome!"
    puts text
    puts "I'm here!"    
  end
end

class SmsPrinter
  def self.render(text)
    account_sid = 'AC4bff70cb8da37de6fa97686de7c09375'
    auth_token = '3b67852206f06c63e9e08d621e7148ec'
    client = Twilio::REST::Client.new account_sid, auth_token
 
    message = client.account.messages.create(
      :body => text,
      :to => "+17185418313",
      :from => "+17183951536")
  end
end

#messenger.rb
#require_relative "./message.rb"
class Messenger
  def self.run
    message = Message.new
    text = message.text #getting data
    # ConsolePrinter.render(text) #display data
    SmsPrinter.render(text)
  end
end

Messenger.run


