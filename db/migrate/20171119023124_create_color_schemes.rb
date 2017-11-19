class CreateColorSchemes < ActiveRecord::Migration[5.1]
  def change
    create_table :color_schemes do |t|
      t.string :name

      t.timestamps
    end
  end
end
