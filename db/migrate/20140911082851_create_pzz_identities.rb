class CreatePzzIdentities < ActiveRecord::Migration
  def change
    create_table :pzz_identities do |t|
      t.integer :pzz_user_id,                   null: false, default: 0
      t.string :identity_realname,          null: false, default: ""
      t.integer :identity_gender,           null: false, default: 0
      t.string :identity_card_no,           null: false, default: ""
      t.attachment :identity_card_image
      t.string :identity_dl_no,             null: false, default: ""
      t.integer :identity_dl_type,          null: false, default: 0
      t.attachment :identity_dl_image
      t.datetime :identity_dl_starttime,    null: false, default: '0000-00-00 00:00:00'
      t.integer :identity_dl_status,        null: false, default: 0
      t.integer :identity_status,           null: false, default: 0

      t.timestamps
    end
    add_index :pzz_identities, :pzz_user_id
  end
end
