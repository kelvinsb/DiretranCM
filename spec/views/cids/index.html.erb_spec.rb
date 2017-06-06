require 'rails_helper'

RSpec.describe "cids/index", type: :view do
  before(:each) do
    assign(:cids, [
      Cid.create!(
        :cod_doenca => "Cod Doenca",
        :nome_doenca => "Nome Doenca"
      ),
      Cid.create!(
        :cod_doenca => "Cod Doenca",
        :nome_doenca => "Nome Doenca"
      )
    ])
  end

  it "renders a list of cids" do
    render
    assert_select "tr>td", :text => "Cod Doenca".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Doenca".to_s, :count => 2
  end
end
