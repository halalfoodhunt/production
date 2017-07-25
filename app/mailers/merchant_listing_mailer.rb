class MerchantListingMailer < ApplicationMailer
    default from: 'info@halalfoodhunt.com'
   
   def send_merchant_listing_email(merchant)
      @merchant = merchant
      mail(to: @merchant.email, subject: 'Thank you for listing in Halalfoodhunt.com')
   end
end