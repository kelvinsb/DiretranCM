require 'rails_helper'

RSpec.describe "documentos/index", type: :view do
  before(:each) do
    assign(:documentos, [
      Documento.create!(),
      Documento.create!()
    ])
  end

  it "renders a list of documentos" do
    render
  end
end
