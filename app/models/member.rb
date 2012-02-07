class Member < ActiveRecord::Base
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address

  validates :firstname, :presence => true, :length => { :maximum => 20 }
  validates :lastname, :presence => true, :length => { :maximum => 50 }
  validates :dob, :presence => true
  validates :member_id, :numericality => { :greater_than => 0 }

  attr_accessible :firstname, :lastname, :member_id, :dob, :address_attributes
end
