class CreateProductReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :product_reviews do |t|
      t.string :product_id
      t.string :user_id
      t.string :comment

      t.timestamps
    end
  end
end
