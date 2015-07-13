class ContactMailer < ActionMailer::Base
    def contact_email(name, email, body)
        default to: "c.p.brucher@gmail.com"
       
        @name = name #receives name variable from the controller file, and converts it to an instance variable. Sends to the views file.
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact form message')
    end
end