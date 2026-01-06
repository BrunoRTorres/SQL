FORMAT() --? Formats a date or time value

--! Syntax

FORMAT(value, format, culture) --@ culture is optional

SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyy') USA_Format,
FORMAT(CreationTime, 'dd-MM-yyy') EURO_Format,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders;

OrderID CreationTime                  USA_Format    EURO_Format dd  ddd  dddd        MM  MMM    MMMM
1       2025-01-01 12:34:56.0000000   01-01-2025    01-01-2025  01  Wed  Wednesday   01  Jan    January
2       2025-01-05 23:22:04.0000000   01-05-2025    05-01-2025  05  Sun  Sunday      01  Jan    January
3       2025-01-10 18:24:08.0000000   01-10-2025    10-01-2025  10  Fri  Friday      01  Jan    January
4       2025-01-20 05:50:33.0000000   01-20-2025    20-01-2025  20  Mon  Monday      01  Jan    January
5       2025-02-01 14:02:41.0000000   02-01-2025    01-02-2025  01  Sat  Saturday    02  Feb    February
6       2025-02-06 15:34:57.0000000   02-06-2025    06-02-2025  06  Thu  Thursday    02  Feb    February
7       2025-02-16 06:22:01.0000000   02-16-2025    16-02-2025  16  Sun  Sunday      02  Feb    February
8       2025-02-18 10:45:22.0000000   02-18-2025    18-02-2025  18  Tue  Tuesday     02  Feb    February
9       2025-03-10 12:59:04.0000000   03-10-2025    10-03-2025  10  Mon  Monday      03  Mar    March
10      2025-03-16 23:25:15.0000000   03-16-2025    16-03-2025  16  Sun  Sunday      03  Mar    March

/* Show CreationTime using the following format:
   Day Wed Jan Q1 2025 12:34:56 PM
*/

SELECT
OrderID,
'Day ' + FORMAT(CreationTime, 'ddd MMM') +
' Q' + DATENAME(quarter, CreationTime) + '' +
FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomeFormat
FROM Sales.Orders;

OrderID  CustomeFormat
1        Day Wed Jan Q12025 12:34:56 PM
2        Day Sun Jan Q12025 11:22:04 PM
3        Day Fri Jan Q12025 06:24:08 PM
4        Day Mon Jan Q12025 05:50:33 AM
5        Day Sat Feb Q12025 02:02:41 PM
6        Day Thu Feb Q12025 03:34:57 PM
7        Day Sun Feb Q12025 06:22:01 AM
8        Day Tue Feb Q12025 10:45:22 AM
9        Day Mon Mar Q12025 12:59:04 PM
10       Day Sun Mar Q12025 11:25:15 PM

--? Formatting use case - Data aggregations

SELECT
FORMAT(OrderDate, 'MMM yy') OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy');

OrderDate  (No column name)
Feb 25     4
Jan 25     4
Mar 25     2
