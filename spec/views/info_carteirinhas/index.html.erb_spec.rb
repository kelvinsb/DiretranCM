require 'rails_helper'

RSpec.describe "info_carteirinhas/index", type: :view do
  before(:each) do
    assign(:info_carteirinhas, [
      InfoCarteirinha.create!(
        :nome_tipo_estacionamento => "Nome Tipo Estacionamento",
        :resolucao => "Resolucao",
        :uf => "Uf",
        :municipio => "Municipio",
        :orgao_expedidor => "Orgao Expedidor",
        :nome_diretor => "Nome Diretor",
        :orgao_exp_diretor => "Orgao Exp Diretor",
        :regras_utilizacao => "Regras Utilizacao"
      ),
      InfoCarteirinha.create!(
        :nome_tipo_estacionamento => "Nome Tipo Estacionamento",
        :resolucao => "Resolucao",
        :uf => "Uf",
        :municipio => "Municipio",
        :orgao_expedidor => "Orgao Expedidor",
        :nome_diretor => "Nome Diretor",
        :orgao_exp_diretor => "Orgao Exp Diretor",
        :regras_utilizacao => "Regras Utilizacao"
      )
    ])
  end

  it "renders a list of info_carteirinhas" do
    render
    assert_select "tr>td", :text => "Nome Tipo Estacionamento".to_s, :count => 2
    assert_select "tr>td", :text => "Resolucao".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => "Municipio".to_s, :count => 2
    assert_select "tr>td", :text => "Orgao Expedidor".to_s, :count => 2
    assert_select "tr>td", :text => "Nome Diretor".to_s, :count => 2
    assert_select "tr>td", :text => "Orgao Exp Diretor".to_s, :count => 2
    assert_select "tr>td", :text => "Regras Utilizacao".to_s, :count => 2
  end
end
