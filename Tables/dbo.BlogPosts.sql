CREATE TABLE [dbo].[BlogPosts]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BlogPosts__Id__300424B4] DEFAULT (newsequentialid()),
[LanguageId] [uniqueidentifier] NOT NULL,
[AuthorId] [uniqueidentifier] NOT NULL,
[SecondaryId] [int] NULL,
[Title] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BriefInfo] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ImagePath] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsApproved] [bit] NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [PK_BlogPosts] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [UK_BlogPosts_LanguageKey_Title] UNIQUE NONCLUSTERED  ([LanguageId], [Title]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [FK_BlogPosts_Authors] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[Authors] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogPosts] ADD CONSTRAINT [FK_BlogPosts_Languages] FOREIGN KEY ([LanguageId]) REFERENCES [dbo].[Languages] ([Id]) ON DELETE CASCADE
GO
