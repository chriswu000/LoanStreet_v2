class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string :name
      t.string :user_name

      t.timestamps
    end

    add_index :banks, :user_name
  end

  def self.down
    drop_table :banks
  end
end
