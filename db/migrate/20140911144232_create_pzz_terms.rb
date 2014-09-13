class CreatePzzTerms < ActiveRecord::Migration
  def change
    create_table :pzz_terms do |t|
      t.string :term_name, 				null: false, default: ""
      t.string :term_slug, 				null: false, default: ""
      t.integer :term_group_id, 		null: false, default: 0

      t.timestamps
    end
  end
end
