CREATE PROCEDURE [dbo].[GetContentTypes]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        [CT].[Id], 
        [CT].[Type] 
    FROM [dbo].[ContentType] AS [CT]
    WHERE [CT].[IsDeleted] = 0;
END