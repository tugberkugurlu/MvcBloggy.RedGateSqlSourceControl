CREATE TABLE [dbo].[Tags]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Tags__Id__35BCFE0A] DEFAULT (newsequentialid()),
[LanguageId] [uniqueidentifier] NOT NULL,
[TagName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [UK_Tags_TagName] UNIQUE NONCLUSTERED  ([TagName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tags] ADD CONSTRAINT [FK_Tags_Languages] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Languages] ([Id]) ON DELETE CASCADE
GO
