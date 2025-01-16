CREATE TABLE [dbo].[User]
(
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[FirstName] NVARCHAR(255) NOT NULL,
	[LastName] NVARCHAR(100),
	[Email] NVARCHAR(255) NOT NULL UNIQUE,
	[Designation] NVARCHAR(55),
	[CreatedBy] INT,
	[CreatedDate] DATETIME DEFAULT GETDATE(),
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT DEFAULT 0,
	CONSTRAINT [FK_User_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_User_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_User_DeletedBy] FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id]),
);
GO
