class CreateEmployer < ActiveRecord::Migration
  def up
  	create_table :employers do |t|
  		t.string :email
  		t.string :name
  		t.string :password
  	end
  end
  def down
  	drop_table :employers
  end
end
