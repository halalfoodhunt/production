class AddQuestion2ToCaterers < ActiveRecord::Migration
  def change
    add_column :caterers, :question_2, :text
  end
end
