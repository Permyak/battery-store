require 'spec_helper'

describe "models/show" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "Name",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
