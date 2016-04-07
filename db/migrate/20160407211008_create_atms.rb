class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.string :street_address
      t.timestamps null: false
    end
  end
end
