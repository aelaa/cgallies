class CreateBattles < ActiveRecord::Migration[5.1]
  def change
    create_table :battles do |t|
      t.string :battle_type
      t.string :name
      t.datetime :start_at
      t.datetime :finish_at

      t.timestamps
    end

    add_attachment :battles, :cover
  end
end
