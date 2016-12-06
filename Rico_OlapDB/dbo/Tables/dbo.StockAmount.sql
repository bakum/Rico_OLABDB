CREATE TABLE [dbo].[StockAmount] (
    [ID]       UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [_Period]  DATETIME         NOT NULL,
    [Nom_ID]   VARCHAR (100)    NOT NULL,
    [Stock_ID] VARCHAR (100)    NOT NULL,
    [Qtt]      NUMERIC (38, 3)  NULL,
    CONSTRAINT [PK_StockAmount_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

