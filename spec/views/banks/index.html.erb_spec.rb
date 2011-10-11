require 'spec_helper'

describe "banks/index.html.erb" do
  before(:each) do
    assign(:banks, [
      stub_model(Bank,
        :name => "Name",
        :user_name => "User Name"
      ),
      stub_model(Bank,
        :name => "Name",
        :user_name => "User Name"
      )
    ])
  end

  it "renders a list of banks" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
  end
end
