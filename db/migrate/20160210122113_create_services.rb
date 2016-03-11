class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :entity_id
      t.text :x509
      t.references :organization, index: true, foreign_key: true
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
