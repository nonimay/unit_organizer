require 'spec_helper'

describe Member do
  
  describe "relationships" do
    it { should have_one :address }
  end

  describe "mass assignment" do
    it { should allow_mass_assignment_of :firstname }
    it { should allow_mass_assignment_of :lastname }
    it { should allow_mass_assignment_of :member_id }
    it { should allow_mass_assignment_of :dob }
  end
end
