class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
     mail( from: contact.email, to: "support@bcoinxprofits.com", subject: ' Service Request ')
  end
end
