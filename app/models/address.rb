class Address < ActiveRecord::Base

  belongs_to :addressable, :polymorphic => true

  validates :line1,    :presence => true, 
                       :length => { :maximum => 50 }
  validates :line2,    :length => { :maximum => 50 }
  validates :town,     :presence => true, 
                       :length => { :maximum => 20 }
  validates :postcode, :presence => true, 
                       :length => { :maximum => 9 }

  attr_accessible :line1, :line2, :town, :postcode

end
