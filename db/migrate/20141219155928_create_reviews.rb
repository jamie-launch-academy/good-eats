class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :comment, null: false

      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
