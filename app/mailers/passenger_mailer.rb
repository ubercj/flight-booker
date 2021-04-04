class PassengerMailer < ApplicationMailer
  default from: "confirmation@elysian.com"

  def thank_you_email
    @passenger = params[:passenger]
    @url = 'http://elysianairlines.net'

    mail(to: @passenger.email, subject: "Thank you for booking your flight")
  end
end
