require 'spec_helper'

describe Member do
  
  describe "relationships" do
    it { should have_one :address }
  end

  describe "Validation" do
    it { should validate_presence_of :firstname }
    it { should ensure_length_of(:firstname).is_at_most(20) }

    it { should validate_presence_of :lastname }
    it { should ensure_length_of(:lastname).is_at_most(50) }

    it { should validate_presence_of :dob }

    it { should validate_numericality_of(:member_id) }
    it { should allow_value(1).for(:member_id) }
    it { should_not allow_value(0).for(:member_id) }
    it { should_not allow_value(-1).for(:member_id) }
  end

  describe "mass assignment" do
    it { should allow_mass_assignment_of :firstname }
    it { should allow_mass_assignment_of :lastname }
    it { should allow_mass_assignment_of :member_id }
    it { should allow_mass_assignment_of :dob }
  end
end
