USE AdventureWorks2019;
GO

IF OBJECT_ID('dbo.SSIS_File_Load', 'U') IS NOT NULL
    DROP TABLE dbo.SSIS_File_Load;
GO

CREATE TABLE dbo.SSIS_File_Load
(
    AverageRate DECIMAL(18,9) NULL,
    CurrencyCode CHAR(3) NULL,
    CurrencyDate DATETIME NULL,
    EndOfDayRate DECIMAL(18,9) NULL
);
GO

SELECT * 
FROM dbo.SSIS_File_Load;