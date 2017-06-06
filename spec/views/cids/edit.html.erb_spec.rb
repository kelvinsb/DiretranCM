require 'rails_helper'

RSpec.describe "cids/edit", type: :view do
  before(:each) do
    @cid = assign(:cid, Cid.create!(
      :cod_doenca => "MyString",
      :nome_doenca => "MyString"
    ))
  end

  it "renders the edit cid form" do
    render

    assert_select "form[action=?][method=?]", cid_path(@cid), "post" do

      assert_select "input#cid_cod_doenca[name=?]", "cid[cod_doenca]"

      assert_select "input#cid_nome_doenca[name=?]", "cid[nome_doenca]"
    end
  end
end
