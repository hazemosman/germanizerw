require 'rails_helper'

RSpec.describe "verbs/new", type: :view do
  before(:each) do
    assign(:verb, Verb.new(
      :infinitive => "MyString",
      :tense_id => "MyString",
      :ich => "MyString",
      :du => "MyString",
      :er => "MyString",
      :sie_she => "MyString",
      :es => "MyString",
      :wir => "MyString",
      :ihr => "MyString",
      :sie => "MyString",
      :sie_formal => "MyString"
    ))
  end

  it "renders new verb form" do
    render

    assert_select "form[action=?][method=?]", verbs_path, "post" do

      assert_select "input#verb_infinitive[name=?]", "verb[infinitive]"

      assert_select "input#verb_tense_id[name=?]", "verb[tense_id]"

      assert_select "input#verb_ich[name=?]", "verb[ich]"

      assert_select "input#verb_du[name=?]", "verb[du]"

      assert_select "input#verb_er[name=?]", "verb[er]"

      assert_select "input#verb_sie_she[name=?]", "verb[sie_she]"

      assert_select "input#verb_es[name=?]", "verb[es]"

      assert_select "input#verb_wir[name=?]", "verb[wir]"

      assert_select "input#verb_ihr[name=?]", "verb[ihr]"

      assert_select "input#verb_sie[name=?]", "verb[sie]"

      assert_select "input#verb_sie_formal[name=?]", "verb[sie_formal]"
    end
  end
end
