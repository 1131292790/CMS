USE [master]
GO
/****** Object:  Database [PeoData]    Script Date: 06/16/2020 00:30:16 ******/
CREATE DATABASE [PeoData] ON  PRIMARY 
( NAME = N'PeoData', FILENAME = N'd:\db\PeoData.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 2048KB )
 LOG ON 
( NAME = N'PeoLog', FILENAME = N'd:\db\ PeoLog.ldf' , SIZE = 1024KB , MAXSIZE = 10240KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PeoData] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PeoData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PeoData] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PeoData] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PeoData] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PeoData] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PeoData] SET ARITHABORT OFF
GO
ALTER DATABASE [PeoData] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PeoData] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PeoData] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PeoData] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PeoData] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PeoData] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PeoData] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PeoData] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PeoData] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PeoData] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PeoData] SET  ENABLE_BROKER
GO
ALTER DATABASE [PeoData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PeoData] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PeoData] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PeoData] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PeoData] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PeoData] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PeoData] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PeoData] SET  READ_WRITE
GO
ALTER DATABASE [PeoData] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PeoData] SET  MULTI_USER
GO
ALTER DATABASE [PeoData] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PeoData] SET DB_CHAINING OFF
GO
USE [PeoData]
GO
/****** Object:  Table [dbo].[department]    Script Date: 06/16/2020 00:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[dno] [varchar](20) NOT NULL,
	[dname] [varchar](30) NOT NULL,
	[dnum] [int] NULL,
	[exist] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[dno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [department_dname] ON [dbo].[department] 
(
	[dname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [department_dnum] ON [dbo].[department] 
(
	[dnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 06/16/2020 00:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[ano] [varchar](20) NOT NULL,
	[pwd] [varchar](100) NOT NULL,
	[pvl] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ano] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[department_insert]    Script Date: 06/16/2020 00:30:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[department_insert]
	@dname varchar(30)
as
	begin
		declare @dno varchar(20),@max int
		select @dno = MAX(dno) from department
		set @max = CONVERT(int,@dno)
		set @max+=1
		set @dno = CONVERT(varchar(20),@max)
		insert into department
			values(@dno,@dname,1,0)
	end
GO
/****** Object:  View [dbo].[view_depart_1]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_depart_1] as
	select dno, dname from department
GO
/****** Object:  Table [dbo].[staff]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[staff](
	[sno] [varchar](20) NOT NULL,
	[sname] [varchar](20) NOT NULL,
	[ssex] [varchar](5) NULL,
	[sxl] [varchar](5) NOT NULL,
	[smarrige] [varchar](5) NULL,
	[sposition] [varchar](20) NULL,
	[sstatus] [varchar](10) NULL,
	[sdept] [varchar](20) NULL,
	[exist] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[quit]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quit](
	[qno] [varchar](20) NOT NULL,
	[q_time] [date] NULL,
	[sno] [varchar](20) NOT NULL,
	[q_reason] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[qno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[leave]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[leave](
	[lno] [varchar](20) NOT NULL,
	[sno] [varchar](20) NOT NULL,
	[ano] [varchar](20) NOT NULL,
	[reason] [varchar](100) NOT NULL,
	[l_time] [date] NULL,
	[l_start] [date] NULL,
	[l_end] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[lno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reward]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reward](
	[jcno] [varchar](20) NOT NULL,
	[sno] [varchar](20) NOT NULL,
	[ano] [varchar](20) NOT NULL,
	[reason] [varchar](40) NULL,
	[kind] [varchar](5) NOT NULL,
	[money] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[jcno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[retire]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[retire](
	[rno] [varchar](20) NOT NULL,
	[sno] [varchar](20) NOT NULL,
	[r_time] [date] NOT NULL,
	[r_money] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[rno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salary]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salary](
	[sano] [varchar](20) NOT NULL,
	[sno] [varchar](20) NULL,
	[sa_time] [datetime] NULL,
	[sa_basic] [float] NULL,
	[sa_jiaban] [float] NULL,
	[sa_late] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[sano] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transfer]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transfer](
	[tno] [varchar](20) NOT NULL,
	[sno] [varchar](20) NULL,
	[ano] [varchar](20) NULL,
	[ttime] [date] NULL,
	[treason] [varchar](100) NOT NULL,
	[odno] [varchar](20) NULL,
	[ndno] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[tno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [transfer_ndno] ON [dbo].[transfer] 
(
	[ndno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [transfer_odno] ON [dbo].[transfer] 
(
	[odno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[staff_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[staff_insert]
	@sno varchar(20),
	@sname varchar(20),
	@ssex varchar(5),
	@sxl varchar(5),
	@smarrige varchar(5),
	@sposition varchar(20),
	@sdept varchar(20)
as
	begin
		insert into staff
			values(@sno,@sname,@ssex,@sxl,@smarrige,@sposition,'工作',@sdept,0)
end
GO
/****** Object:  StoredProcedure [dbo].[admin_update_staff]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[admin_update_staff]
	@sno varchar(20),
	@sname varchar(20),
	@ssex varchar(5),
	@sxl varchar(5),
	@smarrige varchar(5),
	@sposition varchar(20),
	@sstatus varchar(10),
	@sdept varchar(20)
as
	begin
		update staff
		set sno = @sno,sname = @sname,ssex = @ssex,sxl = @sxl
			,smarrige = @smarrige,sposition = @sposition,
			sstatus = @sstatus,sdept = @sdept
		where sno = @sno
end
GO
/****** Object:  View [dbo].[view_staff_1]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_staff_1] as
	select sno ,password 
	from staff
GO
/****** Object:  View [dbo].[view_stasalary]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_stasalary] as
	select sano, salary.sno,sname,sa_time,sa_basic,sa_jiaban,sa_late
	from salary,staff
	where salary.sno = staff.sno
GO
/****** Object:  View [dbo].[view_leave_1]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_leave_1] as
	select lno ,sno , l_time 
from leave
GO
/****** Object:  View [dbo].[view_attend_1]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_attend_1] as
	select tno , treason ,d.dname newdepart, vd.dname olddepart
	from transfer,department d,view_depart_1 vd
	where odno = vd.dno and ndno = d.dno
GO
/****** Object:  StoredProcedure [dbo].[transfer_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[transfer_insert]
	@sno varchar(20),
	@ano varchar(20),
	@treason varchar(100),
	@ndno varchar(20)
as
	begin
		declare @maxtno varchar(20),@max int,@odno varchar(20)
		select @maxtno = MAX(tno) from transfer
		set @max = CONVERT(int,@maxtno)
		set @max+=1
		set @maxtno = CONVERT(varchar(20),@max)
		select @odno = sdept from staff where sno = @sno 
		insert into transfer
			values(@maxtno,@sno,@ano,GETDATE(),@treason,@odno,@ndno)
end
GO
/****** Object:  StoredProcedure [dbo].[reward_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[reward_insert]
	@sno varchar(20),
	@ano varchar(20),
	@reason varchar(40),
	@kind varchar(5),
	@money float
as
	begin
		declare @maxjcno varchar(20),@max int
		select @maxjcno =jcno from reward
		set @max = CONVERT(int,@maxjcno)
		set @max+=1
		set @maxjcno = CONVERT(varchar(20),@max)
		insert into reward
			values(@maxjcno,@sno,@ano,@reason,@kind,@money)
	end
GO
/****** Object:  StoredProcedure [dbo].[re_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[re_insert]
	@sno varchar(20), 
	@r_time date,
	@r_money float 
as
	begin
		declare @maxrno varchar(20),@max int
		select @maxrno = MAX(rno) from retire
		set @max = CONVERT(int,@maxrno)
		set @max+=1
		set @maxrno = CONVERT(varchar(20),@max)
		update staff set exist = 1 where sno = @sno
		insert into retire
			values(@maxrno,@sno,@r_time,@r_money)
end
GO
/****** Object:  StoredProcedure [dbo].[quit_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[quit_insert]
	@sno varchar(20),
	@q_reason varchar(40)
as
	begin
		declare @maxqno varchar(20),@max int
		select @maxqno = MAX(qno) from quit
		set @max = CONVERT(int,@maxqno)
		set @max+=1
		set @maxqno = CONVERT(varchar(20),@max)
		update staff set exist = 1 where sno = @sno
		insert into quit
			values(@maxqno,GETDATE(),@sno,@q_reason)
end
GO
/****** Object:  StoredProcedure [dbo].[lea_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[lea_insert]
	@sno varchar(20),
	@ano varchar(20),
	@reason varchar(100),
	@l_start date,
	@l_end date
as
	begin
		declare @maxlno varchar(20),@max int
		select @maxlno = MAX(lno) from leave
		set @max = CONVERT(int,@maxlno)
		set @max+=1
		set @maxlno = CONVERT(varchar(20),@max)
		insert into leave
			values(@maxlno,@sno,@ano,@reason,GETDATE(),@l_start,@l_end)
end
GO
/****** Object:  Table [dbo].[attend]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attend](
	[ano] [varchar](20) NOT NULL,
	[stime] [time](0) NOT NULL,
	[etime] [time](0) NOT NULL,
	[sno] [varchar](20) NULL,
	[adate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ano] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[salary_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[salary_insert] 
	@sno varchar(20),
	@basic float
as
	begin
		declare @late float,@ltime time(0)
		--进行迟到扣款计算
		begin
			declare findlate cursor 
				for select stime from attend
				where sno = @sno
			open findlate
			fetch next from findlate into @ltime
			set @late = 0
			while @@FETCH_STATUS = 0
				begin
					if @ltime > '09:00:00'
						set @late+=50
					fetch next from findlate into @ltime
				end
			close findlate
			deallocate findlate
		end
		--进行加班工资计算
		declare @jiaban float,@etime time(0)
		begin
			declare findjiaban cursor
				for select etime from attend
				where sno = @sno
			open findjiaban
			fetch next from findjiaban into @etime
			set @jiaban = 0
			while @@FETCH_STATUS = 0
				begin
					if @etime > '18:00:00' and @etime <= '19:00:00'
						set @jiaban += 30
					if @etime > '19:00:00' and @etime <= '20:00:00'
						set @jiaban += 60
					if @etime > '20:00:00' and @etime <= '21:00:00'
						set @jiaban += 90
					if @etime > '21:00:00' and @etime <= '22:00:00'
						set @jiaban += 120
					if @etime > '22:00:00'
						set @jiaban += 180
					fetch next from findjiaban into @etime
				end
			close findjiaban
			deallocate findjiaban
		end
		--准备给工资表插入数据
		declare @maxsano varchar(20),@max int
		select @maxsano = MAX(sano) from salary
		set @max = CONVERT(int,@maxsano)
		set @max+=1
		set @maxsano = CONVERT(varchar(20),@max)
		insert into salary
			values(@maxsano,@sno,GETDATE(),@basic,@jiaban,@late)
	end
GO
/****** Object:  StoredProcedure [dbo].[att_insert]    Script Date: 06/16/2020 00:30:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[att_insert]
	@stime time(0),
	@etime time(0),
	@sno varchar(20)
as
	begin
		declare @maxano varchar(20),@max int
		select @maxano = MAX(ano) from attend
		set @max = CONVERT(int,@maxano)
		set @max+=1
		set @maxano = CONVERT(varchar(20),@max)
		insert into attend
			values(@maxano,@stime,@etime,@sno,GETDATE())
	end
GO
/****** Object:  Default [DF__departmen__exist__6F7F8B4B]    Script Date: 06/16/2020 00:30:17 ******/
ALTER TABLE [dbo].[department] ADD  DEFAULT ((0)) FOR [exist]
GO
/****** Object:  Default [DF__admin__pvl__531856C7]    Script Date: 06/16/2020 00:30:17 ******/
ALTER TABLE [dbo].[admin] ADD  DEFAULT ((1)) FOR [pvl]
GO
/****** Object:  Default [DF__staff__exist__6E8B6712]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[staff] ADD  DEFAULT ((0)) FOR [exist]
GO
/****** Object:  Default [DF__transfer__ttime__5F7E2DAC]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[transfer] ADD  DEFAULT (getdate()) FOR [ttime]
GO
/****** Object:  Default [DF__attend__adate__04AFB25B]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[attend] ADD  DEFAULT (getdate()) FOR [adate]
GO
/****** Object:  Check [CK__department__dnum__46B27FE2]    Script Date: 06/16/2020 00:30:17 ******/
ALTER TABLE [dbo].[department]  WITH CHECK ADD CHECK  (([dnum]>(0)))
GO
/****** Object:  Check [CK__staff__smarrige__4D5F7D71]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD CHECK  (([smarrige]='未婚' OR [smarrige]='已婚'))
GO
/****** Object:  Check [CK__staff__ssex__4B7734FF]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD CHECK  (([ssex]='女' OR [ssex]='男'))
GO
/****** Object:  Check [CK__staff__sxl__4C6B5938]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD CHECK  (([sxl]='其他' OR [sxl]='中专' OR [sxl]='大专' OR [sxl]='高中' OR [sxl]='初中' OR [sxl]='小学' OR [sxl]='博士' OR [sxl]='硕士' OR [sxl]='本科'))
GO
/****** Object:  Check [CK__reward__kind__4865BE2A]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[reward]  WITH CHECK ADD CHECK  (([kind]='惩罚' OR [kind]='奖励'))
GO
/****** Object:  Check [CK__reward__money__4959E263]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[reward]  WITH CHECK ADD CHECK  (([money]>(0)))
GO
/****** Object:  Check [CK__retire__r_money__6319B466]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[retire]  WITH CHECK ADD CHECK  (([r_money]>(0)))
GO
/****** Object:  Check [CK__salary__sa_basic__18B6AB08]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[salary]  WITH CHECK ADD CHECK  (([sa_basic]>(0)))
GO
/****** Object:  Check [CK__salary__sa_jiaba__19AACF41]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[salary]  WITH CHECK ADD CHECK  (([sa_jiaban]>(0)))
GO
/****** Object:  ForeignKey [FK__staff__sdept__4E53A1AA]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[staff]  WITH CHECK ADD FOREIGN KEY([sdept])
REFERENCES [dbo].[department] ([dno])
GO
/****** Object:  ForeignKey [FK__quit__q_reason__24285DB4]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[quit]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__leave__ano__57A801BA]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[leave]  WITH CHECK ADD FOREIGN KEY([ano])
REFERENCES [dbo].[admin] ([ano])
GO
/****** Object:  ForeignKey [FK__leave__sno__56B3DD81]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[leave]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__reward__ano__4B422AD5]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[reward]  WITH CHECK ADD FOREIGN KEY([ano])
REFERENCES [dbo].[admin] ([ano])
GO
/****** Object:  ForeignKey [FK__reward__sno__4A4E069C]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[reward]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__retire__r_money__640DD89F]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[retire]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__salary__sno__17C286CF]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[salary]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__transfer__ano__5E8A0973]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[transfer]  WITH CHECK ADD FOREIGN KEY([ano])
REFERENCES [dbo].[admin] ([ano])
GO
/****** Object:  ForeignKey [FK__transfer__ndno__6166761E]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[transfer]  WITH CHECK ADD FOREIGN KEY([ndno])
REFERENCES [dbo].[department] ([dno])
GO
/****** Object:  ForeignKey [FK__transfer__odno__607251E5]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[transfer]  WITH CHECK ADD FOREIGN KEY([odno])
REFERENCES [dbo].[department] ([dno])
GO
/****** Object:  ForeignKey [FK__transfer__sno__5D95E53A]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[transfer]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
/****** Object:  ForeignKey [FK__attend__sno__03BB8E22]    Script Date: 06/16/2020 00:30:20 ******/
ALTER TABLE [dbo].[attend]  WITH CHECK ADD FOREIGN KEY([sno])
REFERENCES [dbo].[staff] ([sno])
GO
