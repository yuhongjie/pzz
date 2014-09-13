class CreatePzzCommentMeta < ActiveRecord::Migration
  def change
    create_table :pzz_comment_meta do |t|
      t.integer :pzz_comment_id, null: false, default: 0
      t.string :commentmeta_key, null: false, default: ""
      t.text :commentmeta_value

      t.timestamps
    end
    add_index :pzz_comment_meta, :pzz_comment_id
  end
end
