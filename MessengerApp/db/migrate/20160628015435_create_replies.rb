class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.references :messages
      t.timestamps
    end
  end
end
