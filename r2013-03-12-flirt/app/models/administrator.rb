class Administrator < ActiveRecord::Base
  attr_accessible :role, :ssn, :tel
  has_one :user, :as => :userable
  validates :role, :presence => true
end