CREATE TABLE [dbo].[BlogPostComments]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BlogPostComm__Id__2F10007B] DEFAULT (newsequentialid()),
[BlogPostId] [uniqueidentifier] NOT NULL,
[Name] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WebSite] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthProvider] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsByAuthor] [bit] NOT NULL,
[Subject] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Content] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsMarkedAsSpam] [bit] NOT NULL,
[IsApproved] [bit] NOT NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostComments] ADD CONSTRAINT [PK_BlogPostComments] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BlogPostComments] ADD CONSTRAINT [FK_BlogPostComments_BlogPosts] FOREIGN KEY ([BlogPostId]) REFERENCES [dbo].[BlogPosts] ([Id]) ON DELETE CASCADE
GO
