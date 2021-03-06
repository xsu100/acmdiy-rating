SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Activity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Activity](
	[Time] [datetime] NOT NULL,
	[Hour] [int] NOT NULL,
	[OnlineNumber] [int] NOT NULL,
	[MessageNumber] [int] NOT NULL,
 CONSTRAINT [PK_Online_1] PRIMARY KEY CLUSTERED 
(
	[Time] ASC,
	[Hour] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nickname]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nickname](
	[QQ] [char](150) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[rating] [float] NULL,
 CONSTRAINT [PK_Nickname] PRIMARY KEY CLUSTERED 
(
	[QQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Face]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Face](
	[Time] [datetime] NOT NULL,
	[FaceID] [int] NOT NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Face] PRIMARY KEY CLUSTERED 
(
	[Time] ASC,
	[FaceID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Index]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Index](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[word] [char](64) NOT NULL,
	[df] [int] NOT NULL,
	[tf] [image] NOT NULL,
	[posts] [image] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[data]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[QQ] [char](150) NOT NULL,
	[Message] [text] NOT NULL,
	[Time] [datetime] NOT NULL,
	[qun] [int] NOT NULL,
	[groupID] [int] NULL,
	[groupNum] [int] NULL,
 CONSTRAINT [PK_data_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rating](
	[QQ] [char](150) NOT NULL,
	[Rating] [float] NOT NULL,
	[Time] [datetime] NOT NULL,
	[score] [int] NOT NULL,
	[d1] [int] NOT NULL,
	[d2] [int] NOT NULL,
	[d3] [int] NOT NULL,
	[d4] [int] NOT NULL,
	[d5] [int] NOT NULL,
	[d6] [int] NOT NULL,
	[rank] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SearchHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SearchHistory](
	[keyword] [char](128) NOT NULL,
	[IP] [char](128) NOT NULL,
	[time] [datetime] NOT NULL,
	[sort] [tinyint] NOT NULL,
	[page] [tinyint] NOT NULL
) ON [PRIMARY]
END
