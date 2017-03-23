class AddBookingLinkToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :booking_link, :string
  end
end
