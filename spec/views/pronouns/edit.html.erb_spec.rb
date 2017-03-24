require 'rails_helper'

RSpec.describe "pronouns/edit", type: :view do
  before(:each) do
    @pronoun = assign(:pronoun, Pronoun.create!())
  end

  it "renders the edit pronoun form" do
    render

    assert_select "form[action=?][method=?]", pronoun_path(@pronoun), "post" do
    end
  end
end
