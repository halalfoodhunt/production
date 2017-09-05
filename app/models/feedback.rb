class Feedback < ActiveRecord::Base
    after_create :send_feedback_email
    
    def send_feedback_email
    FeedbackNotifier.new_feedback_notification(self).deliver
    end
end
