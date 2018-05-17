class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :booth,  foreign_key: true
      t.text :result
      t.text :result_1
      
      t.timestamps null: false
    end
  end
end
