require 'spec_helper'

describe "members/edit.html.erb" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :firstname => "MyString",
      :lastname => "MyString",
      :member_id => 1,
      :address => stub_model(Address,
                             :line1 => "Line1",
                             :town => "Town",
                             :postcode => "Postcode")
    ))
  end

  it "renders the edit member form" do
    render
    rendered.should have_selector("form", :method => "post")
  end
end
