require 'rails_helper'

RSpec.describe "answers/index", :type => :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :description => "Description"
      ),
      Answer.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
