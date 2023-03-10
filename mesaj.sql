if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[m_liste]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[m_liste]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[m_mesaj]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[m_mesaj]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[m_user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[m_user]
GO

CREATE TABLE [dbo].[m_liste] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[kim] [int] NULL ,
	[eklenen] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[m_mesaj] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[kimden] [int] NULL ,
	[kime] [int] NULL ,
	[mesaj] [varchar] (50) COLLATE Turkish_CI_AS NULL ,
	[okundu] [bit] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[m_mesaj] ADD  CONSTRAINT [DF_m_mesaj_okundu]  DEFAULT ((0)) FOR [okundu]
GO

CREATE TABLE [dbo].[m_user] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[adsoyad] [varchar] (30) COLLATE Turkish_CI_AS NULL ,
	[sifre] [varchar] (10) COLLATE Turkish_CI_AS NULL 
) ON [PRIMARY]
GO

