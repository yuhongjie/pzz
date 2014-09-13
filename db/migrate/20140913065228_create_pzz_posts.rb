class CreatePzzPosts < ActiveRecord::Migration
  def change
    create_table :pzz_posts do |t|
      t.integer :pzz_user_id,           null: false, default: 0
      t.string :post_title,             null: false, default: ""
      t.string :post_name,              null: false, default: ""
      t.text :post_content,             :limit => 4294967295
      t.text :post_excerpt             
      t.integer :post_status,           null: false, default: 0
      t.integer :comment_status,        null: false, default: 0
      t.text :post_content_filtered   
      t.integer :comment_count,         null: false, default: 0
      t.integer :post_order,            null: false, default: 0
      t.string :post_guid,              null: false, default: ""
      t.text :to_ping                 
      t.text :pinged                   
      t.integer :ping_status,           null: false, default: 0

      t.timestamps
    end
    add_index :pzz_posts, :pzz_user_id
  end
end
