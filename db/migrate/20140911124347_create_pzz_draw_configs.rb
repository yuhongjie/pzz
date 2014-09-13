class CreatePzzDrawConfigs < ActiveRecord::Migration
  def change
    create_table :pzz_draw_configs do |t|
      t.string :draw_title,                     null: false, default: ""
      t.text :draw_description
      t.datetime :draw_starttime,               null: false, default: '0000-00-00 00:00:00'
      t.datetime :draw_endtime,                 null: false, default: '0000-00-00 00:00:00'
      t.integer :user_filter,                   null: false, default: 0
      t.integer :draw_count,                    null: false, default: 0
      t.integer :draw_type,                     null: false, default: 0
      t.integer :draw_status,                   null: false, default: 0

      t.timestamps
    end
  end
end
