IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]') AND type in (N'U'))
CREATE TABLE [dbo].[PurchaseOrder](
	[ID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([ID])
GO
