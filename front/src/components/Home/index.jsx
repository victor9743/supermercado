import React from "react";
import { Table } from "./Table";
import { AppContext } from "../AppContext";

export const Home = () => {
    return (
        <>
            <div className="container" >
                <AppContext>
                    <Table />
                </AppContext>
            </div>
        </>
    )
}