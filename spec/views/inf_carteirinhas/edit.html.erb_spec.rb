require 'rails_helper'

RSpec.describe "inf_carteirinhas/edit", type: :view do
  before(:each) do
    @inf_carteirinha = assign(:inf_carteirinha, InfCarteirinha.create!(
      :num_registro => "MyString",
      :diretor => "MyString",
      :nome_beneficiario => "MyString",
      :rg => "MyString",
      :regras => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit inf_carteirinha form" do
    render

    assert_select "form[action=?][method=?]", inf_carteirinha_path(@inf_carteirinha), "post" do

      assert_select "input#inf_carteirinha_num_registro[name=?]", "inf_carteirinha[num_registro]"

      assert_select "input#inf_carteirinha_diretor[name=?]", "inf_carteirinha[diretor]"

      assert_select "input#inf_carteirinha_nome_beneficiario[name=?]", "inf_carteirinha[nome_beneficiario]"

      assert_select "input#inf_carteirinha_rg[name=?]", "inf_carteirinha[rg]"

      assert_select "input#inf_carteirinha_regras[name=?]", "inf_carteirinha[regras]"

      assert_select "input#inf_carteirinha_tipo[name=?]", "inf_carteirinha[tipo]"
    end
  end
end
