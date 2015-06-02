CREATE TABLE [dbo].[BlogRolls]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BlogRolls__Id__31EC6D26] DEFAULT (newsequentialid()),
[LanguageId] [uniqueidentifier] NOT NULL,
[BlogName] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BlogAuthor] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BlogUrl] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FeedUrl] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order] [int] NULL,
[IsApproved] [bit] NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogRolls] ADD CONSTRAINT [PK_BlogRolls] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogRolls] ADD CONSTRAINT [FK_BlogRolls_Languages] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Languages] ([Id]) ON DELETE CASCADE
GO
