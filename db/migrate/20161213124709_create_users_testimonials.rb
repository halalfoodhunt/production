class CreateUsersTestimonials < ActiveRecord::Migration
  def change
    create_table :users_testimonials do |t|
      t.string :name
      t.text :testimonial

      t.timestamps null: false
    end
  end
end
