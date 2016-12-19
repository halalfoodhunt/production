class AddOpenOrCloseIdToOpeningHours < ActiveRecord::Migration
  def change
    add_column :opening_hours, :open_or_close_id, :integer
  end
end
