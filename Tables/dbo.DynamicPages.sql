CREATE TABLE [dbo].[DynamicPages]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__DynamicPages__Id__32E0915F] DEFAULT (newsequentialid()),
[LanguageId] [uniqueidentifier] NOT NULL,
[AuthorId] [uniqueidentifier] NOT NULL,
[Title] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BriefInfo] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsApproved] [bit] NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DynamicPages] ADD CONSTRAINT [PK_DynamicPages] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DynamicPages] ADD CONSTRAINT [UK_DynamicPages_LanguageKey_Title] UNIQUE NONCLUSTERED  ([LanguageId], [Title]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DynamicPages] ADD CONSTRAINT [FK_DynamicPages_Authors] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[Authors] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DynamicPages] ADD CONSTRAINT [FK_DynamicPages_Languages] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Languages] ([Id]) ON DELETE CASCADE
GO
