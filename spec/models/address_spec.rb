require 'spec_helper'

describe Address do

  describe "relationships" do
    it { should belong_to :addressable }
  end

  describe "validations" do
    it { should validate_presence_of :line1 }
    it { should ensure_length_of(:line1).is_at_most(50) }

    it { should ensure_length_of(:line2).is_at_most(50) }

    it { should validate_presence_of :town }
    it { should ensure_length_of(:town).is_at_most(20) }

    it { should validate_presence_of :postcode }
    it { should ensure_length_of(:postcode).is_at_most(9) }
  end

  describe "mass assingment" do
    it { should allow_mass_assignment_of :line1 }
    it { should allow_mass_assignment_of :line2 }
    it { should allow_mass_assignment_of :town }
    it { should allow_mass_assignment_of :postcode }
  end

end
