require 'rails_helper'

RSpec.describe "inf_carteirinhas/show", type: :view do
  before(:each) do
    @inf_carteirinha = assign(:inf_carteirinha, InfCarteirinha.create!(
      :num_registro => "Num Registro",
      :diretor => "Diretor",
      :nome_beneficiario => "Nome Beneficiario",
      :rg => "Rg",
      :regras => "Regras",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Num Registro/)
    expect(rendered).to match(/Diretor/)
    expect(rendered).to match(/Nome Beneficiario/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/Regras/)
    expect(rendered).to match(/Tipo/)
  end
end
