CREATE TABLE [dbo].[Menu] (
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Name] NVARCHAR(100) NOT NULL,
	[Link] NVARCHAR(100),
	[OrderNumber] INT NOT NULL,
	[ParentId] INT,
	[Icon] NVARCHAR(100),
	[Type] BIT DEFAULT 0,
	[CreatedBy] INT NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE(),
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT DEFAULT 0,
	CONSTRAINT [FK_Menu_CreatedBy] FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_Menu_UpdatedBy] FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_Menu_DeletedBy] FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id]),
);
GO
