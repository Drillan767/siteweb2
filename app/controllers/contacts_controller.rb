class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @titre = 'Contact'
  end

  def create
    @contact = Contact.new params[:contact]

    if @contact.valid?
      Mailer.contact_form(@contact).deliver
      redirect_to new_contact_path, notice: 'Message envoyé avec succès !'
    else
      render :new
    end
  end

end