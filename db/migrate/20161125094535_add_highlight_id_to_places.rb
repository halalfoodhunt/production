class AddHighlightIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :highlight_id, :integer
  end
end
