class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.decimal :interest_rate
      t.string :state
      t.datetime :maturity_date
      t.datetime :origination_date
      t.string :loan_type
      t.decimal :loan_amt
      t.integer :bank_id

      t.timestamps
    end
    
      add_index :loans, :interest_rate
      add_index :loans, :state
      add_index :loans, :maturity_date
      add_index :loans, :origination_date
      add_index :loans, :loan_type
      add_index :loans, :loan_amt
      add_index :loans, :bank_id
  end

  def self.down
    drop_table :loans
  end
end
