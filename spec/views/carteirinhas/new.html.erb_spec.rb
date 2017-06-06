require 'rails_helper'

RSpec.describe "carteirinhas/new", type: :view do
  before(:each) do
    assign(:carteirinha, Carteirinha.new(
      :via => 1,
      :status => "MyString",
      :categoria => "MyString",
      :cid => nil
    ))
  end

  it "renders new carteirinha form" do
    render

    assert_select "form[action=?][method=?]", carteirinhas_path, "post" do

      assert_select "input#carteirinha_via[name=?]", "carteirinha[via]"

      assert_select "input#carteirinha_status[name=?]", "carteirinha[status]"

      assert_select "input#carteirinha_categoria[name=?]", "carteirinha[categoria]"

      assert_select "input#carteirinha_cid_id[name=?]", "carteirinha[cid_id]"
    end
  end
end
