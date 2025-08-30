-- task_4.sql

-- Query to get full description of the 'Books' table using INFORMATION_SCHEMA
SELECT COLUMN_NAME AS 'Column',
       COLUMN_TYPE AS 'Type',
       IS_NULLABLE AS 'Nullable',
       COLUMN_KEY AS 'Key',
       COLUMN_DEFAULT AS 'Default',
       EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'Books'
ORDER BY ORDINAL_POSITION;