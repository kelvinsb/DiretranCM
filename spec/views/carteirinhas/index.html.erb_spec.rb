require 'rails_helper'

RSpec.describe "carteirinhas/index", type: :view do
  before(:each) do
    assign(:carteirinhas, [
      Carteirinha.create!(
        :via => 2,
        :status => "Status",
        :categoria => "Categoria",
        :cid => nil
      ),
      Carteirinha.create!(
        :via => 2,
        :status => "Status",
        :categoria => "Categoria",
        :cid => nil
      )
    ])
  end

  it "renders a list of carteirinhas" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
