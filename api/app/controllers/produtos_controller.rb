class ProdutosController < ApplicationController
  def index
    begin
      @produtos = Produto.all

      render json: @produtos, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.message }, status: :not_found
    rescue StandardError => e
      render json: { error: e.message }, status: :internal_server_error
    end
  end

  def show
    begin
      @produto = Produto.find(params[:id])

      render json: @produto, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: e.message }, status: :not_found
    rescue StandardError => e
      render json: { error: e.message }, status: :internal_server_error
    end
  end

  def create
    @produto = Produto.new({
      "descricao" => params[:descricao],
      "preco" => params[:preco].to_i,
      "qtd_estoque" => params[:quantidade].to_i
    })

    if @produto.save
      render json: { message: "produto salvo com sucesso" }, status: :created
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  def update
    @produto = Produto.find(params[:id])

    if @produto.update({
      "descricao" => params[:descricao],
      "preco" => params[:preco].to_i,
      "qtd_estoque" => params[:quantidade].to_i
    })

      render json: { message: "produto atualizado com sucesso" }, status: :created
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @produto = Produto.find(params[:id])

    if @produto.destroy
      render json: { message: "Produto removido com sucesso" }, status: :created
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

end
