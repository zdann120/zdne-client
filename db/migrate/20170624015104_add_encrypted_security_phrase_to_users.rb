class AddEncryptedSecurityPhraseToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :encrypted_security_phrase, :string
  end
end
