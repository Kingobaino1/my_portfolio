class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: ENV['MY_EMAIL'], subject: 'You got a new collaboration request!')
  end
end
