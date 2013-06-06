class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :cpu
      t.integer :memory
      t.integer :strage
      t.string :ip
      t.text :note

      t.timestamps
    end
  end
end
