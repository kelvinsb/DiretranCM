require 'rails_helper'

RSpec.describe "info_carteirinhas/show", type: :view do
  before(:each) do
    @info_carteirinha = assign(:info_carteirinha, InfoCarteirinha.create!(
      :nome_tipo_estacionamento => "Nome Tipo Estacionamento",
      :resolucao => "Resolucao",
      :uf => "Uf",
      :municipio => "Municipio",
      :orgao_expedidor => "Orgao Expedidor",
      :nome_diretor => "Nome Diretor",
      :orgao_exp_diretor => "Orgao Exp Diretor",
      :regras_utilizacao => "Regras Utilizacao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome Tipo Estacionamento/)
    expect(rendered).to match(/Resolucao/)
    expect(rendered).to match(/Uf/)
    expect(rendered).to match(/Municipio/)
    expect(rendered).to match(/Orgao Expedidor/)
    expect(rendered).to match(/Nome Diretor/)
    expect(rendered).to match(/Orgao Exp Diretor/)
    expect(rendered).to match(/Regras Utilizacao/)
  end
end
