CREATE TABLE [dbo].[V8_Reference141] (
    [V8_ID]          BINARY (16)  NOT NULL,
    [V8_Code]        NCHAR (9)    NULL,
    [V8_Description] NCHAR (50)   NULL,
    [V8_Marked]      BINARY (1)   NULL,
    [V8_Fld77]       NUMERIC (2)  NULL,
    [V8_Fld78]       BINARY (1)   NULL,
    [V8_Fld79]       BINARY (1)   NULL,
    [V8_Fld80]       BINARY (1)   NULL,
    [V8_Fld81]       BINARY (1)   NULL,
    [V8_Fld82]       NUMERIC (20) NULL,
    [V8_Fld83]       NUMERIC (20) NULL,
    CONSTRAINT [PK_V8_Reference141] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference141_1]
    ON [dbo].[V8_Reference141]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference141_2]
    ON [dbo].[V8_Reference141]([V8_Description] ASC, [V8_ID] ASC);

