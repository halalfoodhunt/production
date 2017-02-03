class AddHalalSummaryToQualifyingType < ActiveRecord::Migration
  def change
    add_column :qualifying_types, :halal_summary, :text
  end
end
