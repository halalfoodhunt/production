class DropProducts < ActiveRecord::Migration
  def up
    drop_table :products, force: :cascade
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
