class AddRestaurantId < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :restaurant_id, :integer
    add_foreign_key :reviews, :restaurants
  end
end
