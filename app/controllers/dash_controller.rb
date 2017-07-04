class DashController < ApplicationController
	before_action :authenticate_usuario!, only: [:dashUsuario, :dashFuncionario, :index]
  def index
  end
end
