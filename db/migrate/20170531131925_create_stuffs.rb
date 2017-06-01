class CreateStuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :stuffs do |t|
    	t.string :nom
      	t.integer :arme_id
      	t.integer :armure_id
      t.timestamps
    end
  end
end
