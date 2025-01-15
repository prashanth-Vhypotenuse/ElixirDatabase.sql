CREATE TABLE [dbo].[Content] (
	[Id] INT PRIMARY KEY IDENTITY(1, 1),
	[Title] NVARCHAR(255) NOT NULL,
	[SubTitle] NVARCHAR(255),
	[Description] TEXT,
	[Icon] NVARCHAR(255),
	[ImagePath] NVARCHAR(255),
	[LinkText] NVARCHAR(255),
	[LinkPath] NVARCHAR(255),
	[LinkIcon] NVARCHAR(255),
	[Type] NVARCHAR(55) NOT NULL CHECK ([Type] IN ('TopBanner', 'Banners', 'ExpertConsultancySupport', 'Services', 'ChooseElixir', 'Contact', 'ThingsYouGet', 'RequestCall', 'GlobalLeaders', 'Achivements', 'Clients', 'Partners', 'News')),
	[CreatedBy] INT NOT NULL,
	[CreatedDate] DATETIME NOT NULL,
	[UpdatedBy] INT,
	[UpdatedDate] DATETIME,
	[DeletedBy] INT,
	[IsDeleted] BIT DEFAULT 0 NOT NULL,
	FOREIGN KEY([CreatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([UpdatedBy]) REFERENCES [User]([Id]),
	FOREIGN KEY([DeletedBy]) REFERENCES [User]([Id])
)
GO