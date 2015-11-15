class ClaimantMailer < ActionMailer::Base
  default to: 'kndllbrwn1914@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Claimant Form Message')
  end
end