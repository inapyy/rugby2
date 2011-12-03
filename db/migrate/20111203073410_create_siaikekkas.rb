class CreateSiaikekkas < ActiveRecord::Migration
  def self.up
    create_table :siaikekkas do |t|
      t.string :taikaimei
      t.string :hiduke
      t.string :taisenaite
      t.string :score
      t.string :grand

      t.timestamps
    end
  end

  def self.down
    drop_table :siaikekkas
  end
end
