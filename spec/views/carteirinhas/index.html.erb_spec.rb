require 'rails_helper'

RSpec.describe "carteirinhas/index", type: :view do
  before(:each) do
    assign(:carteirinhas, [
      Carteirinha.create!(
        :via => "Via",
        :status => "Status",
        :categoria => "Categoria"
      ),
      Carteirinha.create!(
        :via => "Via",
        :status => "Status",
        :categoria => "Categoria"
      )
    ])
  end

  it "renders a list of carteirinhas" do
    render
    assert_select "tr>td", :text => "Via".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
  end
end
