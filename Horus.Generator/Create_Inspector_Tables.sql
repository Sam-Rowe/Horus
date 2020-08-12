IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](50) NOT NULL,
	[TaxDate] [datetime2](7) NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[OrderDate] [datetime2](7) NULL,
	[FileName] [nvarchar](50) NULL,
	[ShreddingUtcDateTime] [datetime2](7) NOT NULL,
	[TimeToShred] [bigint] NOT NULL,
	[RecognizerStatus] [nvarchar](50) NULL,
	[RecognizerErrors] [nvarchar](50) NULL,
	[UniqueRunIdentifier] [nvarchar](50) NOT NULL,
	[TerminalErrorCount] [int] NOT NULL,
	[WarningErrorCount] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
	[Account] [nvarchar](50) NULL,
	[VatAmount] [decimal](19, 5) NULL,
	[NetTotal] [decimal](19, 5) NULL,
	[GrandTotal] [decimal](19, 5) NULL,
	[PostCode] [nvarchar](10) NULL,
	[Thumbprint] [nvarchar](50) NULL,
	[TaxPeriod] [nvarchar](6) NULL,
	[ModelId] [nvarchar](50) NULL,
	[ModelVersion] [nvarchar](50) NULL,

PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END