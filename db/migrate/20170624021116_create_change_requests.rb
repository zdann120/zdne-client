class CreateChangeRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :change_requests do |t|
      t.string :token
      t.references :user, foreign_key: true
      t.text :old_content
      t.text :new_content
      t.text :details
      t.boolean :urgent, default: false

      t.timestamps
    end
    add_index :change_requests, :token, unique: true
  end
end
