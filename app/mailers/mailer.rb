class Mailer < ActionMailer::Base

  layout 'mailer'

  def contact_form(contact)

    @contact = contact
    @to = 'jd.levarato@gmail.com'
    @from = 'josephlevarato.fr'

    mail(to: @to, from: @from, subject: 'Nouveau contact depuis le site !') do |f|
      f.html
    end

  end

end