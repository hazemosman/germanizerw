require 'rails_helper'

RSpec.describe "verbs/show", type: :view do
  before(:each) do
    @verb = assign(:verb, Verb.create!(
      :infinitive => "Infinitive",
      :tense_id => "Tense",
      :ich => "Ich",
      :du => "Du",
      :er => "Er",
      :sie_she => "Sie She",
      :es => "Es",
      :wir => "Wir",
      :ihr => "Ihr",
      :sie => "Sie",
      :sie_formal => "Sie Formal"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Infinitive/)
    expect(rendered).to match(/Tense/)
    expect(rendered).to match(/Ich/)
    expect(rendered).to match(/Du/)
    expect(rendered).to match(/Er/)
    expect(rendered).to match(/Sie She/)
    expect(rendered).to match(/Es/)
    expect(rendered).to match(/Wir/)
    expect(rendered).to match(/Ihr/)
    expect(rendered).to match(/Sie/)
    expect(rendered).to match(/Sie Formal/)
  end
end
