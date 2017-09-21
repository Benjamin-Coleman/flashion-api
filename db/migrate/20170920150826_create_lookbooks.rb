class CreateLookbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :lookbooks do |t|
    	t.integer :template_id
    	t.integer :user_id
    	t.string :brand_name
    	t.string :collection_name
      t.timestamps
    end
  end
end
