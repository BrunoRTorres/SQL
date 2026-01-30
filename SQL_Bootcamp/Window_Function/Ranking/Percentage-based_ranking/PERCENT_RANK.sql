PERCENT_RANK() --? Calculates the relative position of each row

-- Find the products that fall within the highest 40% of the prices

SELECT
	*,
	CONCAT(DistRank * 100, '%') AS 'DistRankPerc'
FROM(
	SELECT
		Product,
		Price,
		PERCENT_RANK() OVER(ORDER BY Price DESC) AS 'DistRank'
	FROM Sales.Products
)t WHERE DistRank <= 0.4;

Product  Price  DistRank  DistRankPerc
Gloves   30     0         0%
Caps     25     0.25      25%
