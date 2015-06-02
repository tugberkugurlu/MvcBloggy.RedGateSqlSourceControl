CREATE TABLE [dbo].[Users]
(
[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Users__Id__38996AB5] DEFAULT (newsequentialid()),
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [nvarchar] (320) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HashedPassword] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Salt] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsLocked] [bit] NOT NULL,
[LastLockedOutOn] [datetimeoffset] NULL,
[CreationIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOn] [datetimeoffset] NOT NULL,
[LastUpdateIp] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedOn] [datetimeoffset] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [UK_Users_Name] UNIQUE NONCLUSTERED  ([Name]) ON [PRIMARY]
GO
