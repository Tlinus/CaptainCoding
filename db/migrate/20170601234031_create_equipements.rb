class CreateEquipements < ActiveRecord::Migration[5.0]
  def change
    create_table :equipements do |t|
  		t.integer :arme1_id
  		t.integer :arme2_id
  		t.integer :armure_id
  		t.integer :bouclier_id
      t.timestamps
    end
  end
end
