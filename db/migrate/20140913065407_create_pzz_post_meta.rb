class CreatePzzPostMeta < ActiveRecord::Migration
  def change
    create_table :pzz_post_meta do |t|
      t.integer :pzz_post_id, null: false, default: 0
      t.string :postmeta_key, null: false, default: ""
      t.text :postmeta_value

      t.timestamps
    end
    add_index :pzz_post_meta, :pzz_post_id
  end
end
