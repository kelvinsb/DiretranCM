require 'rails_helper'

RSpec.describe "documentos/show", type: :view do
  before(:each) do
    @documento = assign(:documento, Documento.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
