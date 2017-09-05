class FeedbackNotifier < ApplicationMailer
    default from: "info@halalfoodhunt.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def new_feedback_notification (feedback)
    @feedback = feedback
    mail to: "info@halalfoodhunt.com", subject: "New Feedback"
  end
end
