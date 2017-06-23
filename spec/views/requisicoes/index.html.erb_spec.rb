require 'rails_helper'

RSpec.describe "requisicoes/index", type: :view do
  before(:each) do
    assign(:requisicoes, [
      Requisicao.create!(
        :qtde_carteirinhas => 2,
        :responsavel_nome => "Responsavel Nome",
        :responsavel_cpf => "Responsavel Cpf"
      ),
      Requisicao.create!(
        :qtde_carteirinhas => 2,
        :responsavel_nome => "Responsavel Nome",
        :responsavel_cpf => "Responsavel Cpf"
      )
    ])
  end

  it "renders a list of requisicoes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Responsavel Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Responsavel Cpf".to_s, :count => 2
  end
end
