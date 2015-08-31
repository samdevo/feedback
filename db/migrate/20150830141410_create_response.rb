class CreateResponse < ActiveRecord::Migration
  def up
  	create_table :responses do |t|
  		t.string :employer_id
  		t.string :feedback
  	end
  end
  def down
  	drop_table :responses
  end
end
