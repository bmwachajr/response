require 'rails_helper'

RSpec.describe "answers/edit", :type => :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input#answer_description[name=?]", "answer[description]"
    end
  end
end
