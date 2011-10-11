require 'spec_helper'

describe "loans/show.html.erb" do
  before(:each) do
    @loan = assign(:loan, stub_model(Loan,
      :interest_rate => "9.99",
      :state => "State",
      :loan_type => "Loan Type",
      :loan_amt => "9.99",
      :bank_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Loan Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
