CONVERT() --? Converts a date or time value to a different data type & formats the value

--! Syntax

CONVERT(data_type, value, style) --@ style is optional

SELECT
CONVERT(INT, '123') AS [String to Int CONVERT],
CONVERT(DATE, '2025-08-20') AS [String to Date CONVERT],
CreationTime,
CONVERT(DATE, CreationTime) AS [Datetime to Date CONVERT],
CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32],
CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style:34]
FROM Sales.Orders;

String to Int CONVERT  String to Date CONVERT  CreationTime                  Datetime to Date CONVERT    USA Std. Style:32   EURO Std. Style:34
123                    2025-08-20              2025-01-01 12:34:56.0000000   2025-01-01                  01-01-2025          01-01-2025
123                    2025-08-20              2025-01-05 23:22:04.0000000   2025-01-05                  01-05-2025          05-01-2025
123                    2025-08-20              2025-01-10 18:24:08.0000000   2025-01-10                  01-10-2025          10-01-2025
123                    2025-08-20              2025-01-20 05:50:33.0000000   2025-01-20                  01-20-2025          20-01-2025
123                    2025-08-20              2025-02-01 14:02:41.0000000   2025-02-01                  02-01-2025          01-02-2025
123                    2025-08-20              2025-02-06 15:34:57.0000000   2025-02-06                  02-06-2025          06-02-2025
123                    2025-08-20              2025-02-16 06:22:01.0000000   2025-02-16                  02-16-2025          16-02-2025
123                    2025-08-20              2025-02-18 10:45:22.0000000   2025-02-18                  02-18-2025          18-02-2025
123                    2025-08-20              2025-03-10 12:59:04.0000000   2025-03-10                  03-10-2025          10-03-2025
123                    2025-08-20              2025-03-16 23:25:15.0000000   2025-03-16                  03-16-2025          16-03-2025
