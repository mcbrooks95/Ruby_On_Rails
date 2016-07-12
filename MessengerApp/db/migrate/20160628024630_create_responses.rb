class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content
      t.references :message 
      t.references :user
      t.timestamps
    end
  end
end
