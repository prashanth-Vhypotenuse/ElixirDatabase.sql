CREATE PROCEDURE [dbo].[GetContent]
    @Type INT
AS
BEGIN
    SET NOCOUNT ON;
	SELECT 
		[C].[Id], 
		[C].[Title], 
		[C].[SubTitle], 
		[C].[Description], 
		[C].[Icon],
		[C].[ImagePath],
		[C].[LinkText],
		[C].[LinkPath],
		[C].[LinkIcon],
		[CT].[Id] AS TypeId, 
		[CT].[Type]
	FROM [dbo].[Content] AS C
	INNER JOIN [dbo].[ContentType] AS [CT] ON [C].[Type] = [CT].[Id] 
	WHERE [c].[TYPE] = @Type AND [C].[IsDeleted] = 0;
END