require 'rails_helper'

RSpec.describe "carteirinhas/show", type: :view do
  before(:each) do
    @carteirinha = assign(:carteirinha, Carteirinha.create!(
      :via => "Via",
      :status => "Status",
      :categoria => "Categoria"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Via/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Categoria/)
  end
end
