class Loan < ActiveRecord::Base
  LOAN_TYPES = %w(Commercial Agricultural Industrial)
  STATES = [
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Georgia",
    "Hawaii",
    "Idaho",
    "Illinois",
    "Indiana",
    "Iowa",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Maine",
    "Maryland",
    "Massachusetts",
    "Michigan",
    "Minnesota",
    "Mississippi",
    "Missouri",
    "Montana",
    "Nebraska",
    "Nevada",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "New York",
    "North Carolina",
    "North Dakota",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Vermont",
    "Virginia",
    "Washington",
    "West Virginia",
    "Wisconsin",
    "Wyoming" ]

  belongs_to :bank
  
  validate :interest_rate, :numericality => { :greater_than_or_equal_to => 0.01 }
  validate :loan_amt, :numericality => { :greater_than_or_equal_to => 0.01 }
  validate :state, :inclusion => { :in => STATES }
  validate :loan_type, :inclusion => { :in => LOAN_TYPES }
  validate :maturity_date, :date => { :after => Time.now }
  validate :origination_date, :date => { :after => Time.now - 1.year }
  validate :bank_id, :presence => true
end
