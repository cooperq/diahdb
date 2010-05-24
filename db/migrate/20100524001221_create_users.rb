class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.integer :age
      t.string :location
      t.text :about

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end