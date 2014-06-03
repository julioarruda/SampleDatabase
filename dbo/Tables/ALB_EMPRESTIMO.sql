﻿CREATE TABLE [dbo].[ALB_EMPRESTIMO] (
    [NR_ID_EMPRESTIMO]   INT  NOT NULL,
    [NR_ID_CLIENTE]      INT  NULL,
    [NR_ID_VEICULO]      INT  NULL,
    [DT_DATA_EMPRESTIMO] DATE NULL,
    [DT_DATA_DEVOLUCAO]  DATE NULL,
    [NR_ID_EMPRESA]      INT  NULL,
    PRIMARY KEY CLUSTERED ([NR_ID_EMPRESTIMO] ASC),
    CONSTRAINT [FK_ALB_EMPRESTIMO_ALB_CLIENTE] FOREIGN KEY ([NR_ID_CLIENTE]) REFERENCES [dbo].[ALB_CLIENTE] ([NR_ID_CLIENTE]),
    CONSTRAINT [FK_ALB_EMPRESTIMO_ALB_EMPRESA] FOREIGN KEY ([NR_ID_EMPRESA]) REFERENCES [dbo].[ALB_EMPRESA] ([NR_ID_EMPRESA]),
    CONSTRAINT [FK_ALB_EMPRESTIMO_ALB_VEICULO] FOREIGN KEY ([NR_ID_VEICULO]) REFERENCES [dbo].[ALB_VEICULO] ([NR_ID_VEICULO])
);

