CREATE TABLE [dbo].[ContentType]
(
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Type] NVARCHAR(55) NOT NULL,
	[CreatedBy] INT NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE(),
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT DEFAULT 0,
	CONSTRAINT [FK_ContentType_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_ContentType_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_ContentType_DeletedBy] FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id])
);
GO