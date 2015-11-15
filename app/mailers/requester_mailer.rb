class RequesterMailer < ActionMailer::Base
  default to: 'kndllbrwn1914@gmail.com'
  def requester_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Requester Form Message')
  end
end