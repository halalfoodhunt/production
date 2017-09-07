class FriendCardNotifier < ApplicationMailer
  default from: "info@halalfoodhunt.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def new_friends_card_purchase_notification (registration)
    @registration = registration
    @friend = friend
    mail(to: @friend.email, subject: 'Your Friends Card Order Receipt')
  end
end
