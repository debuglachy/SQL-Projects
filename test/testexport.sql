USE [tempdb]
GO
/****** Object:  Table [dbo].[test]    Script Date: 15/07/2021 11:15:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NOT NULL,
	[description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[test] ([id], [description]) VALUES (1, N'My desc')
INSERT [dbo].[test] ([id], [description]) VALUES (2, N'My desc')
INSERT [dbo].[test] ([id], [description]) VALUES (3, N'My desc')
INSERT [dbo].[test] ([id], [description]) VALUES (4, N'My desc')
GO
ALTER TABLE [dbo].[test] ADD  DEFAULT ('My desc') FOR [description]
GO
