require 'spec_helper'

describe "members/new.html.erb" do
  before(:each) do
    assign(:member, stub_model(Member,
      :firstname => "MyString",
      :lastname => "MyString",
      :member_id => 1,
      :address => stub_model(Address,
      :line1 => "line1",
      :line2 => "line2",
      :postcode => "postocde",
      :town => "town")
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path, :method => "post" do
      assert_select "input#member_firstname", :name => "member[firstname]"
      assert_select "input#member_lastname", :name => "member[lastname]"
      assert_select "input#member_member_id", :name => "member[member_id]"
    end
  end
end
