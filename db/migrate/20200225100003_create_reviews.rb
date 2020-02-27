class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name,       null: false
      t.string :text,       null: false
      t.string :category,   null: false
      t.text :image
      t.timestamps
    end
  end
end
