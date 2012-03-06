class CreatePostalCodes < ActiveRecord::Migration
  def change
    create_table :postal_codes do |t|
      t.string :code
      t.string :city
      t.string :state
      t.float :lat
      t.float :lng

      t.timestamps
    end

    add_index :postal_codes, :code 
  end
end
