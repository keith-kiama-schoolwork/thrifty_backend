class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :image_url
      t.string :name
      t.string :price
      t.string :category
    end
  end
end
