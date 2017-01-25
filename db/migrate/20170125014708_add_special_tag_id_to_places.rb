class AddSpecialTagIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :special_tag_id, :integer
  end
end
