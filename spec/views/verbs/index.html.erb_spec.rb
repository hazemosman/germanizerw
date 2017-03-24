require 'rails_helper'

RSpec.describe "verbs/index", type: :view do
  before(:each) do
    assign(:verbs, [
      Verb.create!(
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
      ),
      Verb.create!(
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
      )
    ])
  end

  it "renders a list of verbs" do
    render
    assert_select "tr>td", :text => "Infinitive".to_s, :count => 2
    assert_select "tr>td", :text => "Tense".to_s, :count => 2
    assert_select "tr>td", :text => "Ich".to_s, :count => 2
    assert_select "tr>td", :text => "Du".to_s, :count => 2
    assert_select "tr>td", :text => "Er".to_s, :count => 2
    assert_select "tr>td", :text => "Sie She".to_s, :count => 2
    assert_select "tr>td", :text => "Es".to_s, :count => 2
    assert_select "tr>td", :text => "Wir".to_s, :count => 2
    assert_select "tr>td", :text => "Ihr".to_s, :count => 2
    assert_select "tr>td", :text => "Sie".to_s, :count => 2
    assert_select "tr>td", :text => "Sie Formal".to_s, :count => 2
  end
end
