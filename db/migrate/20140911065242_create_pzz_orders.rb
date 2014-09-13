class CreatePzzOrders < ActiveRecord::Migration
  def change
    create_table :pzz_orders do |t|
      t.string :order_no,                   null: false, default: ""
      t.integer :passenger_id,              null: false, default: 0
      t.string :driver_id,                  null: false, default: 0
      t.integer :pzz_line_id,               null: false, default: 0
      t.string :passenger_nickname,         null: false, default: ""
      t.string :passenger_realname,         null: false, default: ""
      t.string :passenger_phone,            null: false, default: ""
      t.string :passenger_email,            null: false, default: ""
      t.string :driver_nickname,            null: false, default: ""
      t.string :driver_realname,            null: false, default: ""
      t.string :driver_phone,               null: false, default: ""
      t.string :driver_email,               null: false, default: ""
      t.integer :order_participants,        null: false, default: 0
      t.integer :order_status,              null: false, default: 0
      t.text :order_remark

      t.timestamps
    end

    add_index :pzz_orders, :order_no,     unique: true
    add_index :pzz_orders, :passenger_id
    add_index :pzz_orders, :driver_id
    add_index :pzz_orders, [:passenger_id, :driver_id]
    add_index :pzz_orders, :pzz_line_id


  end
end
