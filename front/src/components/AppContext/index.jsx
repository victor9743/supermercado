import React, { useState, useEffect } from "react";

export const global_context = React.createContext();

export const AppContext = (props) => {
    const [produtos, setProdutos] = useState([]);

    useEffect(() => {
        fetch("http://localhost:3000/produtos")
        .then((r) => r.json())
        .then((r) => setProdutos(r));
    }, []);

    return (
        <global_context.Provider value={produtos}>
            {props.children}
        </global_context.Provider>
    )
}