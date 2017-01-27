class AdminNotifier < ApplicationMailer
  default from: "info@halalfoodhunt.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def send_new_listing_notification(place)
    @merchant = merchant
    mail to: "zie@halalfoodhunt.com", subject: "A Place Has Been Listed"
  end
end
