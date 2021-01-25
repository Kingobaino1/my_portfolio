# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact_email
    # Set up a temporary order for the preview
    contact = Contact.new(name: 'Joe Smith', email: 'joe@gmail.com', content: 'Lets collaborate on a new project')

    ContactMailer.with(contact: contact).new_contact_email
  end
end
