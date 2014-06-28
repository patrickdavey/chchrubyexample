require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :title => "Title",
        :body => "Body"
      ),
      stub_model(Item,
        :title => "Title",
        :body => "Body"
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
