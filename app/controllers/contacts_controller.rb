class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # ContactMailer.with(contact: @contact).new_contact_email.deliver_later
      flash[:success] = 'Email sent'
    else
      flash[:danger] = 'Email not sent'
    end
    redirect_to root_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :content)
  end
end
