CREATE PROCEDURE [dbo].[GetContent]
    @Type VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM [Content]
    WHERE [Type] = @Type AND [IsDeleted] = 0;
END
GO