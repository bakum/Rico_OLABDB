CREATE TABLE [dbo].[StockPartyAmount] (
    [ID]       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [_Period]  DATETIME         NOT NULL,
    [Nom_ID]   VARCHAR (100)    NOT NULL,
    [Stock_ID] VARCHAR (100)    NOT NULL,
    [Qtt]      NUMERIC (38, 3)  NULL,
    [Summa]    NUMERIC (38, 2)  NULL,
    CONSTRAINT [PK_StockPartyAmount_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

