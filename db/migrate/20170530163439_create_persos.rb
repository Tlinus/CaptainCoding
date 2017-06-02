class CreatePersos < ActiveRecord::Migration[5.0]
  def change
    create_table :persos do |t|
      t.string  :nom
      t.string  :surnom
      t.integer :vie
      t.integer :attq
      t.integer :armor
      t.integer :parade
      t.integer :vit
      t.integer :crit

      t.integer :equipement_id
      t.integer :avatar_id

      t.timestamps
    end
  end
end
