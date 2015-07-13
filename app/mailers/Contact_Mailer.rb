class ContactMailer < ActionMailer::Base
    default to: "c.p.brucher@gmail.com"
    
    def contact_email(name, email, body)
        
       
        @name = name #receives name variable from the controller file, and converts it to an instance variable. Sends to the views file.
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact form message')
    end
end