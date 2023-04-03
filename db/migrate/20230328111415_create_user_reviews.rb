class CreateUserReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reviews do |t|
      t.string :user_id, :null => false
      t.string :user_image
      t.string :comment,:null => false
    end
  end
end
