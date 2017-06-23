require 'rails_helper'

RSpec.describe "requisicoes/show", type: :view do
  before(:each) do
    @requisicao = assign(:requisicao, Requisicao.create!(
      :qtde_carteirinhas => 2,
      :responsavel_nome => "Responsavel Nome",
      :responsavel_cpf => "Responsavel Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Responsavel Nome/)
    expect(rendered).to match(/Responsavel Cpf/)
  end
end
