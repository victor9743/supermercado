class ListaComprasController < ApplicationController
  def index
    begin
      @lista_compras = ListaCompra.all

      render json: @lista_compras, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.message }, status: :not_found
    rescue StandardError => e
      render json: { error: e.message }, status: :internal_server_error
    end
  end

  def show
    begin
      @lista_compras = ListaCompra.find(params[:id])

      render json: @lista_compras, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.message }, status: :not_found
    rescue StandardError => e
      render json: { error: e.message }, status: :internal_server_error
    end
  end

  def create
    @produto = Produto.find(params[:produto_id])
    # @lista_compras = Produto.new({
    #   "descricao" => params[:descricao],
    #   "preco" => params[:preco].to_i,
    #   "qtd_estoque" => params[:quantidade].to_i
    # })
    render json: @produto, status: :created
    # if @produto.save
    #   render json: { message: "produto salvo com sucesso" }, status: :created
    # else
    #   render json: @produto.errors, status: :unprocessable_entity
    # end
  end

end
