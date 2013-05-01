class AddWeddingIdOnUser < ActiveRecord::Migration
  def up
  	add_column :users, :wedding_id, :integer
  end
end
