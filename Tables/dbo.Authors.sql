CREATE TABLE [dbo].[Authors]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Authors__Id__2E1BDC42] DEFAULT (newsequentialid()),
[AuthorName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AuthorSurname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TwitterHandle] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors] ADD CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors] ADD CONSTRAINT [FK_Authors_Users] FOREIGN KEY ([Id]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
GO
