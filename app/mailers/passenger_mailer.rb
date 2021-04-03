class PassengerMailer < ApplicationMailer
  default from: "confirmation@elysian.com"

  def thank_you_email
    @recipient = params[:recipient]
    @url = 'http://elysianairlines.net'
    mail(to: @recipient.passengers.first.email, subject: "Thank you for booking your flight")
  end
end
