require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :description => "Description"
      ),
      Question.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
