require 'rails_helper'

RSpec.describe "carteirinhas/show", type: :view do
  before(:each) do
    @carteirinha = assign(:carteirinha, Carteirinha.create!(
      :via => 2,
      :status => "Status",
      :categoria => "Categoria",
      :cid => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(//)
  end
end
