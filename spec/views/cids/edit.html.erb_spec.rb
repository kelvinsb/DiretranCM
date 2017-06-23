require 'rails_helper'

RSpec.describe "cids/edit", type: :view do
  before(:each) do
    @cid = assign(:cid, Cid.create!(
      :codigo => "MyString",
      :nome_doenca => "MyString"
    ))
  end

  it "renders the edit cid form" do
    render

    assert_select "form[action=?][method=?]", cid_path(@cid), "post" do

      assert_select "input#cid_codigo[name=?]", "cid[codigo]"

      assert_select "input#cid_nome_doenca[name=?]", "cid[nome_doenca]"
    end
  end
end
