CREATE TABLE [dbo].[Languages]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Languages__Id__33D4B598] DEFAULT (newsequentialid()),
[DisplayName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Culture] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CultureOne] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Order] [int] NOT NULL,
[IsApproved] [bit] NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Languages] ADD CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Languages] ADD CONSTRAINT [UK_Languages_Culture] UNIQUE NONCLUSTERED  ([Culture]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Languages] ADD CONSTRAINT [UK_Languages_CultureOne] UNIQUE NONCLUSTERED  ([CultureOne]) ON [PRIMARY]
GO
