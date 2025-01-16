CREATE PROCEDURE [dbo].[GetMenuList]
    @Type INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT
		[M].[Id],
		[M].[Name],
		[M].[Link],
		[M].[OrderNumber],
		[M].[ParentId],
		[M].[Icon],
		[M].[Type]
	FROM [dbo].[Menu] AS [M]
    WHERE [M].[Type] = @Type AND [M].[IsDeleted] = 0;
END