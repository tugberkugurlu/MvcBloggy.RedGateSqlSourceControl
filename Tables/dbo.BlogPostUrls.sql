CREATE TABLE [dbo].[BlogPostUrls]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BlogPostUrls__Id__30F848ED] DEFAULT (newsequentialid()),
[BlogPostId] [uniqueidentifier] NOT NULL,
[UrlPortion] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostUrls] ADD CONSTRAINT [PK_BlogPostUrls] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostUrls] ADD CONSTRAINT [UK_BlogPostUrls_UrlPortion] UNIQUE NONCLUSTERED  ([UrlPortion]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostUrls] ADD CONSTRAINT [FK_BlogPostUrls_BlogPosts] FOREIGN KEY ([BlogPostId]) REFERENCES [dbo].[BlogPosts] ([Id]) ON DELETE CASCADE
GO
