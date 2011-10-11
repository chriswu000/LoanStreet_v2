require 'spec_helper'

describe "banks/show.html.erb" do
  before(:each) do
    @bank = assign(:bank, stub_model(Bank,
      :name => "Name",
      :user_name => "User Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/User Name/)
  end
end
