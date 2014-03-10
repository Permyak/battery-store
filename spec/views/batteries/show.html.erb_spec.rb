require 'spec_helper'

describe "batteries/show" do
  before(:each) do
    @battery = assign(:battery, stub_model(Battery,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Chem Composition/)
    rendered.should match(/String/)
    rendered.should match(/Color/)
    rendered.should match(/1.5/)
    rendered.should match(/Capacity/)
    rendered.should match(/Int/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/2/)
  end
end
