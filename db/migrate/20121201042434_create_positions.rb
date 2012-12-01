class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.text :description
      t.string :note

      t.timestamps
    end
  end
end
