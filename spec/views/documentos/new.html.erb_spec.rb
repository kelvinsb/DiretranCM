require 'rails_helper'

RSpec.describe "documentos/new", type: :view do
  before(:each) do
    assign(:documento, Documento.new())
  end

  it "renders new documento form" do
    render

    assert_select "form[action=?][method=?]", documentos_path, "post" do
    end
  end
end
