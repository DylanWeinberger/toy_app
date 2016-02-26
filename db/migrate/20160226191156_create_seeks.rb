class CreateSeeks < ActiveRecord::Migration
  def change
    create_table :seeks do |t|
    	t.string :name
    	t.references :organization
    	t.string :comment
      t.timestamps null: false
    end
  end
end
