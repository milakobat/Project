class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.references :wedding

      t.timestamps
    end
    add_index :dreams, :wedding_id
  end
end
