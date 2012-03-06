class DropTimestampsFromPostalCodes < ActiveRecord::Migration
  def change
    remove_column :postal_codes, :updated_at
    remove_column :postal_codes, :created_at
  end
end
