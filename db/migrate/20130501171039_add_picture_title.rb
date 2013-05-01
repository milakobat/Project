class AddPictureTitle < ActiveRecord::Migration
  def up
  	add_column :pictures, :title, :string
  end

end
