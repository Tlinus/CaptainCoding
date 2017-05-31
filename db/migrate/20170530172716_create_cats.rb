class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :nom
      t.string :surnom

      t.timestamps
    end
  end
end
