REPLACE() --? Replaces specific character with a new character

-- Remove dashes (-) from a phone number

SELECT
'123-456-7890' AS 'phone',
REPLACE('123-456-7890', '-', '') AS 'clean_phone'

phone         clean_phone
123-456-7890  1234567890

-- Replace File Extence from txt to csv

SELECT
'report.txt' AS 'old_filename',
REPLACE('report.txt', '.txt', '.csv') AS 'new_filename'

old_filename  new_filename
report.txt    report.csv
