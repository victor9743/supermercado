namespace :produtos do
  desc "Popula a tabela produtos"
    task import: :environment do
        Produto.create(
          descricao:                "Arroz Tio João Integral",
          preco:                    599,
          qtd_estoque:              100
        )

        Produto.create(
          descricao:                "Feijão Preto Camil",
          preco:                    450,
          qtd_estoque:              80
        )

        Produto.create(
          descricao:                "Azeite de Oliva Extra Virgem",
          preco:                    1299,
          qtd_estoque:              120
        )

        Produto.create(
          descricao:                "Macarrão Espaguete Adria",
          preco:                    325,
          qtd_estoque:              150
        )

        Produto.create(
          descricao:                "Leite Integral Parmalat",
          preco:                    279,
          qtd_estoque:              200
        )

        Produto.create(
          descricao:                "Ovos Brancos ( Duzia )",
          preco:                    899,
          qtd_estoque:              50
        )

        Produto.create(
          descricao:                "Café Solúvel 3 Corações",
          preco:                    949,
          qtd_estoque:              90
        )

        Produto.create(
          descricao:                "Biscoito Recheado Passatempo",
          preco:                    299,
          qtd_estoque:              120
        )

        Produto.create(
          descricao:                "Sabonete em Barra Dove",
          preco:                    179,
          qtd_estoque:              300
        )

        Produto.create(
          descricao:                "Shampoo Pantene 400ml",
          preco:                    1249,
          qtd_estoque:              150
        )
    end
end
