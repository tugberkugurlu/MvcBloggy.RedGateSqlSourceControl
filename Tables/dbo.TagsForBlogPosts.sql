CREATE TABLE [dbo].[TagsForBlogPosts]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TagsForBlogP__Id__36B12243] DEFAULT (newsequentialid()),
[BlogPostId] [uniqueidentifier] NOT NULL,
[TagId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForBlogPosts] ADD CONSTRAINT [PK_TagsForBlogPosts] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForBlogPosts] ADD CONSTRAINT [UK_TagsForBlogPosts_BlogPostKey_TagKey] UNIQUE NONCLUSTERED  ([BlogPostId], [TagId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForBlogPosts] ADD CONSTRAINT [FK_TagsForBlogPosts_BlogPosts] FOREIGN KEY ([BlogPostId]) REFERENCES [dbo].[BlogPosts] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagsForBlogPosts] ADD CONSTRAINT [FK_TagsForBlogPosts_Tags] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([Id])
GO
