class MerchantMailer < ApplicationMailer
    default from: 'info@halalfoodhunt.com'
   
   def send_welcome_email(merchant)
      @merchant = merchant
      mail(to: @merchant.email, subject: 'Welcome to Halalfoodhunt.com')
   end
end
