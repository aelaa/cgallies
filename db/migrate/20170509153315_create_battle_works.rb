class CreateBattleWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :battle_works do |t|
      t.string :author
      t.string :description
      t.integer :battle_id

      t.timestamps
    end

    add_attachment :battle_works, :cover
  end
end
