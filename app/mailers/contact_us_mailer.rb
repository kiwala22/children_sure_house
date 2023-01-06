class ContactUsMailer < ApplicationMailer
  default from: 'support@childrensurehouse.com'

  def support(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    @time = Time.now

    mail(to: 'support@childrensurehouse.com', subject: @subject, from: @email)
  end
end
