require 'rails_helper'

RSpec.describe "carteirinhas/edit", type: :view do
  before(:each) do
    @carteirinha = assign(:carteirinha, Carteirinha.create!(
      :via => "MyString",
      :status => "MyString",
      :categoria => "MyString"
    ))
  end

  it "renders the edit carteirinha form" do
    render

    assert_select "form[action=?][method=?]", carteirinha_path(@carteirinha), "post" do

      assert_select "input#carteirinha_via[name=?]", "carteirinha[via]"

      assert_select "input#carteirinha_status[name=?]", "carteirinha[status]"

      assert_select "input#carteirinha_categoria[name=?]", "carteirinha[categoria]"
    end
  end
end
