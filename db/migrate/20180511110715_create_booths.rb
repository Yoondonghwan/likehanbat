class CreateBooths < ActiveRecord::Migration
  def change
    create_table :booths do |t|
      t.string :name
      t.string :depart
      t.text :introduce

      t.timestamps null: false
    end
  end
end
