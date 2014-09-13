class CreatePzzUserMeta < ActiveRecord::Migration
  def change
    create_table :pzz_user_meta do |t|

      t.integer :pzz_user_id, null: false, default: 0
      t.string  :usermeta_key
      t.text    :usermeta_value
      t.timestamps
    end
  end
end
