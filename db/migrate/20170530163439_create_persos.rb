class CreatePersos < ActiveRecord::Migration[5.0]
  def change
    create_table :persos do |t|
      t.string :nom
      t.string :surnom

      t.timestamps
    end
  end
end
