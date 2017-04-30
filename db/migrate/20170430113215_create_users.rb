class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :city
      t.string :login
      t.boolean :admin
      t.string :password_digest

      t.timestamps
    end
  end
end
