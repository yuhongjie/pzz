class CreatePzzComments < ActiveRecord::Migration
  def change
    create_table :pzz_comments do |t|
      t.integer :pzz_user_id,               null: false, default: 0
      t.integer :pzz_post_id,               null: false, default: 0
      t.string :user_email,                 null: false, default: ""
      t.string :user_url,                   null: false, default: ""
      t.string :user_ip,                    null: false, default: ""
      t.text :comment_content             
      t.integer :comment_approved,          null: false, default: 0
      t.string :user_agent,                 null: false, default: ""
      t.integer :comment_parent_id,         null: false, default: 0

      t.timestamps
    end
    add_index :pzz_comments, :pzz_user_id
    add_index :pzz_comments, :pzz_post_id
  end
end
