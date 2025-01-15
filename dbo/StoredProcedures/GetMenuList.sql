CREATE PROCEDURE [dbo].[GetMenuList]
    @Type INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM [Menu]
    WHERE [Type] = @Type AND [IsDeleted] = 0;
END
