require 'spec_helper'

describe "loans/index.html.erb" do
  before(:each) do
    assign(:loans, [
      stub_model(Loan,
        :interest_rate => "9.99",
        :state => "State",
        :loan_type => "Loan Type",
        :loan_amt => "9.99",
        :bank_id => 1
      ),
      stub_model(Loan,
        :interest_rate => "9.99",
        :state => "State",
        :loan_type => "Loan Type",
        :loan_amt => "9.99",
        :bank_id => 1
      )
    ])
  end

  it "renders a list of loans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Loan Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
