class CreateArmes < ActiveRecord::Migration[5.0]
  def change
    create_table :armes do |t|
    	t.string  :nom
    	t.integer :attq
    	t.integer :parade
    	t.integer :vit
    	t.integer :crit
    	t.integer :avatar_id
      t.timestamps
    end
  end
end
