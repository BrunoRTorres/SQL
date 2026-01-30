CUME_DIST() --? Cumulative distribution calculates the distribution of data points within a window

-- Find the products that fall within the highest 40% of the prices

SELECT
	*,
	CONCAT(DistRank * 100, '%') AS 'DistRankPerc'
FROM(
	SELECT
		Product,
		Price,
		CUME_DIST() OVER(ORDER BY Price DESC) AS 'DistRank'
	FROM Sales.Products
)t WHERE DistRank <= 0.4;

Product Price  DistRank  DistRankPerc
Gloves  30     0.2       20%
Caps    25     0.4       40%
