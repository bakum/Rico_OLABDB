CREATE TABLE [dbo].[DimTime] (
    [PK_Дата]               DATETIME      NOT NULL,
    [Дата_Имя]              NVARCHAR (50) NULL,
    [Год]                   DATETIME      NULL,
    [Год_Имя]               NVARCHAR (50) NULL,
    [Полугодие]             DATETIME      NULL,
    [Полугодие_Имя]         NVARCHAR (50) NULL,
    [Квартал]               DATETIME      NULL,
    [Квартал_Имя]           NVARCHAR (50) NULL,
    [Месяц]                 DATETIME      NULL,
    [Месяц_Имя]             NVARCHAR (50) NULL,
    [День_Года]             INT           NULL,
    [День_Года_Имя]         NVARCHAR (50) NULL,
    [День_Полугодия]        INT           NULL,
    [День_Полугодия_Имя]    NVARCHAR (50) NULL,
    [День_Квартала]         INT           NULL,
    [День_Квартала_Имя]     NVARCHAR (50) NULL,
    [День_Месяца]           INT           NULL,
    [День_Месяца_Имя]       NVARCHAR (50) NULL,
    [Месяц_Года]            INT           NULL,
    [Месяц_Года_Имя]        NVARCHAR (50) NULL,
    [Месяц_Полугодия]       INT           NULL,
    [Месяц_Полугодия_Имя]   NVARCHAR (50) NULL,
    [Месяц_Квартала]        INT           NULL,
    [Месяц_Квартала_Имя]    NVARCHAR (50) NULL,
    [Квартал_Года]          INT           NULL,
    [Квартал_Года_Имя]      NVARCHAR (50) NULL,
    [Квартал_Полугодия]     INT           NULL,
    [Квартал_Полугодия_Имя] NVARCHAR (50) NULL,
    [Полугодие_Года]        INT           NULL,
    [Полугодие_Года_Имя]    NVARCHAR (50) NULL,
    CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED ([PK_Дата] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'CONSTRAINT', @level2name = N'PK_DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Полугодие_Года_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Полугодие_Года', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Года';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Года';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал_Полугодия_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал_Полугодия', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал_Года_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал_Года', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Года';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Года';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Квартала_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Квартала_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Квартала_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Квартала', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Квартала';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Квартала';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Полугодия_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Полугодия', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Года_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Года', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Года';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Года';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Месяца_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Месяца_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Месяца_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Месяца', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Месяца';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Месяца';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Квартала_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Квартала_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Квартала_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Квартала', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Квартала';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Квартала';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Полугодия_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Полугодия_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Полугодия', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Полугодия';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Года_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Года_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'День_Года', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Года';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'День_Года';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Месяц', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Месяц';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Квартал', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Квартал';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Полугодие_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Полугодие', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Полугодие';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Год_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Год_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Год_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Год', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Год';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Год';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Дата_Имя', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Дата_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'Дата_Имя';


GO
EXECUTE sp_addextendedproperty @name = N'DSVColumn', @value = N'Дата', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'PK_Дата';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'PK_Дата';


GO
EXECUTE sp_addextendedproperty @name = N'Project', @value = N'f280be48-7e36-4abe-9662-53cb3bffec56', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'DSVTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'AllowGen', @value = N'True', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DimTime';

