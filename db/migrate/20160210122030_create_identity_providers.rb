class CreateIdentityProviders < ActiveRecord::Migration
  def change
    create_table :identity_providers do |t|
      t.string :entity_id
      t.string :scope
      t.text :x509
      t.string :fqdn
      t.references :organization, index: true, foreign_key: true
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
