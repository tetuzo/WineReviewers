class RemoveCategoryFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :category, :string
  end
end
