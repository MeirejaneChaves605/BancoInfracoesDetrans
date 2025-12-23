SELECT
    P.Nome AS Nome_Proprietario,
    COUNT(V.Placa) AS Quantidade_Veiculos
FROM
    PROPRIETARIO P
JOIN
    VEICULO V ON P.CPF = V.CPF_Proprietario_FK
GROUP BY
    P.CPF, P.Nome
HAVING
    COUNT(V.Placa) > 1;



SELECT
    P.Nome AS Nome_Proprietario,
    P.CPF,
    V.Placa AS Placa_Veiculo
FROM
    PROPRIETARIO P
JOIN
    VEICULO V ON P.CPF = V.CPF_Proprietario_FK
WHERE
    P.Nome LIKE 'M%'
ORDER BY
    P.Nome, V.Placa;


SELECT
    TI.Descricao AS Tipo_Infracao,
    SUM(TI.Valor_Cobrado) AS Valor_Total_Cobrado
FROM
    INFRACAO I
JOIN
    TIPO_INFRACAO TI ON I.Cod_Infracao_FK = TI.Cod_Infracao
GROUP BY
    TI.Descricao
ORDER BY
    Valor_Total_Cobrado DESC;


SELECT
    Placa,
    Velocidade_Aferida,
    Velocidade_Permitida,
    Local
FROM
    INFRACAO
WHERE
    Velocidade_Aferida > Velocidade_Permitida;



SELECT
    I.Placa AS Placa_Veiculo,
    P.Nome AS Nome_Proprietario,
    TI.Descricao AS Tipo_Infracao,
    I.Data_Ocorrencia,
    I.Hora_Ocorrencia,
    LI.UF
FROM
    INFRACAO I
JOIN
    VEICULO V ON I.Placa = V.Placa
JOIN
    PROPRIETARIO P ON V.CPF_Proprietario_FK = P.CPF
JOIN
    TIPO_INFRACAO TI ON I.Cod_Infracao_FK = TI.Cod_Infracao
JOIN
    LOCAL_INFRACAO LI ON I.Cod_Local_FK = LI.Cod_Local
WHERE
    LI.UF = 'DF'
ORDER BY
    I.Data_Ocorrencia;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          