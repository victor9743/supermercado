import { Thead } from "./Thead";
import React, { useContext } from "react";
import { global_context } from "../../AppContext";

export const Table = () => {
    const produtos = useContext(global_context);

    const format_preco = (preco) => {
        let preco_reverse =  preco.toString().split("").reverse().join("");
        preco_reverse = preco_reverse.substring(0, 2) + '.' + preco_reverse.substring(2)
        preco_reverse =  preco_reverse.toString().split("").reverse().join("");
        preco_reverse = parseFloat(preco_reverse).toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
        
        return preco_reverse;
    }
    
    return (
        <table className="table table-bordered">
            <Thead />
            <tbody>
                {
                    produtos.length > 0  && produtos.map((produto) => {
                        return (
                            <tr key={produto.id}>
                                <td>{produto.id}</td>
                                <td>{produto.descricao}</td>
                                <td>{format_preco(produto.preco)}</td>
                                <td>{produto.qtd_estoque}</td>
                            </tr>
                        )
                    })
                }
            </tbody>
        </table>
    )
}