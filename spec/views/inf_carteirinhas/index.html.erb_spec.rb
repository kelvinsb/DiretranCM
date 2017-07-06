require 'rails_helper'

RSpec.describe "inf_carteirinhas/index", type: :view do
  before(:each) do
    assign(:inf_carteirinhas, [
      InfCarteirinha.create!(
        :num_registro => "Num Registro",
        :diretor => "Diretor",
        :nome_beneficiario => "Nome Beneficiario",
        :rg => "Rg",
        :regras => "Regras",
        :tipo => "Tipo"
      ),
      InfCarteirinha.create!(
        :num_registro => "Num Registro",
        :diretor => "Diretor",
        :nome_beneficiario => "Nome Beneficiario",
        :rg => "Rg",
        :regras => "Regras",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of inf_carteirinhas" do
    render
    assert_select "tr>td", :text => "Num Registro".to_s, :count => 2
    assert_select "tr>td", :text => "Diretor".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Beneficiario".to_s, :count => 2
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    assert_select "tr>td", :text => "Regras".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
