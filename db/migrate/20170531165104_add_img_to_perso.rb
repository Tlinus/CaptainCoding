class AddImgToPerso < ActiveRecord::Migration[5.0]
  def change

  	 add_column :persos, :avatar_id, :integer
  	 
  end
end
