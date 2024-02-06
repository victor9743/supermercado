class Produto < ApplicationRecord
    validates :descricao, presence: {message: "Campo nome obrigatório"}, uniqueness: {message: "nome do campo ja existente"}
    validates :preco, presence: {message: "Campo preço obrigatório"}, numericality: { greater_than_or_equal_to: 0, only_integer: true, message: "O campo quantidade deve ser maior que zero" }
    validates :qtd_estoque, presence: {message: "Campo quantidade obrigatório"}, numericality: { greater_than_or_equal_to: 0, only_integer: true, message: "O campo quantidade deve ser maior que zero" }
    has_many :lista_compras
end
