CREATE TABLE [dbo].[RestrictedPageNames]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__RestrictedPa__Id__34C8D9D1] DEFAULT (newsequentialid()),
[LanguageKey] [uniqueidentifier] NOT NULL,
[Term] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedOn] [datetimeoffset] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RestrictedPageNames] ADD CONSTRAINT [PK_RestrictedPageNames] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RestrictedPageNames] ADD CONSTRAINT [FK_RestrictedPageNames_Languages] FOREIGN KEY ([LanguageKey]) REFERENCES [dbo].[Languages] ([Id]) ON DELETE CASCADE
GO
