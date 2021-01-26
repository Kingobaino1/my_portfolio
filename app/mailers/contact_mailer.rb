class ContactMailer < ApplicationMailer
  default from: 'portfolio@notification.com'
  def new_contact_email
    @contact = params[:contact]

    mail(to: ENV['my_email'], subject: 'You got a new collaboration request!')
  end
end
