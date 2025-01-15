CREATE TABLE [dbo].[Menu] (
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Name] NVARCHAR(100) NOT NULL,
	[Link] NVARCHAR(100),
	[OrderNumber] INT NOT NULL,
	[ParentId] INT,
	[Icon] NVARCHAR(100),
	[Type] BIT DEFAULT 0 CHECK ([Type] IN (0, 1)), -- 0 => Header, 1 => Footer
	[CreatedBy] INT NOT NULL,
	[CreatedDate] DATETIME NOT NULL,
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT NOT NULL DEFAULT 0,
	FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id]),
);
GO
