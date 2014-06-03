﻿CREATE TABLE [dbo].[ALB_VEICULO] (
    [NR_ID_VEICULO]    INT            NOT NULL,
    [VC_PLACA_VEICULO] VARCHAR (7)    NULL,
    [VC_MARCA]         VARBINARY (50) NULL,
    [VC_MODELO]        NCHAR (10)     NULL,
    [NR_ID_EMPRESA]    INT            NULL,
    PRIMARY KEY CLUSTERED ([NR_ID_VEICULO] ASC),
    CONSTRAINT [FK_ALB_VEICULO_ALB_EMPRESA] FOREIGN KEY ([NR_ID_EMPRESA]) REFERENCES [dbo].[ALB_EMPRESA] ([NR_ID_EMPRESA])
);

