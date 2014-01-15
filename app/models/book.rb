class Book < ActiveRecord::Base
  attr_accessible :ISBN10, :ISBN13, :author, :rank, :title
  validates :author, :title, :presence => true,  
  							 :length => { :maximum => 255 }
  validates :rank,	:presence => true,
  					:numericality => { :message => "must be a number from 1-5", :only_integer => true },
  					:length => { :maximum => 5 }
  validates :ISBN10, :ISBN13, :presence => true,
  							  :uniqueness => true,
  							  :numericality => { :message => "must be a number only", :only_integer => true }
  validates :ISBN10, :length => { :maximum => 10 }
  validates :ISBN13, :length => { :maximum => 13 }
 end
