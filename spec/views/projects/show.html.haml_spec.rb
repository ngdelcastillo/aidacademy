require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :details => "MyText",
      :banner => "Banner",
      :target_amount => 1.5,
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Banner/)
    rendered.should match(/1.5/)
    rendered.should match(/MyText/)
  end
end
