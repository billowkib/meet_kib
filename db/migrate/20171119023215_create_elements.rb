class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.integer :color
      t.string :selector
      t.belongs_to :color_scheme, foreign_key: true

      t.timestamps
    end
  end
end
