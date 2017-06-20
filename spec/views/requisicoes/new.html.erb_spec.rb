require 'rails_helper'

RSpec.describe "requisicoes/new", type: :view do
  before(:each) do
    assign(:requisicao, Requisicao.new(
      :qtde_carteirinhas => 1,
      :responsavel_nome => "MyString",
      :responsavel_cpf => "MyString"
    ))
  end

  it "renders new requisicao form" do
    render

    assert_select "form[action=?][method=?]", requisicoes_path, "post" do

      assert_select "input#requisicao_qtde_carteirinhas[name=?]", "requisicao[qtde_carteirinhas]"

      assert_select "input#requisicao_responsavel_nome[name=?]", "requisicao[responsavel_nome]"

      assert_select "input#requisicao_responsavel_cpf[name=?]", "requisicao[responsavel_cpf]"
    end
  end
end
