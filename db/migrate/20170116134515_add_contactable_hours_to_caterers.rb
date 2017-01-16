class AddContactableHoursToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :contactable_hours, :string
  end
end
