class AddSentColumnToSeekTable < ActiveRecord::Migration
  def change
  	add_column :seeks, :sent, :boolean
  end
end
