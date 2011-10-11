namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    @banks = []
    Loan::STATES.each_with_index do |state, n|
      name = "Bank of " + state
      user_name = "bo_#{n}"
      bank = Bank.create!(:name => name,
                          :user_name => user_name)

      10.times do 
        bank.loans.create!(:interest_rate => 5 + rand(10) + rand, 
                           :state => Loan::STATES.sample,
                           :maturity_date => Time.now + (1 + rand(10)).year,
                           :origination_date => Time.now + (1 + rand(365)).day,
                           :loan_type => Loan::LOAN_TYPES.sample,
                           :loan_amt => (1+rand(100)) * 1000000)
      end

      @banks << bank
    end
  end
end

