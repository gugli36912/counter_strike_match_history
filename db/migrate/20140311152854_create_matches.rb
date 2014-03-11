class CreateMatches < ActiveRecord::Migration
	def change
    	create_table :matches do |t|
    		t.column "ip", :string
    		t.column "password", :string
    		t.column "comment", :string
    		t.timestamps
    	end
    end
end