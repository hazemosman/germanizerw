require 'rails_helper'

RSpec.describe "pronouns/new", type: :view do
  before(:each) do
    assign(:pronoun, Pronoun.new())
  end

  it "renders new pronoun form" do
    render

    assert_select "form[action=?][method=?]", pronouns_path, "post" do
    end
  end
end
