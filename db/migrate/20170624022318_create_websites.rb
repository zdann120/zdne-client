class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.references :user, foreign_key: true
      t.string :token
      t.string :title
      t.string :url

      t.timestamps
    end
    add_index :websites, :token, unique: true
  end
end
