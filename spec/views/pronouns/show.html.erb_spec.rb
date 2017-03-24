require 'rails_helper'

RSpec.describe "pronouns/show", type: :view do
  before(:each) do
    @pronoun = assign(:pronoun, Pronoun.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
