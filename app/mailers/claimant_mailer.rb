class ClaimantMailer < ActionMailer::Base
  default to: 'your@email_address.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Claimant Form Message')
  end
end