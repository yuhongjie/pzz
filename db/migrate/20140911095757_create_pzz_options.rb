class CreatePzzOptions < ActiveRecord::Migration
  def change
    create_table :pzz_options do |t|
      t.string :option_name, 		null: false, default: ""
      t.text :option_value
      t.integer :autoload, 			null: false, default: 0

      t.timestamps
    end
  end
end
