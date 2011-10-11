require 'spec_helper'

describe "loans/new.html.erb" do
  before(:each) do
    assign(:loan, stub_model(Loan,
      :interest_rate => "9.99",
      :state => "MyString",
      :loan_type => "MyString",
      :loan_amt => "9.99",
      :bank_id => 1
    ).as_new_record)
  end

  it "renders new loan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => loans_path, :method => "post" do
      assert_select "input#loan_interest_rate", :name => "loan[interest_rate]"
      assert_select "input#loan_state", :name => "loan[state]"
      assert_select "input#loan_loan_type", :name => "loan[loan_type]"
      assert_select "input#loan_loan_amt", :name => "loan[loan_amt]"
      assert_select "input#loan_bank_id", :name => "loan[bank_id]"
    end
  end
end
