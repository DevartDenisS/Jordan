IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesOrder]') AND type in (N'U'))
CREATE TABLE [dbo].[SalesOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SalesOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
