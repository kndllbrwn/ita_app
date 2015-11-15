class RequesterMailer < ActionMailer::Base
  default to: 'your@email_address.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Requester Form Message')
  end
end