class Users::RegistrationController < Devise::RegistrationsController
    
    def create
       super do |resource| #Import and change the devise code
           if params[:plan]
               resource.plan_id = params[:plan] # See what plan the user is using
               if resource.plan_id == 2
                   resource.save_with_payment
               else
                   resource.save
               end
           end
       end
    end
    
end