require 'twilio-ruby' 

# set up a client to talk to the Twilio REST API
class TextingHelper
  def initialize(config) 
    @phone_number = config['twilio']['phone_number']
    @client = Twilio::REST::Client.new config['twilio']['account_sid'], config['twilio']['auth_token']  
  end

  def send_text(target, content)
    @client.account.messages.create({
                                  :from => '',
                                  :to => target,
                                  :body => content,
                                    })
  end
end  
