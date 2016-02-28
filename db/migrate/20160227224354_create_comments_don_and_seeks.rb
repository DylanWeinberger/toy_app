class CreateCommentsDonAndSeeks < ActiveRecord::Migration
  def change
    create_table :comments_don_and_seeks do |t|
    	t.integer :donator_id
    	t.integer :seek_id
    	t.integer :organization_id
    	t.string :body
      t.timestamps null: false
    end
  end
end
