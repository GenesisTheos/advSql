USE Restaurant;
GO

/* 
	Item A 
*/


/* 
	Item B
*/


/* 
	Item C 
*/


/* 
	Item D 
*/


/* 
	Item E: Returns a count of patrons who revieced their favorite table vs those who did not.
*/

-- Drops the function if it already ecists before recrating it.
DROP FUNCTION IF EXISTS dbo.fn_FavoriteTable;
GO

CREATE FUNCTION dbo.fn_FavoriteTable()
RETURNS TABLE 
AS 
RETURN
(
	SELECT 
		CASE WHEN TableChosen = TablePreference
		THEN 'YES'
		ELSE 'NO'
	END AS GotFavoriteTable,
	COUNT(*) AS PatronCount

	FROM Reservations
	GROUP BY 
		CASE WHEN TableChosen = TablePreference
		THEN 'YES'
		ELSE 'NO'
		END
);
GO

-- Test
SELECT * 
FROM dbo.fn_FavoriteTable()

