class ContactMailer < ActionMailer::Base
    def contact_email(name, email, body)
        default to: "c.p.brucher@gmail.com"
       
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact form message')
    end
end