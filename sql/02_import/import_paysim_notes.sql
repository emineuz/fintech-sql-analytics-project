-- Import PaySim CSV into staging table
COPY staging_paysim
FROM 'C:\\Users\\emine\\Desktop\\fintech-sql-analytics-project\\data\\raw\\PS_20174392719_1491204439457_log.csv'
DELIMITER ','
CSV HEADER;


-- Note:
-- Update the file path according to your local machine before running this command.