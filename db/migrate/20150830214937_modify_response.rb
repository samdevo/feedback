class ModifyResponse < ActiveRecord::Migration
  def up
  	add_column :responses, :x, :integer
  	add_column :responses, :y, :integer
  	remove_column :responses, :feedback, :string
  end
  def down
  	remove_column :responses, :x, :integer
  	remove_column :responses, :y, :integer
  	add_column :responses, :feedback, :string
  end
end
