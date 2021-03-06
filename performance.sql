USE [performance]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 2020/5/4 星期一 21:46:16 ******/
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
/****** Object:  Table [dbo].[class]    Script Date: 2020/5/4 星期一 21:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[college]    Script Date: 2020/5/4 星期一 21:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[college](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[text1] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_college] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2020/5/4 星期一 21:46:16 ******/
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
	[college] [varchar](50) NULL,
	[teacher_name] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[major]    Script Date: 2020/5/4 星期一 21:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[major](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[college_id] [int] NULL,
 CONSTRAINT [PK_major] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[score]    Script Date: 2020/5/4 星期一 21:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[score](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[course_id] [int] NOT NULL,
	[course_name] [varchar](50) NULL,
	[credit] [int] NULL,
	[normal_score] [float] NULL,
	[test_score] [float] NULL,
	[final_score] [float] NULL,
	[teacher_name] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2020/5/4 星期一 21:46:16 ******/
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
	[college_id] [int] NULL,
	[major_name] [varchar](50) NULL,
	[class_name] [varchar](50) NULL,
	[college_name] [varchar](50) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2020/5/4 星期一 21:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[college_id] [int] NULL,
	[college_name] [varchar](50) NULL,
	[text2] [varchar](50) NULL,
	[text3] [varchar](50) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
