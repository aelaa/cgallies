class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end

      add_attachment :images, :image
  end
end
