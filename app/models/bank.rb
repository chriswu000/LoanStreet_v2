class Bank < ActiveRecord::Base
  attr_accessible :name, :user_name

  has_many :loans

  validates :name, :presence => true,
                   :length => { :within => 6..50 }
  validates :user_name, :presence => true,
                        :length => { :within => 3..15 }
end
