class CreateUserReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reviews do |t|
      t.string :user_id
      t.string :comment
    end
  end
end
