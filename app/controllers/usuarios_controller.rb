class UsuariosController < ApplicationController
  before_action :authAdmin, only: [:listar]
  def listar
  end
end
