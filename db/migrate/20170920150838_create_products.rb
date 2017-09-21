class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.integer :lookbook_id
    	t.string :image_url
    	t.string :description
    	t.string :product_url
    	t.string :name
      t.timestamps
    end
  end
end
