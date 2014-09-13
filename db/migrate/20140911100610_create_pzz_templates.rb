class CreatePzzTemplates < ActiveRecord::Migration
  def change
    create_table :pzz_templates do |t|
      t.string :template_key, 		null: false, default: ""
      t.text :template_value
      t.integer :template_type, 	null: false, default: 0

      t.timestamps
    end
  end
end
