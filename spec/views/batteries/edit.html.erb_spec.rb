require 'spec_helper'

describe "batteries/edit" do
  before(:each) do
    @battery = assign(:battery, stub_model(Battery,
      :code => "MyString",
      :chem_composition => "MyString",
      :string => "MyString",
      :color => "MyString",
      :voltage => 1.5,
      :capacity => "MyString",
      :int => "MyString",
      :description => "MyString",
      :element_count => 1,
      :netto => 1.5,
      :brutto => 1.5,
      :price => 1
    ))
  end

  it "renders the edit battery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", battery_path(@battery), "post" do
      assert_select "input#battery_code[name=?]", "battery[code]"
      assert_select "input#battery_chem_composition[name=?]", "battery[chem_composition]"
      assert_select "input#battery_string[name=?]", "battery[string]"
      assert_select "input#battery_color[name=?]", "battery[color]"
      assert_select "input#battery_voltage[name=?]", "battery[voltage]"
      assert_select "input#battery_capacity[name=?]", "battery[capacity]"
      assert_select "input#battery_int[name=?]", "battery[int]"
      assert_select "input#battery_description[name=?]", "battery[description]"
      assert_select "input#battery_element_count[name=?]", "battery[element_count]"
      assert_select "input#battery_netto[name=?]", "battery[netto]"
      assert_select "input#battery_brutto[name=?]", "battery[brutto]"
      assert_select "input#battery_price[name=?]", "battery[price]"
    end
  end
end
