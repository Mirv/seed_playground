class CreateComment18s < ActiveRecord::Migration
  def change
    create_table :comment18s do |t|
      t.string :content
      t.references :post, index: true, foreign_key: true
      t.integer :something
      t.string :somethingelse
      t.string :something_more

      t.timestamps null: false
    end
  end
end