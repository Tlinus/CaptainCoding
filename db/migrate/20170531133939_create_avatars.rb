class CreateAvatars < ActiveRecord::Migration[5.0]
  def change
    create_table :avatars do |t|
    	t.text :img_path
      t.timestamps
    end
  end
end
