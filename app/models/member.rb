class Member < ActiveRecord::Base
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address

  attr_accessible :firstname, :lastname, :member_id, :dob, :address_attributes
end
