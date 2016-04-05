class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :make
      t.string :model
      t.string :image
      t.string :filename

      t.timestamps null: false
    end
  end
end
