require 'rails_helper'

RSpec.describe "info_carteirinhas/edit", type: :view do
  before(:each) do
    @info_carteirinha = assign(:info_carteirinha, InfoCarteirinha.create!(
      :nome_tipo_estacionamento => "MyString",
      :resolucao => "MyString",
      :uf => "MyString",
      :municipio => "MyString",
      :orgao_expedidor => "MyString",
      :nome_diretor => "MyString",
      :orgao_exp_diretor => "MyString",
      :regras_utilizacao => "MyString"
    ))
  end

  it "renders the edit info_carteirinha form" do
    render

    assert_select "form[action=?][method=?]", info_carteirinha_path(@info_carteirinha), "post" do

      assert_select "input#info_carteirinha_nome_tipo_estacionamento[name=?]", "info_carteirinha[nome_tipo_estacionamento]"

      assert_select "input#info_carteirinha_resolucao[name=?]", "info_carteirinha[resolucao]"

      assert_select "input#info_carteirinha_uf[name=?]", "info_carteirinha[uf]"

      assert_select "input#info_carteirinha_municipio[name=?]", "info_carteirinha[municipio]"

      assert_select "input#info_carteirinha_orgao_expedidor[name=?]", "info_carteirinha[orgao_expedidor]"

      assert_select "input#info_carteirinha_nome_diretor[name=?]", "info_carteirinha[nome_diretor]"

      assert_select "input#info_carteirinha_orgao_exp_diretor[name=?]", "info_carteirinha[orgao_exp_diretor]"

      assert_select "input#info_carteirinha_regras_utilizacao[name=?]", "info_carteirinha[regras_utilizacao]"
    end
  end
end
