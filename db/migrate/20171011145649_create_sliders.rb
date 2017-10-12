class CreateSliders < ActiveRecord::Migration[5.1]
  def change
    create_table :sliders do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :state

      t.timestamps
    end
  end
end
