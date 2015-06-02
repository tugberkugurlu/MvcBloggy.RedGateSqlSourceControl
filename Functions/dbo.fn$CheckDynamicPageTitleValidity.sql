SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[fn$CheckDynamicPageTitleValidity] (
	@input NVARCHAR(500)
)
RETURNS INT
AS
BEGIN
	
	DECLARE @retrivedVal INT;

	SELECT 
		@retrivedVal = COUNT(rpn.[Id]) 
	FROM dbo.RestrictedPageNames rpn
	WHERE 
		dbo.UrlReplace(rpn.Term) = dbo.UrlReplace(@input);

	RETURN @retrivedVal;

END
GO
