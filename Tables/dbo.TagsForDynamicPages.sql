CREATE TABLE [dbo].[TagsForDynamicPages]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TagsForDynam__Id__37A5467C] DEFAULT (newsequentialid()),
[DynamicPageId] [uniqueidentifier] NOT NULL,
[TagId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForDynamicPages] ADD CONSTRAINT [PK_TagsForDynamicPages] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForDynamicPages] ADD CONSTRAINT [UK_TagsForDynamicPages_DynamicPageKey_TagKey] UNIQUE NONCLUSTERED  ([DynamicPageId], [TagId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagsForDynamicPages] ADD CONSTRAINT [FK_TagsForDynamicPages_DynamicPages] FOREIGN KEY ([DynamicPageId]) REFERENCES [dbo].[DynamicPages] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagsForDynamicPages] ADD CONSTRAINT [FK_TagsForDynamicPages_Tags] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([Id])
GO
