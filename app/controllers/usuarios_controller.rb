class UsuariosController < ApplicationController
  before_action :authAdmin, only: [:listar, :destroy]
  def listar
  end
end
