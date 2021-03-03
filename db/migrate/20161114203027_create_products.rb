class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :nazwa
      t.text :opis

      t.timestamps
    end
  end
end
