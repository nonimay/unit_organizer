require 'spec_helper'

describe "members/index.html.erb" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :member_id => 1,
        :address => stub_model(Address,
                              :line1 => "line1",
                              :town => "town",
                              :postcode => "postcode")
      ),
      stub_model(Member,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :member_id => 1,
        :address => stub_model(Address,
                              :line1 => "line1",
                              :town => "town",
                              :postcode => "postcode")
      )
    ])
    render
  end


  it "renders a list of members" do
    render.should have_selector('table')
  end

  it "renders the table header correctly" do
    rendered.should have_selector('table') do |table|
      table.should have_selector('th', :count => 7)
      table.should have_selector('th', :content => 'First Name')
      table.should have_selector('th', :content => 'Last Name')
      table.should have_selector('th', :content => 'Member ID')
      table.should have_selector('th', :content => 'DOB')
    end
  end

  it "renders action links" do
    rendered.should have_selector('table tr td a', :content => 'Show')
    rendered.should have_selector('table tr td a', :content => 'Edit')
    rendered.should have_selector('table tr td a', :content => 'Destroy')
  end
end
