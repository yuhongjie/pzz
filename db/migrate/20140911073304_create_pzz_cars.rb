class CreatePzzCars < ActiveRecord::Migration
  def change
    create_table :pzz_cars do |t|
      t.integer :pzz_user_id,             null: false, default: 0
      t.integer :car_type,            null: false, default: 0
      t.string :car_brand,            null: false, default: ""
      t.integer :car_seats,           null: false, default: 0
      t.string :car_plate_no,         null: false, default: ""

      t.timestamps
    end

    add_index :pzz_cars, :pzz_user_id,        unique: true
    add_index :pzz_cars, :car_plate_no,   unique: true
    
  end
end