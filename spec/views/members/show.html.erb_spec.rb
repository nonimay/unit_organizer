require 'spec_helper'

describe "members/show.html.erb" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :member_id => 1,
      :address => stub_model(Address,
      :line1 => "line1",
      :line2 => "line2",
      :postcode => "postocde",
      :town => "town")
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lastname/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
