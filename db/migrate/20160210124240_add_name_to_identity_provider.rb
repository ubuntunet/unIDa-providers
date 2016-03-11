class AddNameToIdentityProvider < ActiveRecord::Migration
  def change
    add_column :identity_providers, :name, :string
  end
end
