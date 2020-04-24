USE [performance]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 2020/4/24 星期五 22:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrator](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_administrator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2020/4/24 星期五 22:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[photo] [varchar](50) NULL,
	[credit] [int] NULL,
	[property] [varchar](1000) NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[score]    Script Date: 2020/4/24 星期五 22:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[id] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[student_id] [int] NULL,
	[grade] [int] NULL,
	[credit] [int] NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_score] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2020/4/24 星期五 22:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[major_id] [int] NULL,
	[class_id] [int] NULL,
	[coollege_id] [int] NULL,
	[text4] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2020/4/24 星期五 22:02:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[college_id] [int] NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
