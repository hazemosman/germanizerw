require 'rails_helper'

RSpec.describe "pronouns/index", type: :view do
  before(:each) do
    assign(:pronouns, [
      Pronoun.create!(),
      Pronoun.create!()
    ])
  end

  it "renders a list of pronouns" do
    render
  end
end
