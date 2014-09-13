class CreatePzzMessages < ActiveRecord::Migration
  def change
    create_table :pzz_messages do |t|
      t.integer :from_user_id,                null: false, default: 0
      t.integer :to_user_id,                  null: false, default: 0
      t.string :from_user_nickname,           null: false, default: ""
      t.string :message_subject,              null: false, default: ""
      t.string :message_content,              null: false, default: ""
      t.integer :message_folder,              null: false, default: 0
      t.integer :message_related_id,          null: false, default: 0
      t.integer :message_status,              null: false, default: 0
      t.integer :message_type,                null: false, default: 0

      t.timestamps
    end

    add_index :pzz_messages, :from_user_id
    add_index :pzz_messages, :to_user_id
    add_index :pzz_messages, [:from_user_id, :to_user_id], unique: true

  end
end
