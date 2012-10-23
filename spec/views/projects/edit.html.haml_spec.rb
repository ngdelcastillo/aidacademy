require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :details => "MyText",
      :banner => "MyString",
      :target_amount => 1.5,
      :summary => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "textarea#project_details", :name => "project[details]"
      assert_select "input#project_banner", :name => "project[banner]"
      assert_select "input#project_target_amount", :name => "project[target_amount]"
      assert_select "textarea#project_summary", :name => "project[summary]"
    end
  end
end
