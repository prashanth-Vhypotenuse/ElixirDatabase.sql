CREATE TABLE [dbo].[User]
(
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[FirstName] NVARCHAR(255) NOT NULL,
	[LastName] NVARCHAR(100) NOT NULL,
	[Email] NVARCHAR(255) NOT NULL UNIQUE,
	[Designation] NVARCHAR(55),
	[CreatedBy] INT,
	[CreatedDate] DATETIME NOT NULL,
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT NOT NULL DEFAULT 0,
	FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id]),
)
GO
