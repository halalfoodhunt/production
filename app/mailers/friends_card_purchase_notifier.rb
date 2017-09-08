class FriendsCardPurchaseNotifier < ApplicationMailer
     default from: "dee@halalfoodhunt.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def new_friends_card_subscription_notification (registration)
    @registration = registration
    mail to: "dee@halalfoodhunt.com", subject: "New Friends Card Subscription"
  end
end
