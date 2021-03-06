USE [mibdivan]
GO
/****** Object:  Table [dbo].[docente]    Script Date: 4/10/2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docente](
	[CI_docente] [nchar](50) NOT NULL,
	[nombreCompleto] [nchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[departamento] [int] NOT NULL,
 CONSTRAINT [PK_docente] PRIMARY KEY CLUSTERED 
(
	[CI_docente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materia]    Script Date: 4/10/2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materia](
	[CI_materia] [nchar](50) NOT NULL,
	[materia] [nchar](50) NOT NULL,
 CONSTRAINT [PK_materia] PRIMARY KEY CLUSTERED 
(
	[CI_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nota]    Script Date: 4/10/2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nota](
	[CI_nota] [nchar](50) NOT NULL,
	[Sigla] [nchar](50) NOT NULL,
	[nota1] [int] NOT NULL,
	[nota2] [int] NOT NULL,
	[nota3] [int] NOT NULL,
	[notafinal] [int] NOT NULL,
	[CI_docente] [nchar](50) NOT NULL,
	[CI_persona] [nchar](50) NOT NULL,
	[CI_materia] [nchar](50) NOT NULL,
 CONSTRAINT [PK_nota] PRIMARY KEY CLUSTERED 
(
	[CI_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 4/10/2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[CI_persona] [nchar](50) NOT NULL,
	[nombreCompleto] [nchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[departamento] [nchar](5) NOT NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[CI_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 4/10/2021 17:46:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[CI] [nchar](50) NOT NULL,
	[Usuario] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[CI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
