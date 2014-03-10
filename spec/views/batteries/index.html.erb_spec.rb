require 'spec_helper'

describe "batteries/index" do
  before(:each) do
    assign(:batteries, [
      stub_model(Battery,
        :code => "Code",
        :chem_composition => "Chem Composition",
        :string => "String",
        :color => "Color",
        :voltage => 1.5,
        :capacity => "Capacity",
        :int => "Int",
        :description => "Description",
        :element_count => 1,
        :netto => 1.5,
        :brutto => 1.5,
        :price => 2
      ),
      stub_model(Battery,
        :code => "Code",
        :chem_composition => "Chem Composition",
        :string => "String",
        :color => "Color",
        :voltage => 1.5,
        :capacity => "Capacity",
        :int => "Int",
        :description => "Description",
        :element_count => 1,
        :netto => 1.5,
        :brutto => 1.5,
        :price => 2
      )
    ])
  end

  it "renders a list of batteries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Chem Composition".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Capacity".to_s, :count => 2
    assert_select "tr>td", :text => "Int".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
