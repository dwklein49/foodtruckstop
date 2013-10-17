class CreateFoodtrucks < ActiveRecord::Migration
  def change
    create_table :foodtrucks do |t|
      t.string :truck_name
      t.string :type_of_food
      t.string :sample_item
      t.integer :avg_price
      t.string :twitter
      t.string :website
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
