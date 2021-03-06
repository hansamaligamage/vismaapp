/****** Object:  Table [dbo].[Ac]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ac](
	[AcNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[AcCode] [varchar](24) NOT NULL DEFAULT (' '),
	[AcGr] [varchar](60) NOT NULL DEFAULT (' '),
	[Res] [tinyint] NOT NULL DEFAULT ((0)),
	[TxCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TxCd] [int] NOT NULL DEFAULT ((0)),
	[InpTxCd] [tinyint] NOT NULL DEFAULT ((0)),
	[Trn] [tinyint] NOT NULL DEFAULT ((0)),
	[Susp] [tinyint] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[InpQty] [tinyint] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[InpR1] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR2] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR3] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR4] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR5] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR6] [tinyint] NOT NULL DEFAULT ((0)),
	[DstGr] [int] NOT NULL DEFAULT ((0)),
	[ExpAut] [tinyint] NOT NULL DEFAULT ((0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[RepGr] [int] NOT NULL DEFAULT ((0)),
	[RepCd] [char](1) NOT NULL DEFAULT (' '),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[Per] [tinyint] NOT NULL DEFAULT ((0)),
	[OldAcNo] [int] NOT NULL DEFAULT ((0)),
	[TxCtrl] [tinyint] NOT NULL DEFAULT ((0)),
	[NwAcNo] [int] NOT NULL DEFAULT ((0)),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[InpR7] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR8] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR9] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR10] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR11] [tinyint] NOT NULL DEFAULT ((0)),
	[InpR12] [tinyint] NOT NULL DEFAULT ((0)),
	[MemoFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Nm2] [varchar](80) NOT NULL DEFAULT (' '),
	[Nm3] [varchar](80) NOT NULL DEFAULT (' '),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BalProc] [int] NOT NULL DEFAULT ((0)),
	[AcProc] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Ac] PRIMARY KEY CLUSTERED 
(
	[AcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcBal](
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CrIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbAutCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrAutCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbAutCCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrAutCCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbAutQCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrAutQCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbAutC2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrAutC2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__AcBal] PRIMARY KEY NONCLUSTERED 
(
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcGr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcGr](
	[AcGr] [varchar](60) NOT NULL,
	[AgAcGr] [varchar](60) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__AcGr] PRIMARY KEY NONCLUSTERED 
(
	[AcGr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcInt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcInt](
	[PK] [int] NOT NULL,
	[FromNo] [int] NOT NULL,
	[ToNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[GenAcNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[OlAcNo] [int] NOT NULL,
	[ClReAcNo] [int] NOT NULL,
	[ClBaAcNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Cl3AcNo] [int] NOT NULL,
	[AcIntProc] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AcInt] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcPr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcPr](
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[ExPer] [tinyint] NOT NULL DEFAULT ((0)),
	[NxtPrBt] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__AcPr] PRIMARY KEY NONCLUSTERED 
(
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActInf](
	[ActNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[InfTp] [int] NOT NULL,
	[Txt1] [varchar](80) NOT NULL,
	[Txt2] [varchar](80) NOT NULL,
	[Txt3] [varchar](80) NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[Qty1] [decimal](28, 6) NOT NULL,
	[Qty2] [decimal](28, 6) NOT NULL,
	[Qty3] [decimal](28, 6) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[TpFld] [tinyint] NOT NULL,
	[MemoFNm] [varchar](260) NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[ChTmms] [int] NOT NULL,
	[AIProc] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ActInf] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actor](
	[ActNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Ad1] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad2] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad3] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad4] [varchar](60) NOT NULL DEFAULT (' '),
	[PNo] [varchar](40) NOT NULL DEFAULT (' '),
	[PArea] [varchar](60) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[Lang] [int] NOT NULL DEFAULT ((0)),
	[Shrt] [varchar](80) NOT NULL DEFAULT (' '),
	[MailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[Phone] [varchar](20) NOT NULL DEFAULT (' '),
	[PrivPh] [varchar](20) NOT NULL DEFAULT (' '),
	[MobPh] [varchar](20) NOT NULL DEFAULT (' '),
	[Pers] [varchar](20) NOT NULL DEFAULT (' '),
	[Fax] [varchar](20) NOT NULL DEFAULT (' '),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[NwCustNo] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[NwSupNo] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[NwEmpNo] [int] NOT NULL DEFAULT ((0)),
	[Title] [varchar](80) NOT NULL DEFAULT (' '),
	[LiaAct] [int] NOT NULL DEFAULT ((0)),
	[Usr] [varchar](24) NOT NULL DEFAULT (' '),
	[NwUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Seller] [int] NOT NULL DEFAULT ((0)),
	[Buyer] [int] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[Att] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[CrLmt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrSusp] [tinyint] NOT NULL DEFAULT ((0)),
	[CrEval] [varchar](80) NOT NULL DEFAULT (' '),
	[CustAcNo] [int] NOT NULL DEFAULT ((0)),
	[SupAcNo] [int] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[CustMaMt] [tinyint] NOT NULL DEFAULT ((0)),
	[SupMaMt] [tinyint] NOT NULL DEFAULT ((0)),
	[CAcSet] [int] NOT NULL DEFAULT ((0)),
	[SAcSet] [int] NOT NULL DEFAULT ((0)),
	[CVatNo] [int] NOT NULL DEFAULT ((0)),
	[SVatNo] [int] NOT NULL DEFAULT ((0)),
	[ExVat] [tinyint] NOT NULL DEFAULT ((0)),
	[ExSpc] [tinyint] NOT NULL DEFAULT ((0)),
	[DelToAct] [int] NOT NULL DEFAULT ((0)),
	[DelFrAct] [int] NOT NULL DEFAULT ((0)),
	[CStc] [int] NOT NULL DEFAULT ((0)),
	[SStc] [int] NOT NULL DEFAULT ((0)),
	[DelPri] [int] NOT NULL DEFAULT ((0)),
	[CDelMt] [int] NOT NULL DEFAULT ((0)),
	[SDelMt] [int] NOT NULL DEFAULT ((0)),
	[CDelTrm] [int] NOT NULL DEFAULT ((0)),
	[SDelTrm] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[CustTotD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SupTotD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoCust] [int] NOT NULL DEFAULT ((0)),
	[FactNo] [varchar](24) NOT NULL DEFAULT (' '),
	[CPmtTrm] [int] NOT NULL DEFAULT ((0)),
	[SPmtTrm] [int] NOT NULL DEFAULT ((0)),
	[CPmtMt] [int] NOT NULL DEFAULT ((0)),
	[SPmtMt] [int] NOT NULL DEFAULT ((0)),
	[BGiro] [varchar](35) NOT NULL DEFAULT (' '),
	[PGiro] [varchar](35) NOT NULL DEFAULT (' '),
	[DebFrDt] [int] NOT NULL DEFAULT ((0)),
	[DebToDt] [int] NOT NULL DEFAULT ((0)),
	[MaxRems] [tinyint] NOT NULL DEFAULT ((0)),
	[LstRemDt] [int] NOT NULL DEFAULT ((0)),
	[LstRemNo] [tinyint] NOT NULL DEFAULT ((0)),
	[IntRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RmtPri] [int] NOT NULL DEFAULT ((0)),
	[RmtSup] [int] NOT NULL DEFAULT ((0)),
	[SwftCd] [varchar](11) NOT NULL DEFAULT (' '),
	[SwftAd1] [varchar](60) NOT NULL DEFAULT (' '),
	[SwftAd2] [varchar](60) NOT NULL DEFAULT (' '),
	[SwftAd3] [varchar](60) NOT NULL DEFAULT (' '),
	[SwftAd4] [varchar](60) NOT NULL DEFAULT (' '),
	[OurCNo] [varchar](24) NOT NULL DEFAULT (' '),
	[InfCat] [int] NOT NULL DEFAULT ((0)),
	[Trade] [int] NOT NULL DEFAULT ((0)),
	[Distr] [int] NOT NULL DEFAULT ((0)),
	[BsNo] [varchar](24) NOT NULL DEFAULT (' '),
	[NoOfEmp] [int] NOT NULL DEFAULT ((0)),
	[Turn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[SrcNo] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[SAgAcNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Branch] [varchar](35) NOT NULL DEFAULT (' '),
	[DirDeb] [tinyint] NOT NULL DEFAULT ((0)),
	[MaxDebAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[PrSup] [int] NOT NULL DEFAULT ((0)),
	[SPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CustPref] [int] NOT NULL DEFAULT ((0)),
	[SupPref] [int] NOT NULL DEFAULT ((0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[YrRef] [varchar](20) NOT NULL DEFAULT (' '),
	[Fax2] [varchar](20) NOT NULL DEFAULT (' '),
	[EUTaxNo] [varchar](24) NOT NULL DEFAULT (' '),
	[AdmTm] [smallint] NOT NULL DEFAULT ((0)),
	[DelTm] [smallint] NOT NULL DEFAULT ((0)),
	[TanspTm] [smallint] NOT NULL DEFAULT ((0)),
	[DocSMt] [int] NOT NULL DEFAULT ((0)),
	[DelIntv] [smallint] NOT NULL DEFAULT ((0)),
	[LstDelDt] [int] NOT NULL DEFAULT ((0)),
	[MainAct] [int] NOT NULL DEFAULT ((0)),
	[MaxDueP] [smallint] NOT NULL DEFAULT ((0)),
	[MaxDueDy] [smallint] NOT NULL DEFAULT ((0)),
	[AcDocSMt] [int] NOT NULL DEFAULT ((0)),
	[SOLink] [int] NOT NULL DEFAULT ((0)),
	[CryptK] [varchar](20) NOT NULL DEFAULT (' '),
	[ActPro] [int] NOT NULL DEFAULT ((0)),
	[NwCNo] [int] NOT NULL DEFAULT ((0)),
	[NwSNo] [int] NOT NULL DEFAULT ((0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[TspDy] [int] NOT NULL DEFAULT ((0)),
	[LstSuit] [int] NOT NULL DEFAULT ((0)),
	[ExtID] [varchar](156) NOT NULL DEFAULT (' '),
	[ChExt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntAd1] [varchar](260) NOT NULL DEFAULT (' '),
	[IntAd2] [varchar](260) NOT NULL DEFAULT (' '),
	[OldCNo] [int] NOT NULL DEFAULT ((0)),
	[OldSNo] [int] NOT NULL DEFAULT ((0)),
	[EANLocCd] [varchar](40) NOT NULL DEFAULT (' '),
	[OlAcNo] [int] NOT NULL DEFAULT ((0)),
	[ClReAcNo] [int] NOT NULL DEFAULT ((0)),
	[ClBaAcNo] [int] NOT NULL DEFAULT ((0)),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[TspAgrNo] [int] NOT NULL DEFAULT ((0)),
	[TonRt] [tinyint] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GiroChSm] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[ViPNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ViPArea] [varchar](60) NOT NULL DEFAULT (' '),
	[RemPrDt] [int] NOT NULL DEFAULT ((0)),
	[IntGr] [int] NOT NULL DEFAULT ((0)),
	[CNtDy] [int] NOT NULL DEFAULT ((0)),
	[ePsw] [varchar](32) NOT NULL DEFAULT (' '),
	[eProc] [int] NOT NULL DEFAULT ((0)),
	[SmsProv] [int] NOT NULL DEFAULT ((0)),
	[ProdTm] [smallint] NOT NULL DEFAULT ((0)),
	[TmZn] [int] NOT NULL DEFAULT ((0)),
	[FCNo] [int] NOT NULL DEFAULT ((0)),
	[Cl3AcNo] [int] NOT NULL DEFAULT ((0)),
	[NrmTDisc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TSGrNo] [int] NOT NULL DEFAULT ((0)),
	[FlGr] [int] NOT NULL DEFAULT ((0)),
	[AttAmLmt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AgrChBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ShpActNo] [int] NOT NULL DEFAULT ((0)),
	[BPartNo] [int] NOT NULL DEFAULT ((0)),
	[EftSep] [char](3) NOT NULL DEFAULT (' '),
	[ExtExpGr] [int] NOT NULL DEFAULT ((0)),
	[EFT1] [int] NOT NULL DEFAULT ((0)),
	[EFT2] [int] NOT NULL DEFAULT ((0)),
	[EFT3] [int] NOT NULL DEFAULT ((0)),
	[EFT4] [int] NOT NULL DEFAULT ((0)),
	[FormId] [int] NOT NULL DEFAULT ((0)),
	[Fee] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[CustPre2] [int] NOT NULL DEFAULT ((0)),
	[EftFrmTp] [int] NOT NULL DEFAULT ((0)),
	[CardAddP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PerID] [varchar](24) NOT NULL DEFAULT (' '),
	[IntFee] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AuInOpNo] [int] NOT NULL DEFAULT ((0)),
	[AuMailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[EmailTmplGr] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__Actor] PRIMARY KEY CLUSTERED 
(
	[ActNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[ActorSocMe]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActorSocMe](
	[ActorNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[SocMed] [varchar](40) NOT NULL,
	[Acc] [varchar](40) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ActorSocMe] PRIMARY KEY NONCLUSTERED 
(
	[ActorNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActPrc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActPrc](
	[Prc] [int] NOT NULL,
	[Func] [int] NOT NULL DEFAULT ((0)),
	[TabFl] [varchar](128) NOT NULL DEFAULT (' '),
	[SesNo] [int] NOT NULL DEFAULT ((0)),
	[SesId] [varchar](40) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[CmdNo] [bigint] NOT NULL DEFAULT ((0)),
	[ProcNo] [bigint] NOT NULL DEFAULT ((0)),
	[RepNo] [bigint] NOT NULL DEFAULT ((0)),
	[TabFlB] [varbinary](max) NULL,
 CONSTRAINT [PK__ActPrc] PRIMARY KEY NONCLUSTERED 
(
	[Prc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[EntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Bas] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TxCd] [int] NOT NULL DEFAULT ((0)),
	[VatRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTxRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Task] [int] NOT NULL DEFAULT ((0)),
	[Cust] [int] NOT NULL DEFAULT ((0)),
	[Emp] [int] NOT NULL DEFAULT ((0)),
	[Act] [varchar](40) NOT NULL DEFAULT (' '),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[WthRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WthAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Sup] [int] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[ExAut] [tinyint] NOT NULL DEFAULT ((0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[TxCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[TxYrVoD] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrmVoD] [smallint] NOT NULL DEFAULT ((0)),
	[TxStNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CalcVAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VATDiff] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RealJNo] [int] NOT NULL DEFAULT ((0)),
	[RealLnNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[EsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[EsTxStNo] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__AcTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[AdNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Ctry] [int] NOT NULL,
	[Lang] [int] NOT NULL,
	[Shrt] [varchar](80) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[PrivPh] [varchar](20) NOT NULL,
	[MobPh] [varchar](20) NOT NULL,
	[Pers] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NOT NULL,
	[Title] [varchar](80) NOT NULL,
	[LiaAd] [int] NOT NULL,
	[Trade] [int] NOT NULL,
	[Distr] [int] NOT NULL,
	[BsNo] [varchar](24) NOT NULL,
	[NoOfEmp] [int] NOT NULL,
	[Turn] [decimal](28, 6) NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[SrcNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[AdPro] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Address] PRIMARY KEY NONCLUSTERED 
(
	[AdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agr](
	[AgrActNo] [int] NOT NULL,
	[AgrNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[FrTm] [smallint] NOT NULL DEFAULT ((0)),
	[ToTm] [smallint] NOT NULL DEFAULT ((0)),
	[NoReg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInvoAb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[DyPri] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ActNo] [int] NOT NULL DEFAULT ((0)),
	[LiaActNo] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[RspTp] [int] NOT NULL DEFAULT ((0)),
	[Priv] [tinyint] NOT NULL DEFAULT ((0)),
	[RsvTm] [smallint] NOT NULL DEFAULT ((0)),
	[RsvTmUn] [tinyint] NOT NULL DEFAULT ((0)),
	[Ntf] [tinyint] NOT NULL DEFAULT ((0)),
	[NtfTm] [int] NOT NULL DEFAULT ((0)),
	[NtfTmUn] [tinyint] NOT NULL DEFAULT ((0)),
	[Fin] [tinyint] NOT NULL DEFAULT ((0)),
	[FinDt] [int] NOT NULL DEFAULT ((0)),
	[StrSt] [tinyint] NOT NULL DEFAULT ((0)),
	[Invo] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CrActNo] [int] NOT NULL DEFAULT ((0)),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Tm1] [smallint] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[Tm2] [smallint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Descr2] [varchar](80) NOT NULL DEFAULT (' '),
	[ExtID] [varchar](156) NOT NULL DEFAULT (' '),
	[ExtProc] [tinyint] NOT NULL DEFAULT ((0)),
	[ChExt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[InvoCust] [int] NOT NULL DEFAULT ((0)),
	[Txt1] [varchar](240) NOT NULL DEFAULT (' '),
	[Txt2] [varchar](240) NOT NULL DEFAULT (' '),
	[TransGr] [int] NOT NULL DEFAULT ((0)),
	[MaAgrAct] [int] NOT NULL DEFAULT ((0)),
	[MaAgrNo] [int] NOT NULL DEFAULT ((0)),
	[ResNo] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[RefNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[CCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[D1Hr] [int] NOT NULL DEFAULT ((0)),
	[D2Hr] [int] NOT NULL DEFAULT ((0)),
	[D3Hr] [int] NOT NULL DEFAULT ((0)),
	[D4Hr] [int] NOT NULL DEFAULT ((0)),
	[D5Hr] [int] NOT NULL DEFAULT ((0)),
	[D6Hr] [int] NOT NULL DEFAULT ((0)),
	[D7Hr] [int] NOT NULL DEFAULT ((0)),
	[OrdLnNo] [int] NOT NULL DEFAULT ((0)),
	[Price] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AgrProc] [int] NOT NULL DEFAULT ((0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WageSrt] [varchar](10) NOT NULL DEFAULT (' '),
	[ProdPrGr] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG2] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG3] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[StcNo] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrM1] [int] NOT NULL DEFAULT ((0)),
	[PrM2] [int] NOT NULL DEFAULT ((0)),
	[PrM3] [int] NOT NULL DEFAULT ((0)),
	[PrM4] [int] NOT NULL DEFAULT ((0)),
	[PrM5] [int] NOT NULL DEFAULT ((0)),
	[Dc1P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dupl] [int] NOT NULL DEFAULT ((0)),
	[Dup2] [int] NOT NULL DEFAULT ((0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[Dc1Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AdWage1] [int] NOT NULL DEFAULT ((0)),
	[AdWage2] [int] NOT NULL DEFAULT ((0)),
	[GMT] [smallint] NOT NULL DEFAULT ((0)),
	[AgrTmZn] [int] NOT NULL DEFAULT ((0)),
	[ActTmZn] [int] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[TSGrNo] [int] NOT NULL DEFAULT ((0)),
	[TSBFrYrPr] [int] NOT NULL DEFAULT ((0)),
	[TSBToYrPr] [int] NOT NULL DEFAULT ((0)),
	[TSProc] [int] NOT NULL DEFAULT ((0)),
	[CAcSet] [int] NOT NULL DEFAULT ((0)),
	[WgRunNo] [int] NOT NULL DEFAULT ((0)),
	[DebDy] [int] NOT NULL DEFAULT ((0)),
	[NoRegDy] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInvoDy] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[ProdProcNo] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__Agr] PRIMARY KEY CLUSTERED 
(
	[AgrActNo] ASC,
	[AgrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgrAcc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgrAcc](
	[LnNo] [int] NOT NULL,
	[AgrActNo] [int] NOT NULL,
	[PriActNo] [int] NOT NULL,
	[Acc] [tinyint] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AgrAcc] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgrStruct]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgrStruct](
	[ProdNo] [varchar](40) NOT NULL,
	[LnNo] [int] NOT NULL,
	[SubProd] [varchar](40) NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[AgrProc] [int] NOT NULL,
	[RspTp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Int] [int] NOT NULL,
	[NoOfInt] [int] NOT NULL,
	[FixedQty] [decimal](28, 6) NOT NULL,
	[StructProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AgrStruct] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Altinn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Altinn](
	[PK] [int] NOT NULL,
	[SysID] [int] NOT NULL,
	[Psw] [varchar](32) NOT NULL,
	[SchNo] [int] NOT NULL,
	[BatchCnt] [int] NOT NULL,
	[SendRef] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Altinn] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AltinnLog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AltinnLog](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[BatchID] [varchar](50) NOT NULL,
	[SendRef] [int] NOT NULL,
	[SchNo] [int] NOT NULL,
	[SchSpec] [int] NOT NULL,
	[St] [int] NOT NULL,
	[RecRef] [varchar](50) NOT NULL,
	[PrCd] [int] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[MsgTp] [varchar](50) NOT NULL,
	[Msg] [varchar](250) NOT NULL,
	[SubmRef] [varchar](50) NOT NULL,
	[WrkFlRef] [varchar](50) NOT NULL,
	[ArchRef] [varchar](50) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AltinnLog] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AltProd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AltProd](
	[ProdNo] [varchar](40) NOT NULL,
	[LnNo] [int] NOT NULL,
	[AltProd] [varchar](40) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[Lang] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[AltProdSt] [int] NOT NULL,
	[PrCatNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AltProd] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AOProdInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AOProdInf](
	[ProdNo] [varchar](40) NOT NULL,
	[MinNo] [decimal](28, 6) NOT NULL,
	[PerAdd] [decimal](28, 6) NOT NULL,
	[RndInMin] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AOProdInf] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARArch]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARArch](
	[Yr] [smallint] NOT NULL,
	[TrmNo] [smallint] NOT NULL,
	[LnNo] [int] NOT NULL,
	[VatRepNo] [int] NOT NULL,
	[RefId] [varchar](50) NOT NULL,
	[St] [int] NOT NULL,
	[Descr] [varchar](250) NOT NULL,
	[RepMsg] [varchar](1000) NOT NULL,
	[SrvRef] [varchar](50) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[RepData] [varbinary](max) NULL,
 CONSTRAINT [PK__ARArch] PRIMARY KEY NONCLUSTERED 
(
	[Yr] ASC,
	[TrmNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssLink]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssLink](
	[ActNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[Cust] [int] NOT NULL,
	[Sup] [int] NOT NULL,
	[Emp] [int] NOT NULL,
	[Role] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ChTmms] [int] NOT NULL,
	[TempFor] [int] NOT NULL,
	[ReportTo] [int] NOT NULL,
	[MaxAttAm] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AssLink] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Aut]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Aut](
	[LnNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[DbAcCl] [tinyint] NOT NULL,
	[DbAcNo] [int] NOT NULL,
	[DbTxCd] [int] NOT NULL,
	[CrAcCl] [tinyint] NOT NULL,
	[CrAcNo] [int] NOT NULL,
	[CrTxCd] [int] NOT NULL,
	[Shr] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[Exc] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[Blank] [int] NOT NULL,
	[TxCdProc] [tinyint] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[SelR1] [int] NOT NULL,
	[SelR2] [int] NOT NULL,
	[SelR3] [int] NOT NULL,
	[SelR4] [int] NOT NULL,
	[SelR5] [int] NOT NULL,
	[SelR6] [int] NOT NULL,
	[SelR7] [varchar](40) NOT NULL,
	[SelR8] [varchar](10) NOT NULL,
	[SelR9] [varchar](10) NOT NULL,
	[SelR10] [varchar](10) NOT NULL,
	[SelR11] [varchar](10) NOT NULL,
	[SelR12] [varchar](10) NOT NULL,
	[DstK] [int] NOT NULL,
	[PrK] [int] NOT NULL,
	[ExpAut] [tinyint] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Aut] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AutInvOp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AutInvOp](
	[No] [int] NOT NULL,
	[Cd] [varchar](30) NOT NULL,
	[Nm] [varchar](30) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__AutInvOp] PRIMARY KEY NONCLUSTERED 
(
	[No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BalGr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BalGr](
	[BalGrNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__BalGr] PRIMARY KEY NONCLUSTERED 
(
	[BalGrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAc](
	[ActNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[BankG] [varchar](35) NOT NULL,
	[GiroChSm] [int] NOT NULL,
	[BankCon] [int] NOT NULL,
	[ExPro] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[PmtMt] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[AgAcNo] [int] NOT NULL,
	[PmtCur] [int] NOT NULL,
	[CrCdKey] [varchar](260) NOT NULL,
	[ExpPr] [varchar](10) NOT NULL,
	[IntGr] [int] NOT NULL,
	[ClIntTp] [int] NOT NULL,
	[SuitNo] [int] NOT NULL,
	[AgCustNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__BankAc] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankCon]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankCon](
	[BCNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[SwftCd] [varchar](11) NOT NULL,
	[SwftAd1] [varchar](60) NOT NULL,
	[SwftAd2] [varchar](60) NOT NULL,
	[SwftAd3] [varchar](60) NOT NULL,
	[SwftAd4] [varchar](60) NOT NULL,
	[BGiro] [varchar](35) NOT NULL,
	[CurAc] [tinyint] NOT NULL,
	[CurNo] [int] NOT NULL,
	[GenAcNo] [int] NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[Branch] [varchar](35) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[IBAN] [varchar](35) NOT NULL,
 CONSTRAINT [PK__BankCon] PRIMARY KEY NONCLUSTERED 
(
	[BCNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bgt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bgt](
	[BgtNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Yr] [smallint] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[UseAcGr] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Bgt] PRIMARY KEY NONCLUSTERED 
(
	[BgtNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BgtLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BgtLn](
	[BgNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Dt] [int] NOT NULL DEFAULT ((0)),
	[Yr] [smallint] NOT NULL DEFAULT ((0)),
	[Pr] [smallint] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[AcNo] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ToNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbIncNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbIncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrInvoNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrInvoAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[EntSt] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[MemoNo] [varchar](260) NOT NULL DEFAULT (' '),
	[AcGr] [varchar](60) NOT NULL DEFAULT (' '),
	[Wk] [tinyint] NOT NULL DEFAULT ((0)),
	[DstK] [int] NOT NULL DEFAULT ((0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__BgtLn] PRIMARY KEY NONCLUSTERED 
(
	[BgNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BPart]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BPart](
	[BPartNo] [int] NOT NULL,
	[FrFileNm] [varchar](260) NOT NULL,
	[ToFileNm] [varchar](260) NOT NULL,
	[CustNo] [varchar](24) NOT NULL,
	[Div] [varchar](11) NOT NULL,
	[Oper] [varchar](11) NOT NULL,
	[LstTrfDt] [int] NOT NULL,
	[LstDySq] [int] NOT NULL,
	[LstSq] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ImFileNm] [varchar](260) NOT NULL,
	[ExFileNm] [varchar](260) NOT NULL,
	[Passw] [varchar](32) NOT NULL,
	[NwPassw] [varchar](32) NOT NULL,
	[BankSys] [tinyint] NOT NULL,
	[BankG] [varchar](35) NOT NULL,
	[BankCon] [int] NOT NULL,
	[RmtAc] [int] NOT NULL,
	[RmtFeeAc] [int] NOT NULL,
	[CNtDy] [int] NOT NULL,
	[EFTProc] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[CurCd] [int] NOT NULL,
	[AbCst] [int] NOT NULL,
	[DeclCd] [int] NOT NULL,
	[PmtLnPro] [int] NOT NULL,
	[BankNm] [varchar](80) NOT NULL,
	[Cur] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[EftSep] [char](3) NOT NULL,
	[NtfCd] [char](5) NOT NULL,
	[NtfTxt] [varchar](25) NOT NULL,
	[TxtCd] [varchar](10) NOT NULL,
	[TxtLn] [varchar](80) NOT NULL,
	[VoSrNo] [int] NOT NULL,
	[DeclTxt] [varchar](40) NOT NULL,
	[EftFrmTp] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[ApSigKey] [varchar](40) NOT NULL,
 CONSTRAINT [PK__BPart] PRIMARY KEY NONCLUSTERED 
(
	[BPartNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BPmt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BPmt](
	[BPmtNo] [int] NOT NULL,
	[BPartNo] [int] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[TrfDt] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[PlTrfDt] [int] NOT NULL,
	[ToFileNm] [varchar](260) NOT NULL,
	[PmtSt] [tinyint] NOT NULL,
	[FrDySq] [int] NOT NULL,
	[ToDySq] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[PmtTp] [int] NOT NULL,
	[CurCd] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[ApReqId] [varchar](100) NOT NULL,
 CONSTRAINT [PK__BPmt] PRIMARY KEY NONCLUSTERED 
(
	[BPmtNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BPmtLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BPmtLn](
	[BPmtNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[CurNo] [int] NOT NULL,
	[ExchRt] [decimal](28, 6) NOT NULL,
	[CAm] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[LnSt] [tinyint] NOT NULL,
	[SupNo] [int] NOT NULL,
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[RetCd] [varchar](260) NOT NULL,
	[SugDt] [int] NOT NULL,
	[RecDt] [int] NOT NULL,
	[ValDt] [int] NOT NULL,
	[BatDt] [int] NOT NULL,
	[BankRef] [varchar](30) NOT NULL,
	[RlExchRt] [decimal](28, 6) NOT NULL,
	[DySq] [int] NOT NULL,
	[PmtAc] [varchar](35) NOT NULL,
	[RecRef] [varchar](40) NOT NULL,
	[DeclCd] [int] NOT NULL,
	[DeclTxt] [varchar](80) NOT NULL,
	[PmtDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[TxtCd] [varchar](10) NOT NULL,
	[TxtLn] [varchar](80) NOT NULL,
	[PmtLnPro] [int] NOT NULL,
	[ActAm] [decimal](28, 6) NOT NULL,
	[AbCst] [char](3) NOT NULL,
	[DmCst] [char](3) NOT NULL,
	[AgExchRt] [decimal](28, 6) NOT NULL,
	[AgWt] [varchar](6) NOT NULL,
	[TrmCtr] [int] NOT NULL,
	[TrmRt] [decimal](28, 6) NOT NULL,
	[ChkCd] [char](1) NOT NULL,
	[TlxFax] [char](1) NOT NULL,
	[TlxCtrCd] [char](2) NOT NULL,
	[TlxFaxNo] [varchar](20) NOT NULL,
	[Att] [varchar](20) NOT NULL,
	[Cid] [varchar](30) NOT NULL,
	[NtfCd] [char](5) NOT NULL,
	[NtfTxt] [varchar](25) NOT NULL,
	[BankG] [varchar](35) NOT NULL,
	[BankSeq] [int] NOT NULL,
	[Prv] [decimal](28, 6) NOT NULL,
	[EmpNo] [int] NOT NULL,
	[GiroChSm] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[BankAcLn] [int] NOT NULL,
	[CNtDy] [int] NOT NULL,
	[CurCd] [int] NOT NULL,
	[PmtCur] [int] NOT NULL,
	[TrfExRt] [decimal](28, 6) NOT NULL,
	[BPartNo] [int] NOT NULL,
	[EftFrmTp] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__BPmtLn] PRIMARY KEY NONCLUSTERED 
(
	[BPmtNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChLog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChLog](
	[LnNo] [int] NOT NULL,
	[LogTp] [int] NOT NULL,
	[TabNo] [bigint] NOT NULL,
	[ColNo] [bigint] NOT NULL,
	[ProcNo] [bigint] NOT NULL,
	[ChPK] [varchar](260) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Inf] [varchar](260) NOT NULL,
	[PrvVal] [varchar](260) NOT NULL,
	[NewVal] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[AccGrCh] [int] NOT NULL,
	[RepNo] [bigint] NOT NULL,
	[CmdNo] [bigint] NOT NULL,
	[MiscFNo] [bigint] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[Cmt] [varchar](max) NOT NULL,
 CONSTRAINT [PK__ChLog] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChQue]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChQue](
	[QNo] [int] IDENTITY(1,1) NOT NULL,
	[ExpTp] [char](4) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[TblID] [varchar](30) NOT NULL,
	[ChTp] [char](1) NOT NULL,
	[PrLbl] [char](1) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ChQue] PRIMARY KEY NONCLUSTERED 
(
	[QNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmpRsp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmpRsp](
	[CmpNo] [int] NOT NULL,
	[RspTp] [int] NOT NULL,
	[Cnt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CmpRsp] PRIMARY KEY NONCLUSTERED 
(
	[CmpNo] ASC,
	[RspTp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CombG]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CombG](
	[CombG] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Comb] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CombG] PRIMARY KEY NONCLUSTERED 
(
	[CombG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CombMat]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CombMat](
	[CombG] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[FrAcNo] [int] NOT NULL,
	[ToAcNo] [int] NOT NULL,
	[FrR1] [int] NOT NULL,
	[ToR1] [int] NOT NULL,
	[FrR2] [int] NOT NULL,
	[ToR2] [int] NOT NULL,
	[FrR3] [int] NOT NULL,
	[ToR3] [int] NOT NULL,
	[FrR4] [int] NOT NULL,
	[ToR4] [int] NOT NULL,
	[FrR5] [int] NOT NULL,
	[ToR5] [int] NOT NULL,
	[FrR6] [int] NOT NULL,
	[ToR6] [int] NOT NULL,
	[FrR7] [varchar](40) NOT NULL,
	[ToR7] [varchar](40) NOT NULL,
	[FrR8] [varchar](10) NOT NULL,
	[ToR8] [varchar](10) NOT NULL,
	[FrR9] [varchar](10) NOT NULL,
	[ToR9] [varchar](10) NOT NULL,
	[FrR10] [varchar](10) NOT NULL,
	[ToR10] [varchar](10) NOT NULL,
	[FrR11] [varchar](10) NOT NULL,
	[ToR11] [varchar](10) NOT NULL,
	[FrR12] [varchar](10) NOT NULL,
	[ToR12] [varchar](10) NOT NULL,
	[FrEmpNo] [int] NOT NULL,
	[ToEmpNo] [int] NOT NULL,
	[FrProdNo] [varchar](40) NOT NULL,
	[ToProdNo] [varchar](40) NOT NULL,
	[Comb] [int] NOT NULL,
	[CombPro] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[FrResNo] [int] NOT NULL,
	[ToResNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CombMat] PRIMARY KEY NONCLUSTERED 
(
	[CombG] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsDoc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsDoc](
	[CsDocNo] [int] NOT NULL,
	[DocTp] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[LtrNo] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[DocDt] [int] NOT NULL,
	[StDt] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[FormNo] [int] NOT NULL,
	[LayNo] [int] NOT NULL,
	[PgElNo] [int] NOT NULL,
	[CsDPro] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Ctry] [int] NOT NULL,
	[Lang] [int] NOT NULL,
	[Shrt] [varchar](80) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[PrivPh] [varchar](20) NOT NULL,
	[MobPh] [varchar](20) NOT NULL,
	[Pers] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NOT NULL,
	[CustNo] [int] NOT NULL,
	[Title] [varchar](80) NOT NULL,
	[LiaAct] [int] NOT NULL,
	[Seller] [int] NOT NULL,
	[Buyer] [int] NOT NULL,
	[Rsp] [int] NOT NULL,
	[Att] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[CrLmt] [decimal](28, 6) NOT NULL,
	[CrSusp] [tinyint] NOT NULL,
	[CrEval] [varchar](80) NOT NULL,
	[ExVat] [tinyint] NOT NULL,
	[Cur] [int] NOT NULL,
	[InvoCust] [int] NOT NULL,
	[FactNo] [varchar](24) NOT NULL,
	[CPmtTrm] [int] NOT NULL,
	[CPmtMt] [int] NOT NULL,
	[BGiro] [varchar](35) NOT NULL,
	[PGiro] [varchar](35) NOT NULL,
	[DebFrDt] [int] NOT NULL,
	[DebToDt] [int] NOT NULL,
	[MaxRems] [tinyint] NOT NULL,
	[LstRemDt] [int] NOT NULL,
	[LstRemNo] [tinyint] NOT NULL,
	[IntRt] [decimal](28, 6) NOT NULL,
	[RmtPri] [int] NOT NULL,
	[RmtSup] [int] NOT NULL,
	[OurCNo] [varchar](24) NOT NULL,
	[Trade] [int] NOT NULL,
	[Distr] [int] NOT NULL,
	[BsNo] [varchar](24) NOT NULL,
	[Turn] [decimal](28, 6) NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Branch] [varchar](35) NOT NULL,
	[DirDeb] [tinyint] NOT NULL,
	[MaxDebAm] [decimal](28, 6) NOT NULL,
	[CustPref] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[YrRef] [varchar](20) NOT NULL,
	[Fax2] [varchar](20) NOT NULL,
	[EUTaxNo] [varchar](24) NOT NULL,
	[DocSMt] [int] NOT NULL,
	[MainAct] [int] NOT NULL,
	[MaxDueP] [smallint] NOT NULL,
	[MaxDueDy] [smallint] NOT NULL,
	[AcDocSMt] [int] NOT NULL,
	[ActPro] [int] NOT NULL,
	[IntAd1] [varchar](260) NOT NULL,
	[IntAd2] [varchar](260) NOT NULL,
	[EANLocCd] [varchar](40) NOT NULL,
	[OlAcNo] [int] NOT NULL,
	[ClReAcNo] [int] NOT NULL,
	[ClBaAcNo] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[GiroChSm] [int] NOT NULL,
	[BankCon] [int] NOT NULL,
	[ViPNo] [varchar](40) NOT NULL,
	[ViPArea] [varchar](60) NOT NULL,
	[RemPrDt] [int] NOT NULL,
	[IntGr] [int] NOT NULL,
	[CNtDy] [int] NOT NULL,
	[FCNo] [int] NOT NULL,
	[Cl3AcNo] [int] NOT NULL,
	[AgrChBal] [decimal](28, 6) NOT NULL,
	[CurFee] [decimal](28, 6) NOT NULL,
	[Fee] [decimal](28, 6) NOT NULL,
	[Cur2] [int] NOT NULL,
	[CustPre2] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CsDoc] PRIMARY KEY CLUSTERED 
(
	[CsDocNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsDocF]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsDocF](
	[CsDocNo] [int] NOT NULL,
	[FormLnNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Value] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CsDocF] PRIMARY KEY CLUSTERED 
(
	[CsDocNo] ASC,
	[FormLnNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsDocLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsDocLn](
	[CsDocNo] [int] NOT NULL,
	[DocLnNo] [int] NOT NULL,
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[VoNo] [int] NOT NULL,
	[VoDt] [int] NOT NULL,
	[ValDt] [int] NOT NULL,
	[AcYr] [smallint] NOT NULL,
	[AcPr] [smallint] NOT NULL,
	[VoTp] [int] NOT NULL,
	[Txt] [varchar](200) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[RCurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[RAm] [decimal](28, 6) NOT NULL,
	[DueDt] [int] NOT NULL,
	[PayedDt] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[Ref] [varchar](20) NOT NULL,
	[AgRef] [varchar](20) NOT NULL,
	[Trn] [decimal](28, 6) NOT NULL,
	[St] [tinyint] NOT NULL,
	[Pri] [int] NOT NULL,
	[ExcInt] [tinyint] NOT NULL,
	[IntRt] [decimal](28, 6) NOT NULL,
	[CurIntAm] [decimal](28, 6) NOT NULL,
	[IntAm] [decimal](28, 6) NOT NULL,
	[IntFrDt] [int] NOT NULL,
	[IntToDt] [int] NOT NULL,
	[ExcRem] [tinyint] NOT NULL,
	[Rems] [tinyint] NOT NULL,
	[RemRnNo] [int] NOT NULL,
	[GenAcNo] [int] NOT NULL,
	[Qty] [decimal](28, 6) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[SrcTp] [tinyint] NOT NULL,
	[SrcJNo] [int] NOT NULL,
	[Err] [int] NOT NULL,
	[AgAcCl] [tinyint] NOT NULL,
	[AgAcNo] [int] NOT NULL,
	[Ctrl] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Cr] [tinyint] NOT NULL,
	[PmtTrm] [int] NOT NULL,
	[CshDueDt] [int] NOT NULL,
	[CshCurAm] [decimal](28, 6) NOT NULL,
	[CshAm] [decimal](28, 6) NOT NULL,
	[DebDir] [tinyint] NOT NULL,
	[DebRnNo] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[Txt2] [varchar](200) NOT NULL,
	[VoGr1] [int] NOT NULL,
	[VoGr2] [int] NOT NULL,
	[FixCurAm] [decimal](28, 6) NOT NULL,
	[FixAm] [decimal](28, 6) NOT NULL,
	[PrevVoNo] [int] NOT NULL,
	[TransSt] [int] NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[TmpTr] [int] NOT NULL,
	[FactRNo] [int] NOT NULL,
	[PrtCurAm] [decimal](28, 6) NOT NULL,
	[PrtAm] [decimal](28, 6) NOT NULL,
	[ClPrc] [tinyint] NOT NULL,
	[CNAm] [decimal](28, 6) NOT NULL,
	[WO] [tinyint] NOT NULL,
	[AcCPmtV] [decimal](28, 6) NOT NULL,
	[AcDPmtV] [decimal](28, 6) NOT NULL,
	[DelActNo] [int] NOT NULL,
	[PictNo] [varchar](260) NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[PmtMt] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[PrBt] [int] NOT NULL,
	[UpdBndNo] [int] NOT NULL,
	[UpdLnNo] [int] NOT NULL,
	[RemPrDt] [int] NOT NULL,
	[AcYrPr] [int] NOT NULL,
	[PmVaCAm] [decimal](28, 6) NOT NULL,
	[PmVaAm] [decimal](28, 6) NOT NULL,
	[DbTxCdP] [int] NOT NULL,
	[DbTrnClP] [tinyint] NOT NULL,
	[ExtRef1] [varchar](20) NOT NULL,
	[ExtRef2] [varchar](20) NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[PmtNo] [int] NOT NULL,
	[WfId] [int] NOT NULL,
	[PLDNo] [int] NOT NULL,
	[PLDFlow] [int] NOT NULL,
	[ClIntFrD] [int] NOT NULL,
	[ClIntToD] [int] NOT NULL,
	[ClIntCAm] [decimal](28, 6) NOT NULL,
	[ClIntAm] [decimal](28, 6) NOT NULL,
	[PmVaAmCD] [decimal](28, 6) NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[OrgDueDt] [int] NOT NULL,
	[FreeAm] [decimal](28, 6) NOT NULL,
	[FreeCurA] [decimal](28, 6) NOT NULL,
	[LegRRNo] [int] NOT NULL,
	[CurCExRt] [decimal](28, 6) NOT NULL,
	[CurCAm] [decimal](28, 6) NOT NULL,
	[CurCDt] [int] NOT NULL,
	[CurCRNo] [int] NOT NULL,
	[LastCAm] [decimal](28, 6) NOT NULL,
	[BankG] [varchar](35) NOT NULL,
	[ExtRef3] [varchar](20) NOT NULL,
	[RemDocNo] [int] NOT NULL,
	[ClSugFrD] [int] NOT NULL,
	[ClSugToD] [int] NOT NULL,
	[ClSugCAm] [decimal](28, 6) NOT NULL,
	[ClSugAm] [decimal](28, 6) NOT NULL,
	[Cur2] [int] NOT NULL,
	[ExRt2] [decimal](28, 6) NOT NULL,
	[CurAm2] [decimal](28, 6) NOT NULL,
	[CRCshAm] [decimal](28, 6) NOT NULL,
	[RCshAm] [decimal](28, 6) NOT NULL,
	[RemSt] [int] NOT NULL,
	[OrgCID] [varchar](30) NOT NULL,
	[CsDLPro] [int] NOT NULL,
	[DocSrt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[M1] [decimal](28, 6) NOT NULL,
	[M2] [decimal](28, 6) NOT NULL,
	[M3] [decimal](28, 6) NOT NULL,
	[M4] [decimal](28, 6) NOT NULL,
	[M5] [decimal](28, 6) NOT NULL,
	[M6] [decimal](28, 6) NOT NULL,
	[M7] [decimal](28, 6) NOT NULL,
	[M8] [decimal](28, 6) NOT NULL,
	[M9] [decimal](28, 6) NOT NULL,
	[M10] [decimal](28, 6) NOT NULL,
	[M11] [decimal](28, 6) NOT NULL,
	[M12] [decimal](28, 6) NOT NULL,
	[M13] [decimal](28, 6) NOT NULL,
	[M14] [decimal](28, 6) NOT NULL,
	[M15] [decimal](28, 6) NOT NULL,
	[M16] [decimal](28, 6) NOT NULL,
	[M17] [decimal](28, 6) NOT NULL,
	[M18] [decimal](28, 6) NOT NULL,
	[M19] [decimal](28, 6) NOT NULL,
	[M20] [decimal](28, 6) NOT NULL,
	[M21] [decimal](28, 6) NOT NULL,
	[M22] [tinyint] NOT NULL,
	[CsDocLnTp] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[Ctry] [int] NOT NULL,
 CONSTRAINT [PK__CsDocLn] PRIMARY KEY CLUSTERED 
(
	[CsDocNo] ASC,
	[DocLnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ctry]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ctry](
	[CtryNo] [int] NOT NULL,
	[ISO] [char](3) NOT NULL DEFAULT (' '),
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Lang] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[InvoAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoFee] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FeeVat] [int] NOT NULL DEFAULT ((0)),
	[GrcDy] [smallint] NOT NULL DEFAULT ((0)),
	[AftRem] [tinyint] NOT NULL DEFAULT ((0)),
	[Intv] [smallint] NOT NULL DEFAULT ((0)),
	[IntMt] [tinyint] NOT NULL DEFAULT ((0)),
	[CmpInt] [tinyint] NOT NULL DEFAULT ((0)),
	[FrmRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrvRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MinTrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MinNtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntFee] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[NatCd] [char](5) NOT NULL DEFAULT (' '),
	[NatCd2] [char](5) NOT NULL DEFAULT (' '),
	[RemPmt] [int] NOT NULL DEFAULT ((0)),
	[IntFrDy] [smallint] NOT NULL DEFAULT ((0)),
	[MxIntDy] [smallint] NOT NULL DEFAULT ((0)),
	[CtryPro] [int] NOT NULL DEFAULT ((0)),
	[StTxCd] [int] NOT NULL DEFAULT ((0)),
	[StTxCl] [tinyint] NOT NULL DEFAULT ((0)),
	[GrcDyCsh] [smallint] NOT NULL DEFAULT ((0)),
	[LgtIBAN] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Ctry] PRIMARY KEY NONCLUSTERED 
(
	[CtryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cur]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cur](
	[CurNo] [int] NOT NULL,
	[ISO] [char](3) NOT NULL DEFAULT (' '),
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[CurTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SalesRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CalcRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrLmt1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrAm1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrLmt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrLmt3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntTrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[IntAc] [int] NOT NULL DEFAULT ((0)),
	[FeeAc] [int] NOT NULL DEFAULT ((0)),
	[RmtAc] [int] NOT NULL DEFAULT ((0)),
	[ObFeeAc] [int] NOT NULL DEFAULT ((0)),
	[FrFeeAc] [int] NOT NULL DEFAULT ((0)),
	[ExFeeAc] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[EUFeeAc] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[RmtFeeAc] [int] NOT NULL DEFAULT ((0)),
	[IIFeeAc] [int] NOT NULL DEFAULT ((0)),
	[Factor] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Cur] PRIMARY KEY NONCLUSTERED 
(
	[CurNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CurCData]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CurCData](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[AcAm] [decimal](28, 6) NOT NULL,
	[CorExRt] [decimal](28, 6) NOT NULL,
	[CorAm] [decimal](28, 6) NOT NULL,
	[CorDt] [int] NOT NULL,
	[NewCRt] [decimal](28, 6) NOT NULL,
	[NewCAm] [decimal](28, 6) NOT NULL,
	[CorDP] [decimal](28, 6) NOT NULL,
	[CorDAm] [decimal](28, 6) NOT NULL,
	[ACorDP] [decimal](28, 6) NOT NULL,
	[ACorDAm] [decimal](28, 6) NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[TransSt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[LastCAm] [decimal](28, 6) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CurCData] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CurCor]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CurCor](
	[LnNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[FrAcNo] [int] NOT NULL,
	[ToAcNo] [int] NOT NULL,
	[DbCurCR] [int] NOT NULL,
	[CrCurCR] [int] NOT NULL,
	[DbCurCB] [int] NOT NULL,
	[CrCurCB] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CurCor] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustBal](
	[CustNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTrnIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTrnCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CrIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrTrnIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrTrnCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OlIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OlCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClReIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClReCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClBaIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClBaCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cl3IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cl3Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__CustBal] PRIMARY KEY NONCLUSTERED 
(
	[CustNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustDocL]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustDocL](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[CustNo] [int] NOT NULL,
	[DocNo] [varchar](20) NOT NULL,
	[DocTp] [int] NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__CustDocL] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[PayedDt] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[Trn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[St] [tinyint] NOT NULL DEFAULT ((0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[ExcInt] [tinyint] NOT NULL DEFAULT ((0)),
	[IntRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurIntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntFrDt] [int] NOT NULL DEFAULT ((0)),
	[IntToDt] [int] NOT NULL DEFAULT ((0)),
	[ExcRem] [tinyint] NOT NULL DEFAULT ((0)),
	[Rems] [tinyint] NOT NULL DEFAULT ((0)),
	[RemRnNo] [int] NOT NULL DEFAULT ((0)),
	[GenAcNo] [int] NOT NULL DEFAULT ((0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DebDir] [tinyint] NOT NULL DEFAULT ((0)),
	[DebRnNo] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[FactRNo] [int] NOT NULL DEFAULT ((0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[CNAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WO] [tinyint] NOT NULL DEFAULT ((0)),
	[AcCPmtV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcDPmtV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[RemPrDt] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[PmVaCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTxCdP] [int] NOT NULL DEFAULT ((0)),
	[DbTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[PmtNo] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[ClIntFrD] [int] NOT NULL DEFAULT ((0)),
	[ClIntToD] [int] NOT NULL DEFAULT ((0)),
	[ClIntCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClIntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAmCD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[OrgDueDt] [int] NOT NULL DEFAULT ((0)),
	[FreeAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeCurA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LegRRNo] [int] NOT NULL DEFAULT ((0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[RemDocNo] [int] NOT NULL DEFAULT ((0)),
	[ClSugFrD] [int] NOT NULL DEFAULT ((0)),
	[ClSugToD] [int] NOT NULL DEFAULT ((0)),
	[ClSugCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClSugAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CRCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RemSt] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__CustTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DecFVar]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DecFVar](
	[NmSp] [varchar](40) NOT NULL,
	[VarNm] [varchar](40) NOT NULL,
	[Val1] [decimal](28, 6) NOT NULL,
	[Val2] [decimal](28, 6) NOT NULL,
	[Val3] [decimal](28, 6) NOT NULL,
	[Val4] [decimal](28, 6) NOT NULL,
	[Val5] [decimal](28, 6) NOT NULL,
	[Val6] [decimal](28, 6) NOT NULL,
	[Val7] [decimal](28, 6) NOT NULL,
	[Val8] [decimal](28, 6) NOT NULL,
	[Val9] [decimal](28, 6) NOT NULL,
	[Val10] [decimal](28, 6) NOT NULL,
	[Val11] [decimal](28, 6) NOT NULL,
	[Val12] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DecFVar] PRIMARY KEY NONCLUSTERED 
(
	[NmSp] ASC,
	[VarNm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DeclCd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeclCd](
	[DeclCd] [int] NOT NULL,
	[BPartNo] [int] NOT NULL,
	[DeclTxt] [varchar](40) NOT NULL,
	[BFormat] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[TxtProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DeclCd] PRIMARY KEY NONCLUSTERED 
(
	[DeclCd] ASC,
	[BPartNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelAd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelAd](
	[ActNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[DelActNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DelAd] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelAlt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelAlt](
	[ProdNo] [varchar](40) NOT NULL,
	[LnNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[SupProd] [varchar](40) NOT NULL DEFAULT (' '),
	[SupDescr] [varchar](60) NOT NULL DEFAULT (' '),
	[SrcCtry] [int] NOT NULL DEFAULT ((0)),
	[StPurcUn] [int] NOT NULL DEFAULT ((0)),
	[EcPurcQt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[DelTm] [smallint] NOT NULL DEFAULT ((0)),
	[FrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CusAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[FrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TanspTm] [smallint] NOT NULL DEFAULT ((0)),
	[Buyer] [int] NOT NULL DEFAULT ((0)),
	[Rsp1] [int] NOT NULL DEFAULT ((0)),
	[Rsp2] [int] NOT NULL DEFAULT ((0)),
	[AdmTm] [smallint] NOT NULL DEFAULT ((0)),
	[FrCusPro] [int] NOT NULL DEFAULT ((0)),
	[SupStock] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SupPrice] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntAd] [varchar](260) NOT NULL DEFAULT (' '),
	[Reg1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg5] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg6] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg7] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Reg8] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdTm] [smallint] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[DCstAdP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__DelAlt] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Delim]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Delim](
	[DelimG] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[KeyNo] [int] NOT NULL,
	[FrVal] [varchar](80) NOT NULL,
	[ToVal] [varchar](80) NOT NULL,
	[DelimPro] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Delim] PRIMARY KEY NONCLUSTERED 
(
	[DelimG] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelimG]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelimG](
	[DelimG] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DelimG] PRIMARY KEY NONCLUSTERED 
(
	[DelimG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DelTmBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DelTmBal](
	[ProdNo] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[DelDt] [int] NOT NULL,
	[InO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InHireO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInHireO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InLoanO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInLoanO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExpLoss] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CExpLoss] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InProdO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInProdO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InTrfO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInTrfO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[YrWk] [int] NOT NULL DEFAULT ((0)),
	[Conf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Sent] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DecOuts] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RsvOuts] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClosBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__DelTmBal] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[StcNo] ASC,
	[DelDt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Df]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Df](
	[DfNo] [int] NOT NULL,
	[Nm] [varchar](64) NOT NULL DEFAULT (' '),
	[GrLn] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[DCol] [int] NOT NULL DEFAULT ((0)),
	[RdId] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Df] PRIMARY KEY NONCLUSTERED 
(
	[DfNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DfLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DfLn](
	[DfNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Txt] [varchar](80) NOT NULL DEFAULT (' '),
	[AcGr] [varchar](500) NOT NULL DEFAULT (' '),
	[Sgn] [tinyint] NOT NULL DEFAULT ((0)),
	[PTrn] [tinyint] NOT NULL DEFAULT ((0)),
	[AcLn] [int] NOT NULL DEFAULT ((0)),
	[FFm] [varchar](64) NOT NULL DEFAULT (' '),
	[FSz] [int] NOT NULL DEFAULT ((0)),
	[FSt] [int] NOT NULL DEFAULT ((0)),
	[LnFl] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[NmSp] [varchar](40) NOT NULL DEFAULT (' '),
	[FreeTxt1] [varchar](20) NOT NULL DEFAULT (' '),
	[IndLvl] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[DfLnPrc] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__DfLn] PRIMARY KEY NONCLUSTERED 
(
	[DfNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doc](
	[DocNo] [int] NOT NULL,
	[VerNo] [int] NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[ProgNo] [int] NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[FileCrDt] [int] NOT NULL,
	[FileChDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Inc] [tinyint] NOT NULL,
	[DocGr] [int] NOT NULL,
	[CrActNo] [int] NOT NULL,
	[MainDoc] [int] NOT NULL,
	[WfId] [int] NOT NULL,
	[PLDNo] [int] NOT NULL,
	[PLDFlow] [int] NOT NULL,
	[Psw] [varchar](32) NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[TemplLnNo] [int] NOT NULL,
	[TemplTpNo] [int] NOT NULL,
	[RunNo] [int] NOT NULL,
	[Icon] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Doc] PRIMARY KEY CLUSTERED 
(
	[DocNo] ASC,
	[VerNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocLink]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocLink](
	[DocNo] [int] NOT NULL,
	[VerNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[OrdNo] [int] NOT NULL,
	[AgrActNo] [int] NOT NULL,
	[AgrNo] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[RsvNo] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[CrActNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[PropNo] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[DocGr] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DocLink] PRIMARY KEY CLUSTERED 
(
	[DocNo] ASC,
	[VerNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DstKey]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DstKey](
	[DstGr] [int] NOT NULL,
	[Descr] [varchar](40) NOT NULL,
	[SmR1] [decimal](28, 6) NOT NULL,
	[SmR2] [decimal](28, 6) NOT NULL,
	[SmR3] [decimal](28, 6) NOT NULL,
	[SmR4] [decimal](28, 6) NOT NULL,
	[SmR5] [decimal](28, 6) NOT NULL,
	[SmR6] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[SmR7] [decimal](28, 6) NOT NULL,
	[SmR8] [decimal](28, 6) NOT NULL,
	[SmR9] [decimal](28, 6) NOT NULL,
	[SmR10] [decimal](28, 6) NOT NULL,
	[SmR11] [decimal](28, 6) NOT NULL,
	[SmR12] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DstKey] PRIMARY KEY NONCLUSTERED 
(
	[DstGr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DstLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DstLn](
	[DstGr] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[Shr] [decimal](28, 6) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__DstLn] PRIMARY KEY NONCLUSTERED 
(
	[DstGr] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDIErr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDIErr](
	[SeqNo] [int] NOT NULL,
	[Txt] [varchar](100) NOT NULL,
	[Orig] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EDIErr] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EdiFormId]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EdiFormId](
	[FormId] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[XslFileNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[XsdFileNm] [varchar](260) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EdiFormId] PRIMARY KEY NONCLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDIMsg]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDIMsg](
	[MsgNm] [tinyint] NOT NULL,
	[Dir] [tinyint] NOT NULL,
	[Templ] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EDIMsg] PRIMARY KEY NONCLUSTERED 
(
	[MsgNm] ASC,
	[Dir] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDITrLog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDITrLog](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[DocTp] [int] NOT NULL,
	[DocSize] [int] NOT NULL,
	[TransSt] [int] NOT NULL,
	[DocNo] [varchar](40) NOT NULL,
	[NoOfSh] [int] NOT NULL,
	[OutMed] [varchar](50) NOT NULL,
	[TransID] [varchar](50) NOT NULL,
	[Party] [varchar](50) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[MsgID] [varchar](40) NOT NULL,
	[RetCd] [int] NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[StAsTxt] [varchar](48) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[FormId] [int] NOT NULL,
	[MsgTp] [tinyint] NOT NULL,
	[MsgLnNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EDITrLog] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDocInfo]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDocInfo](
	[MsgTp] [tinyint] NOT NULL,
	[LnNo] [int] NOT NULL,
	[FrServP] [varchar](24) NOT NULL,
	[ToServP] [varchar](24) NOT NULL,
	[WrFileNm] [varchar](260) NOT NULL,
	[RdFileNm] [varchar](260) NOT NULL,
	[PID] [int] NOT NULL,
	[RunSt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[Psw] [varchar](32) NOT NULL,
	[DocTp] [int] NOT NULL,
	[EdocProc] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[ProvURL] [varchar](260) NOT NULL,
	[DownPath] [varchar](260) NOT NULL,
	[UpPath] [varchar](260) NOT NULL,
	[FormId] [int] NOT NULL,
	[AcknPath] [varchar](260) NOT NULL,
	[Env] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EDocInfo] PRIMARY KEY NONCLUSTERED 
(
	[MsgTp] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDocLog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDocLog](
	[CreDate] [int] NOT NULL,
	[DySq] [int] NOT NULL,
	[RwSq] [int] NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[RejTr] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EDocLog] PRIMARY KEY NONCLUSTERED 
(
	[CreDate] ASC,
	[DySq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmlCfgFrm]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmlCfgFrm](
	[EmlCfgNo] [int] NOT NULL,
	[SmtpAd] [varchar](80) NOT NULL,
	[SmtpPort] [int] NOT NULL,
	[SmtpUser] [varchar](100) NOT NULL,
	[SmtpPass] [varchar](32) NOT NULL,
	[EmCoProc] [int] NOT NULL,
	[Bcc] [varchar](80) NOT NULL,
	[FromMail] [varchar](80) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EmlCfgFrm] PRIMARY KEY NONCLUSTERED 
(
	[EmlCfgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpPath]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpPath](
	[ActNo] [int] NOT NULL,
	[ProgNo] [int] NOT NULL,
	[ProgPath] [varchar](260) NOT NULL,
	[DataPath] [varchar](260) NOT NULL,
	[ProgLang] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EmpPath] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[ProgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmTpl]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmTpl](
	[EmTplNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[TmplType] [int] NOT NULL,
	[EmlTplGr] [int] NOT NULL,
	[FileDesc] [varchar](80) NOT NULL,
	[Bcc] [varchar](80) NOT NULL,
	[FromMail] [varchar](80) NOT NULL,
	[HtmlFile] [varbinary](max) NULL,
	[TxtFile] [varbinary](max) NULL,
 CONSTRAINT [PK__EmTpl] PRIMARY KEY NONCLUSTERED 
(
	[EmTplNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ErrLog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErrLog](
	[SeqNo] [int] NOT NULL,
	[ErrTp] [int] NOT NULL,
	[TabNo] [bigint] NOT NULL,
	[Data] [varchar](240) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[QNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ErrLog] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EsTxStmtL]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EsTxStmtL](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[EsTxStNo] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EsTxStmtL] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EsTxTrm]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EsTxTrm](
	[Yr] [smallint] NOT NULL,
	[EsTrmNo] [smallint] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[EsTxStNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__EsTxTrm] PRIMARY KEY NONCLUSTERED 
(
	[Yr] ASC,
	[EsTrmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExRt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExRt](
	[CurNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[SalesRt] [decimal](28, 6) NOT NULL,
	[CalcRt] [decimal](28, 6) NOT NULL,
	[PurcRt] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[EuRtEcb] [decimal](28, 6) NOT NULL,
 CONSTRAINT [PK__ExRt] PRIMARY KEY NONCLUSTERED 
(
	[CurNo] ASC,
	[FrDt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExRt2]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExRt2](
	[CurNo2] [int] NOT NULL,
	[CurNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[SalesRt] [decimal](28, 6) NOT NULL,
	[CalcRt] [decimal](28, 6) NOT NULL,
	[PurcRt] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ExRt2] PRIMARY KEY NONCLUSTERED 
(
	[CurNo2] ASC,
	[CurNo] ASC,
	[FrDt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtConf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtConf](
	[PK] [int] IDENTITY(1,1) NOT NULL,
	[MsgTp] [int] NOT NULL,
	[ObNm] [varchar](50) NOT NULL,
	[ObTxt] [varchar](50) NOT NULL,
	[ObNo] [int] NOT NULL,
	[PrgNo] [int] NOT NULL,
	[CfFl] [int] NOT NULL,
	[ExFrNo] [int] NOT NULL,
	[ExToNo] [int] NOT NULL,
	[InFrNo] [int] NOT NULL,
	[InToNo] [int] NOT NULL,
	[TbNm1] [varchar](50) NOT NULL,
	[TbNm2] [varchar](50) NOT NULL,
	[ColNm1] [varchar](50) NOT NULL,
	[Sep1] [char](1) NOT NULL,
	[ColNm2] [varchar](50) NOT NULL,
	[Sep2] [char](1) NOT NULL,
	[Exp1] [varchar](100) NOT NULL,
	[Exp2] [varchar](100) NOT NULL,
	[Exp3] [varchar](100) NOT NULL,
	[Exp4] [varchar](100) NOT NULL,
	[Txt1] [varchar](260) NOT NULL,
	[Txt2] [varchar](260) NOT NULL,
	[Txt3] [varchar](260) NOT NULL,
	[Txt4] [varchar](260) NOT NULL,
	[Gr1] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ExtConf] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FactComp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FactComp](
	[FCNo] [int] NOT NULL,
	[ImpFNm] [varchar](260) NOT NULL,
	[FactFNm] [varchar](260) NOT NULL,
	[LstRnDt] [int] NOT NULL,
	[LstRnNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[FactPro] [int] NOT NULL,
	[FactCust] [int] NOT NULL,
	[FactID] [varchar](6) NOT NULL,
	[CIDFact] [tinyint] NOT NULL,
	[FactCID] [varchar](128) NOT NULL,
	[CIDProc] [int] NOT NULL,
	[CIDCust] [tinyint] NOT NULL,
	[CIDRef] [tinyint] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[BGiro] [varchar](35) NOT NULL,
	[OCRAcB] [int] NOT NULL,
	[VoSr] [int] NOT NULL,
	[CIDFrm] [tinyint] NOT NULL,
	[RmtFeeAc] [int] NOT NULL,
	[CustNo] [varchar](20) NOT NULL,
	[AgAcNo] [int] NOT NULL,
	[BefDueDy] [smallint] NOT NULL,
	[RecpFile] [varchar](260) NOT NULL,
	[RecpImp] [varchar](260) NOT NULL,
	[ChgFile] [varchar](260) NOT NULL,
	[ChgImp] [varchar](260) NOT NULL,
	[PaymFile] [varchar](260) NOT NULL,
	[PaymImp] [varchar](260) NOT NULL,
	[CredDep1] [varchar](40) NOT NULL,
	[CredDep2] [varchar](40) NOT NULL,
	[SqlFltSP] [varchar](260) NOT NULL,
	[FrTxtReF] [varchar](260) NOT NULL,
	[BrkTxt1] [varchar](80) NOT NULL,
	[BrkTxt2] [varchar](80) NOT NULL,
	[DyBefDed] [int] NOT NULL,
	[DirDebSt] [int] NOT NULL,
	[LnInvSrc] [int] NOT NULL,
	[EftErrAc] [int] NOT NULL,
	[AgioVTp2] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__FactComp] PRIMARY KEY NONCLUSTERED 
(
	[FCNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormCh]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormCh](
	[LnNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[FromNo] [int] NOT NULL,
	[ToNo] [int] NOT NULL,
	[FormTp] [bigint] NOT NULL,
	[DocTp] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__FormCh] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeInf1]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreeInf1](
	[PK] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Cust] [int] NOT NULL,
	[Sup] [int] NOT NULL,
	[Emp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[StrLnNo] [int] NOT NULL,
	[DelLnNo] [int] NOT NULL,
	[StcNo] [int] NOT NULL,
	[OrdJNo] [int] NOT NULL,
	[ProdTrNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[VoJNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[BgNo] [int] NOT NULL,
	[BgLnNo] [int] NOT NULL,
	[AgrRefNo] [int] NOT NULL,
	[AcYr] [smallint] NOT NULL,
	[AcPr] [smallint] NOT NULL,
	[TxYr] [smallint] NOT NULL,
	[TxTrm] [smallint] NOT NULL,
	[StYrPr] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[BndLnNo] [int] NOT NULL,
	[FrInfTp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Txt1] [varchar](60) NOT NULL,
	[Txt2] [varchar](60) NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[Val1] [decimal](28, 6) NOT NULL,
	[Val2] [decimal](28, 6) NOT NULL,
	[Val3] [decimal](28, 6) NOT NULL,
	[Val4] [decimal](28, 6) NOT NULL,
	[Val5] [decimal](28, 6) NOT NULL,
	[Val6] [decimal](28, 6) NOT NULL,
	[Val7] [decimal](28, 6) NOT NULL,
	[Val8] [decimal](28, 6) NOT NULL,
	[Val9] [decimal](28, 6) NOT NULL,
	[Val10] [decimal](28, 6) NOT NULL,
	[Val11] [decimal](28, 6) NOT NULL,
	[Val12] [decimal](28, 6) NOT NULL,
	[Val13] [decimal](28, 6) NOT NULL,
	[Val14] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Txt3] [varchar](260) NOT NULL,
	[Txt4] [varchar](260) NOT NULL,
	[MainFrI1] [int] NOT NULL,
	[FreeInf2] [int] NOT NULL,
	[FreeInf3] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[InfCatNo] [int] NOT NULL,
	[PrCatNo] [int] NOT NULL,
	[Dt5] [int] NOT NULL,
	[Dt6] [int] NOT NULL,
	[Dt7] [int] NOT NULL,
	[Dt8] [int] NOT NULL,
	[Dt9] [int] NOT NULL,
	[Dt10] [int] NOT NULL,
	[Dt11] [int] NOT NULL,
	[Dt12] [int] NOT NULL,
	[Dt13] [int] NOT NULL,
	[Dt14] [int] NOT NULL,
	[PropNo] [int] NOT NULL,
	[PriceLn] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[FrInfTp2] [int] NOT NULL,
	[FrInfTp3] [int] NOT NULL,
	[Val15] [decimal](28, 6) NOT NULL,
	[Val16] [decimal](28, 6) NOT NULL,
	[Val17] [decimal](28, 6) NOT NULL,
	[Val18] [decimal](28, 6) NOT NULL,
	[Val19] [decimal](28, 6) NOT NULL,
	[Val20] [decimal](28, 6) NOT NULL,
	[Val21] [decimal](28, 6) NOT NULL,
	[Val22] [decimal](28, 6) NOT NULL,
	[Val23] [decimal](28, 6) NOT NULL,
	[Val24] [decimal](28, 6) NOT NULL,
	[Val25] [decimal](28, 6) NOT NULL,
	[Val26] [decimal](28, 6) NOT NULL,
	[Val27] [decimal](28, 6) NOT NULL,
	[Val28] [decimal](28, 6) NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[TsGrNo] [int] NOT NULL,
	[YrPr] [int] NOT NULL,
	[PrtSeqNo] [int] NOT NULL,
	[AdNo] [int] NOT NULL,
	[ProgNo] [int] NOT NULL,
	[TemplLnNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[DocVerNo] [int] NOT NULL,
	[DocLkLnNo] [int] NOT NULL,
	[BankLnNo] [int] NOT NULL,
	[PrxNo] [int] NOT NULL,
	[RealJNo] [int] NOT NULL,
	[RealLnNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__FreeInf1] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeInf2]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreeInf2](
	[PK] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Cust] [int] NOT NULL,
	[Sup] [int] NOT NULL,
	[Emp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[StrLnNo] [int] NOT NULL,
	[DelLnNo] [int] NOT NULL,
	[StcNo] [int] NOT NULL,
	[OrdJNo] [int] NOT NULL,
	[ProdTrNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[VoJNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[BgNo] [int] NOT NULL,
	[BgLnNo] [int] NOT NULL,
	[AgrRefNo] [int] NOT NULL,
	[AcYr] [smallint] NOT NULL,
	[AcPr] [smallint] NOT NULL,
	[TxYr] [smallint] NOT NULL,
	[TxTrm] [smallint] NOT NULL,
	[StYrPr] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[BndLnNo] [int] NOT NULL,
	[FrInfTp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Txt1] [varchar](60) NOT NULL,
	[Txt2] [varchar](60) NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[Val1] [decimal](28, 6) NOT NULL,
	[Val2] [decimal](28, 6) NOT NULL,
	[Val3] [decimal](28, 6) NOT NULL,
	[Val4] [decimal](28, 6) NOT NULL,
	[Val5] [decimal](28, 6) NOT NULL,
	[Val6] [decimal](28, 6) NOT NULL,
	[Val7] [decimal](28, 6) NOT NULL,
	[Val8] [decimal](28, 6) NOT NULL,
	[Val9] [decimal](28, 6) NOT NULL,
	[Val10] [decimal](28, 6) NOT NULL,
	[Val11] [decimal](28, 6) NOT NULL,
	[Val12] [decimal](28, 6) NOT NULL,
	[Val13] [decimal](28, 6) NOT NULL,
	[Val14] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Txt3] [varchar](260) NOT NULL,
	[Txt4] [varchar](260) NOT NULL,
	[FreeInf1] [int] NOT NULL,
	[MainFrI2] [int] NOT NULL,
	[FreeInf3] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[InfCatNo] [int] NOT NULL,
	[PrCatNo] [int] NOT NULL,
	[Dt5] [int] NOT NULL,
	[Dt6] [int] NOT NULL,
	[Dt7] [int] NOT NULL,
	[Dt8] [int] NOT NULL,
	[Dt9] [int] NOT NULL,
	[Dt10] [int] NOT NULL,
	[Dt11] [int] NOT NULL,
	[Dt12] [int] NOT NULL,
	[Dt13] [int] NOT NULL,
	[Dt14] [int] NOT NULL,
	[PropNo] [int] NOT NULL,
	[PriceLn] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[FrInfTp2] [int] NOT NULL,
	[FrInfTp3] [int] NOT NULL,
	[Val15] [decimal](28, 6) NOT NULL,
	[Val16] [decimal](28, 6) NOT NULL,
	[Val17] [decimal](28, 6) NOT NULL,
	[Val18] [decimal](28, 6) NOT NULL,
	[Val19] [decimal](28, 6) NOT NULL,
	[Val20] [decimal](28, 6) NOT NULL,
	[Val21] [decimal](28, 6) NOT NULL,
	[Val22] [decimal](28, 6) NOT NULL,
	[Val23] [decimal](28, 6) NOT NULL,
	[Val24] [decimal](28, 6) NOT NULL,
	[Val25] [decimal](28, 6) NOT NULL,
	[Val26] [decimal](28, 6) NOT NULL,
	[Val27] [decimal](28, 6) NOT NULL,
	[Val28] [decimal](28, 6) NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[TsGrNo] [int] NOT NULL,
	[YrPr] [int] NOT NULL,
	[PrtSeqNo] [int] NOT NULL,
	[AdNo] [int] NOT NULL,
	[ProgNo] [int] NOT NULL,
	[TemplLnNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[DocVerNo] [int] NOT NULL,
	[DocLkLnNo] [int] NOT NULL,
	[BankLnNo] [int] NOT NULL,
	[PrxNo] [int] NOT NULL,
	[RealJNo] [int] NOT NULL,
	[RealLnNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__FreeInf2] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FreeInf3]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FreeInf3](
	[PK] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Cust] [int] NOT NULL,
	[Sup] [int] NOT NULL,
	[Emp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[StrLnNo] [int] NOT NULL,
	[DelLnNo] [int] NOT NULL,
	[StcNo] [int] NOT NULL,
	[OrdJNo] [int] NOT NULL,
	[ProdTrNo] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[AcCl] [tinyint] NOT NULL,
	[VoJNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[BgNo] [int] NOT NULL,
	[BgLnNo] [int] NOT NULL,
	[AgrRefNo] [int] NOT NULL,
	[AcYr] [smallint] NOT NULL,
	[AcPr] [smallint] NOT NULL,
	[TxYr] [smallint] NOT NULL,
	[TxTrm] [smallint] NOT NULL,
	[StYrPr] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[BndLnNo] [int] NOT NULL,
	[FrInfTp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Txt1] [varchar](60) NOT NULL,
	[Txt2] [varchar](60) NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[Val1] [decimal](28, 6) NOT NULL,
	[Val2] [decimal](28, 6) NOT NULL,
	[Val3] [decimal](28, 6) NOT NULL,
	[Val4] [decimal](28, 6) NOT NULL,
	[Val5] [decimal](28, 6) NOT NULL,
	[Val6] [decimal](28, 6) NOT NULL,
	[Val7] [decimal](28, 6) NOT NULL,
	[Val8] [decimal](28, 6) NOT NULL,
	[Val9] [decimal](28, 6) NOT NULL,
	[Val10] [decimal](28, 6) NOT NULL,
	[Val11] [decimal](28, 6) NOT NULL,
	[Val12] [decimal](28, 6) NOT NULL,
	[Val13] [decimal](28, 6) NOT NULL,
	[Val14] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Txt3] [varchar](260) NOT NULL,
	[Txt4] [varchar](260) NOT NULL,
	[FreeInf1] [int] NOT NULL,
	[FreeInf2] [int] NOT NULL,
	[MainFrI3] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[InfCatNo] [int] NOT NULL,
	[PrCatNo] [int] NOT NULL,
	[Dt5] [int] NOT NULL,
	[Dt6] [int] NOT NULL,
	[Dt7] [int] NOT NULL,
	[Dt8] [int] NOT NULL,
	[Dt9] [int] NOT NULL,
	[Dt10] [int] NOT NULL,
	[Dt11] [int] NOT NULL,
	[Dt12] [int] NOT NULL,
	[Dt13] [int] NOT NULL,
	[Dt14] [int] NOT NULL,
	[PropNo] [int] NOT NULL,
	[PriceLn] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[FrInfTp2] [int] NOT NULL,
	[FrInfTp3] [int] NOT NULL,
	[Val15] [decimal](28, 6) NOT NULL,
	[Val16] [decimal](28, 6) NOT NULL,
	[Val17] [decimal](28, 6) NOT NULL,
	[Val18] [decimal](28, 6) NOT NULL,
	[Val19] [decimal](28, 6) NOT NULL,
	[Val20] [decimal](28, 6) NOT NULL,
	[Val21] [decimal](28, 6) NOT NULL,
	[Val22] [decimal](28, 6) NOT NULL,
	[Val23] [decimal](28, 6) NOT NULL,
	[Val24] [decimal](28, 6) NOT NULL,
	[Val25] [decimal](28, 6) NOT NULL,
	[Val26] [decimal](28, 6) NOT NULL,
	[Val27] [decimal](28, 6) NOT NULL,
	[Val28] [decimal](28, 6) NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[TsGrNo] [int] NOT NULL,
	[YrPr] [int] NOT NULL,
	[PrtSeqNo] [int] NOT NULL,
	[AdNo] [int] NOT NULL,
	[ProgNo] [int] NOT NULL,
	[TemplLnNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[DocVerNo] [int] NOT NULL,
	[DocLkLnNo] [int] NOT NULL,
	[BankLnNo] [int] NOT NULL,
	[PrxNo] [int] NOT NULL,
	[RealJNo] [int] NOT NULL,
	[RealLnNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__FreeInf3] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FrmData]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FrmData](
	[PK] [int] NOT NULL,
	[Ad1] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad2] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad3] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad4] [varchar](60) NOT NULL DEFAULT (' '),
	[PNo] [varchar](40) NOT NULL DEFAULT (' '),
	[PArea] [varchar](60) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[Lang] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[DomColNm] [varchar](20) NOT NULL DEFAULT (' '),
	[Phone] [varchar](20) NOT NULL DEFAULT (' '),
	[Fax] [varchar](20) NOT NULL DEFAULT (' '),
	[BGiro] [varchar](35) NOT NULL DEFAULT (' '),
	[PGiro] [varchar](35) NOT NULL DEFAULT (' '),
	[BsNo] [varchar](24) NOT NULL DEFAULT (' '),
	[CustAc] [int] NOT NULL DEFAULT ((0)),
	[SupAc] [int] NOT NULL DEFAULT ((0)),
	[TxSetAc] [int] NOT NULL DEFAULT ((0)),
	[OCRAcB] [int] NOT NULL DEFAULT ((0)),
	[OCRAcP] [int] NOT NULL DEFAULT ((0)),
	[RoundAc] [int] NOT NULL DEFAULT ((0)),
	[ErrAc] [int] NOT NULL DEFAULT ((0)),
	[AcDig] [tinyint] NOT NULL DEFAULT ((0)),
	[MaMt] [tinyint] NOT NULL DEFAULT ((0)),
	[VoNoChk] [tinyint] NOT NULL DEFAULT ((0)),
	[AmOnVo] [tinyint] NOT NULL DEFAULT ((0)),
	[DbCrChk] [int] NOT NULL DEFAULT ((0)),
	[CtrlInvo] [tinyint] NOT NULL DEFAULT ((0)),
	[AutTr] [tinyint] NOT NULL DEFAULT ((0)),
	[FstAcMth] [tinyint] NOT NULL DEFAULT ((0)),
	[Acc] [int] NOT NULL DEFAULT ((0)),
	[DBTrans] [int] NOT NULL DEFAULT ((0)),
	[NoOfDy] [smallint] NOT NULL DEFAULT ((0)),
	[NoOfDyBl] [smallint] NOT NULL DEFAULT ((0)),
	[StStc] [int] NOT NULL DEFAULT ((0)),
	[StProdGr] [int] NOT NULL DEFAULT ((0)),
	[StAcSet] [int] NOT NULL DEFAULT ((0)),
	[PrCrit] [int] NOT NULL DEFAULT ((0)),
	[PrCrit2] [int] NOT NULL DEFAULT ((0)),
	[PrCrit3] [int] NOT NULL DEFAULT ((0)),
	[OrdDtPr] [tinyint] NOT NULL DEFAULT ((0)),
	[ChDisc] [int] NOT NULL DEFAULT ((0)),
	[Vis] [int] NOT NULL DEFAULT ((0)),
	[DifProd] [varchar](40) NOT NULL DEFAULT (' '),
	[WorkWk] [tinyint] NOT NULL DEFAULT ((0)),
	[WorkYr] [smallint] NOT NULL DEFAULT ((0)),
	[DelFree] [int] NOT NULL DEFAULT ((0)),
	[PmtFree] [int] NOT NULL DEFAULT ((0)),
	[FreeHire] [int] NOT NULL DEFAULT ((0)),
	[PrNoCst] [int] NOT NULL DEFAULT ((0)),
	[AutVoSr] [int] NOT NULL DEFAULT ((0)),
	[AutEVoSr] [int] NOT NULL DEFAULT ((0)),
	[TaxVoSr] [int] NOT NULL DEFAULT ((0)),
	[GenVoSr] [int] NOT NULL DEFAULT ((0)),
	[NoteVoSr] [int] NOT NULL DEFAULT ((0)),
	[IntVoSr] [int] NOT NULL DEFAULT ((0)),
	[FeeVoSr] [int] NOT NULL DEFAULT ((0)),
	[RmtVoSr] [int] NOT NULL DEFAULT ((0)),
	[WageVoSr] [int] NOT NULL DEFAULT ((0)),
	[OCRVoSr] [int] NOT NULL DEFAULT ((0)),
	[WOVoSr] [int] NOT NULL DEFAULT ((0)),
	[InvoVoSr] [int] NOT NULL DEFAULT ((0)),
	[CrNtVoSr] [int] NOT NULL DEFAULT ((0)),
	[SaleVoSr] [int] NOT NULL DEFAULT ((0)),
	[ConVoSr] [int] NOT NULL DEFAULT ((0)),
	[PacVoSr] [int] NOT NULL DEFAULT ((0)),
	[PicVoSr] [int] NOT NULL DEFAULT ((0)),
	[DelVoSr] [int] NOT NULL DEFAULT ((0)),
	[CfVoSr] [int] NOT NULL DEFAULT ((0)),
	[OfVoSr] [int] NOT NULL DEFAULT ((0)),
	[PuOrVoSr] [int] NOT NULL DEFAULT ((0)),
	[PrPuVoSr] [int] NOT NULL DEFAULT ((0)),
	[InqVoSr] [int] NOT NULL DEFAULT ((0)),
	[ProdVoSr] [int] NOT NULL DEFAULT ((0)),
	[RepVoSr] [int] NOT NULL DEFAULT ((0)),
	[CorVoSr] [int] NOT NULL DEFAULT ((0)),
	[EDIVoSr] [int] NOT NULL DEFAULT ((0)),
	[AgioVoTp] [int] NOT NULL DEFAULT ((0)),
	[Ovr] [tinyint] NOT NULL DEFAULT ((0)),
	[DebGiro] [varchar](35) NOT NULL DEFAULT (' '),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[FactCust] [int] NOT NULL DEFAULT ((0)),
	[FactID] [varchar](6) NOT NULL DEFAULT (' '),
	[R1Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R2Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R3Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R4Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R5Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R6Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[AgrOrdTp] [tinyint] NOT NULL DEFAULT ((0)),
	[MailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[CIDCust] [tinyint] NOT NULL DEFAULT ((0)),
	[CIDFact] [tinyint] NOT NULL DEFAULT ((0)),
	[CIDRef] [tinyint] NOT NULL DEFAULT ((0)),
	[ExPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExAc] [int] NOT NULL DEFAULT ((0)),
	[OblTxt1] [int] NOT NULL DEFAULT ((0)),
	[OblTxt2] [int] NOT NULL DEFAULT ((0)),
	[OblTxt3] [int] NOT NULL DEFAULT ((0)),
	[OblTxt4] [int] NOT NULL DEFAULT ((0)),
	[OblTxt5] [int] NOT NULL DEFAULT ((0)),
	[OblTxt6] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[UpdCst] [tinyint] NOT NULL DEFAULT ((0)),
	[RsvOnRe] [int] NOT NULL DEFAULT ((0)),
	[CrCtrl] [int] NOT NULL DEFAULT ((0)),
	[MaxDueP] [smallint] NOT NULL DEFAULT ((0)),
	[MaxDueDy] [smallint] NOT NULL DEFAULT ((0)),
	[FrProd] [varchar](40) NOT NULL DEFAULT (' '),
	[Fr2Prod] [varchar](40) NOT NULL DEFAULT (' '),
	[Fr3Prod] [varchar](40) NOT NULL DEFAULT (' '),
	[Fr4Prod] [varchar](40) NOT NULL DEFAULT (' '),
	[CusProd] [varchar](40) NOT NULL DEFAULT (' '),
	[RecCfDt] [int] NOT NULL DEFAULT ((0)),
	[MTxTrm] [tinyint] NOT NULL DEFAULT ((0)),
	[GAmLang] [tinyint] NOT NULL DEFAULT ((0)),
	[IntAd] [varchar](260) NOT NULL DEFAULT (' '),
	[CrInvFee] [tinyint] NOT NULL DEFAULT ((0)),
	[IntDy] [tinyint] NOT NULL DEFAULT ((0)),
	[PrRepP] [int] NOT NULL DEFAULT ((0)),
	[CompVoTp] [int] NOT NULL DEFAULT ((0)),
	[MinMrg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DiscSug] [int] NOT NULL DEFAULT ((0)),
	[CIDProc] [int] NOT NULL DEFAULT ((0)),
	[SvOrdSP] [varchar](20) NOT NULL DEFAULT (' '),
	[EUROCur] [int] NOT NULL DEFAULT ((0)),
	[ConCur] [int] NOT NULL DEFAULT ((0)),
	[AgioAcGr] [varchar](60) NOT NULL DEFAULT (' '),
	[EDIProc] [int] NOT NULL DEFAULT ((0)),
	[EDIAc] [int] NOT NULL DEFAULT ((0)),
	[PrGrSmF] [tinyint] NOT NULL DEFAULT ((0)),
	[DifProd2] [varchar](40) NOT NULL DEFAULT (' '),
	[EUTaxNo] [varchar](24) NOT NULL DEFAULT (' '),
	[TrPrSer] [tinyint] NOT NULL DEFAULT ((0)),
	[IncVoSr] [int] NOT NULL DEFAULT ((0)),
	[OrdRNo] [tinyint] NOT NULL DEFAULT ((0)),
	[PrCrit21] [int] NOT NULL DEFAULT ((0)),
	[PrCrit22] [int] NOT NULL DEFAULT ((0)),
	[PrCrit23] [int] NOT NULL DEFAULT ((0)),
	[IntInvVoS] [int] NOT NULL DEFAULT ((0)),
	[IntInvAc] [int] NOT NULL DEFAULT ((0)),
	[CshDcPro] [int] NOT NULL DEFAULT ((0)),
	[FactCID] [varchar](128) NOT NULL DEFAULT (' '),
	[FaxPre] [varchar](15) NOT NULL DEFAULT (' '),
	[FaxSuf] [varchar](30) NOT NULL DEFAULT (' '),
	[OneShp] [tinyint] NOT NULL DEFAULT ((0)),
	[NxtOrdNo] [tinyint] NOT NULL DEFAULT ((0)),
	[StPmtTrm] [int] NOT NULL DEFAULT ((0)),
	[VoValPro] [int] NOT NULL DEFAULT ((0)),
	[OrdPro] [int] NOT NULL DEFAULT ((0)),
	[OrdDPro] [int] NOT NULL DEFAULT ((0)),
	[InvRPro] [tinyint] NOT NULL DEFAULT ((0)),
	[OlAcNo] [int] NOT NULL DEFAULT ((0)),
	[ClReAcNo] [int] NOT NULL DEFAULT ((0)),
	[ClBaAcNo] [int] NOT NULL DEFAULT ((0)),
	[QtyDcm] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtVAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtVP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtVAc] [int] NOT NULL DEFAULT ((0)),
	[CstDy] [smallint] NOT NULL DEFAULT ((0)),
	[SupDy] [smallint] NOT NULL DEFAULT ((0)),
	[GenDy] [smallint] NOT NULL DEFAULT ((0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[OnAcProd] [varchar](40) NOT NULL DEFAULT (' '),
	[SetlProd] [varchar](40) NOT NULL DEFAULT (' '),
	[DigSuit] [tinyint] NOT NULL DEFAULT ((0)),
	[SepSuit] [char](3) NOT NULL DEFAULT (' '),
	[AccPro] [int] NOT NULL DEFAULT ((0)),
	[PmtVVoSr] [int] NOT NULL DEFAULT ((0)),
	[OpBankAc] [int] NOT NULL DEFAULT ((0)),
	[ClRe2Ac] [int] NOT NULL DEFAULT ((0)),
	[VoNoJNo] [int] NOT NULL DEFAULT ((0)),
	[PurcGPro] [int] NOT NULL DEFAULT ((0)),
	[CrmPro] [int] NOT NULL DEFAULT ((0)),
	[TspAgPro] [int] NOT NULL DEFAULT ((0)),
	[ChIvVoSr] [int] NOT NULL DEFAULT ((0)),
	[ComPro] [int] NOT NULL DEFAULT ((0)),
	[ChkVoSr] [int] NOT NULL DEFAULT ((0)),
	[R7Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R8Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R9Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R10Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R11Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[R12Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[WkFmt] [tinyint] NOT NULL DEFAULT ((0)),
	[ActVoSr] [int] NOT NULL DEFAULT ((0)),
	[RemVoSr] [int] NOT NULL DEFAULT ((0)),
	[PmtVAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtVP2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtVAc2] [int] NOT NULL DEFAULT ((0)),
	[ClIntAc] [int] NOT NULL DEFAULT ((0)),
	[ClIntVoS] [int] NOT NULL DEFAULT ((0)),
	[OutsTxAc] [int] NOT NULL DEFAULT ((0)),
	[MaxCurCP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MaxCurCA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCVoSr] [int] NOT NULL DEFAULT ((0)),
	[IntProd] [varchar](40) NOT NULL DEFAULT (' '),
	[PDFPath] [varchar](260) NOT NULL DEFAULT (' '),
	[PerDbAc] [int] NOT NULL DEFAULT ((0)),
	[PerCrAc] [int] NOT NULL DEFAULT ((0)),
	[OrdPro2] [int] NOT NULL DEFAULT ((0)),
	[TmZn] [int] NOT NULL DEFAULT ((0)),
	[StdTSGr] [int] NOT NULL DEFAULT ((0)),
	[DefFCNo] [int] NOT NULL DEFAULT ((0)),
	[ClRe3Ac] [int] NOT NULL DEFAULT ((0)),
	[DeCl1Pr] [varchar](40) NOT NULL DEFAULT (' '),
	[DeCl2Pr] [varchar](40) NOT NULL DEFAULT (' '),
	[DeCl3Pr] [varchar](40) NOT NULL DEFAULT (' '),
	[ClRNo] [tinyint] NOT NULL DEFAULT ((0)),
	[MstRspUF] [int] NOT NULL DEFAULT ((0)),
	[EANLocCd] [varchar](40) NOT NULL DEFAULT (' '),
	[AccPro2] [int] NOT NULL DEFAULT ((0)),
	[FaxMPro] [int] NOT NULL DEFAULT ((0)),
	[FaxMPro2] [int] NOT NULL DEFAULT ((0)),
	[CIDFrm] [tinyint] NOT NULL DEFAULT ((0)),
	[MinCIntA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DocCp] [int] NOT NULL DEFAULT ((0)),
	[RSrtATO] [int] NOT NULL DEFAULT ((0)),
	[VstActNo] [int] NOT NULL DEFAULT ((0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[IBAN] [varchar](35) NOT NULL DEFAULT (' '),
	[CBndProc] [int] NOT NULL DEFAULT ((0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[PrSSVoSr] [int] NOT NULL DEFAULT ((0)),
	[PPurVoSr] [int] NOT NULL DEFAULT ((0)),
	[ExWeb] [int] NOT NULL DEFAULT ((0)),
	[MemoFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[AcMailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[AcNm] [varchar](80) NOT NULL DEFAULT (' '),
	[BsNo2] [varchar](24) NOT NULL DEFAULT (' '),
	[AcNoFmt] [varchar](20) NOT NULL DEFAULT (' '),
	[StdFCNo] [int] NOT NULL DEFAULT ((0)),
	[StdBPrt] [int] NOT NULL DEFAULT ((0)),
	[PerVoSr] [int] NOT NULL DEFAULT ((0)),
	[PerVoTp] [int] NOT NULL DEFAULT ((0)),
	[CardUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[CardPwd] [varchar](32) NOT NULL DEFAULT (' '),
	[ExValSt1] [int] NOT NULL DEFAULT ((0)),
	[ExValSt2] [int] NOT NULL DEFAULT ((0)),
	[ExValSt3] [int] NOT NULL DEFAULT ((0)),
	[ExValSt4] [int] NOT NULL DEFAULT ((0)),
	[StLoc] [varchar](18) NOT NULL DEFAULT (' '),
	[PrAcSrchPr] [int] NOT NULL DEFAULT ((0)),
	[PrDcPro] [int] NOT NULL DEFAULT ((0)),
	[DfChCuNo] [int] NOT NULL DEFAULT ((0)),
	[OffAmLmt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Acc2] [int] NOT NULL DEFAULT ((0)),
	[Acc3] [int] NOT NULL DEFAULT ((0)),
	[MavCompId] [varchar](40) NOT NULL DEFAULT (' '),
	[MavDefKey] [varchar](40) NOT NULL DEFAULT (' '),
	[OrgTp] [varchar](50) NOT NULL DEFAULT (' '),
	[OrdAttProc] [int] NOT NULL DEFAULT ((0)),
	[StcCntAcSet] [int] NOT NULL DEFAULT ((0)),
	[GiroTp] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[TaxEx] [varchar](40) NOT NULL DEFAULT (' '),
	[TaxRegAd] [varchar](40) NOT NULL DEFAULT (' '),
	[ApSigKey] [varchar](40) NOT NULL DEFAULT (' '),
	[EsTaxNo] [varchar](24) NOT NULL DEFAULT (' '),
	[EsTaxVoSr] [int] NOT NULL DEFAULT ((0)),
	[EsTxSetAc] [int] NOT NULL DEFAULT ((0)),
	[OblTxt7] [int] NOT NULL DEFAULT ((0)),
	[OblTxt8] [int] NOT NULL DEFAULT ((0)),
	[SwftCd] [varchar](11) NOT NULL DEFAULT (' '),
	[AiPro] [int] NOT NULL DEFAULT ((0)),
	[AgVoTpCu] [int] NOT NULL DEFAULT ((0)),
	[AgVoTpSu] [int] NOT NULL DEFAULT ((0)),
	[AgCustSr] [int] NOT NULL DEFAULT ((0)),
	[AgSupSr] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__FrmData] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hol]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hol](
	[LnNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[FrTm] [smallint] NOT NULL,
	[ToDt] [int] NOT NULL,
	[ToTm] [smallint] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Opt] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[HolFl] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Hol] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ind]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ind](
	[TabNo] [bigint] NOT NULL,
	[IndNo] [int] NOT NULL,
	[SeqNo] [int] NOT NULL,
	[ColNo] [bigint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Ind] PRIMARY KEY NONCLUSTERED 
(
	[TabNo] ASC,
	[IndNo] ASC,
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InfNeed]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InfNeed](
	[SeqNo] [int] NOT NULL,
	[InfTp] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[InfCat] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__InfNeed] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InfTp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InfTp](
	[InfTp] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[AgInfTp] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__InfTp] PRIMARY KEY NONCLUSTERED 
(
	[InfTp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IntFVar]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IntFVar](
	[NmSp] [varchar](40) NOT NULL,
	[VarNm] [varchar](40) NOT NULL,
	[Val1] [int] NOT NULL,
	[Val2] [int] NOT NULL,
	[Val3] [int] NOT NULL,
	[Val4] [int] NOT NULL,
	[Val5] [int] NOT NULL,
	[Val6] [int] NOT NULL,
	[Val7] [int] NOT NULL,
	[Val8] [int] NOT NULL,
	[Val9] [int] NOT NULL,
	[Val10] [int] NOT NULL,
	[Val11] [int] NOT NULL,
	[Val12] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__IntFVar] PRIMARY KEY NONCLUSTERED 
(
	[NmSp] ASC,
	[VarNm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IntLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IntLn](
	[CustNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[OnOrdNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__IntLn] PRIMARY KEY NONCLUSTERED 
(
	[CustNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IntRt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IntRt](
	[FrDt] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[IntGr] [int] NOT NULL,
	[MinAm] [decimal](28, 6) NOT NULL,
	[IntRt] [decimal](28, 6) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[IntTp] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__IntRt] PRIMARY KEY NONCLUSTERED 
(
	[FrDt] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvTx]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvTx](
	[InvTxNo] [int] NOT NULL,
	[Rt] [decimal](28, 6) NOT NULL,
	[InvTxAc] [int] NOT NULL,
	[BasAc] [int] NOT NULL,
	[AfterDt] [int] NOT NULL,
	[NewRt] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__InvTx] PRIMARY KEY NONCLUSTERED 
(
	[InvTxNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemLoc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemLoc](
	[ProdNo] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[Loc] [varchar](18) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[LocInf1] [varchar](22) NOT NULL,
	[MaxQtyUn] [decimal](28, 6) NOT NULL,
	[ItmLocProc] [int] NOT NULL,
	[Cntable] [decimal](28, 6) NOT NULL,
	[CntGr] [int] NOT NULL,
	[LstCntDt] [int] NOT NULL,
	[CntBy] [varchar](24) NOT NULL,
	[CntDf] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ItemLoc] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[StcNo] ASC,
	[Loc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobDstCmd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JobDstCmd](
	[JobNo] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Dest] [varchar](20) NOT NULL,
	[Data] [varchar](50) NOT NULL,
	[JobDSt] [int] NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__JobDstCmd] PRIMARY KEY NONCLUSTERED 
(
	[JobNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lang]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lang](
	[LangNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[AddDescr] [tinyint] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Lang] PRIMARY KEY NONCLUSTERED 
(
	[LangNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loc](
	[StcNo] [int] NOT NULL,
	[Loc] [varchar](18) NOT NULL,
	[PhysLoc] [varchar](18) NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[LocProc] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[Lgt] [decimal](28, 6) NOT NULL,
	[Wdt] [decimal](28, 6) NOT NULL,
	[Hgt] [decimal](28, 6) NOT NULL,
	[Area] [decimal](28, 6) NOT NULL,
	[Volume] [decimal](28, 6) NOT NULL,
	[Wgt] [decimal](28, 6) NOT NULL,
	[UsdVol] [decimal](28, 6) NOT NULL,
	[UsdWgt] [decimal](28, 6) NOT NULL,
	[UsdQty] [decimal](28, 6) NOT NULL,
	[FreeVol] [decimal](28, 6) NOT NULL,
	[FreeWgt] [decimal](28, 6) NOT NULL,
	[FreeQty] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Loc] PRIMARY KEY NONCLUSTERED 
(
	[StcNo] ASC,
	[Loc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaCustTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaCustTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[AgJNo] [int] NOT NULL,
	[AgEntNo] [int] NOT NULL,
	[PayedDt] [int] NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[InCurAm] [decimal](28, 6) NOT NULL,
	[CurIntAm] [decimal](28, 6) NOT NULL,
	[IntAm] [decimal](28, 6) NOT NULL,
	[IntFrDt] [int] NOT NULL,
	[IntToDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__MaCustTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC,
	[AgJNo] ASC,
	[AgEntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaSupTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaSupTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[AgJNo] [int] NOT NULL,
	[AgEntNo] [int] NOT NULL,
	[PayedDt] [int] NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[InCurAm] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__MaSupTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC,
	[AgJNo] ASC,
	[AgEntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgFrom]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgFrom](
	[MsgNo] [int] NOT NULL,
	[MsgTo] [varchar](260) NOT NULL,
	[MsgFrom] [varchar](260) NOT NULL,
	[Type] [varchar](260) NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[Body] [varchar](260) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__MsgFrom] PRIMARY KEY NONCLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgTo]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgTo](
	[MsgNo] [int] NOT NULL,
	[MsgTo] [varchar](260) NOT NULL,
	[MsgFrom] [varchar](260) NOT NULL,
	[Type] [varchar](260) NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[Body] [varchar](260) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__MsgTo] PRIMARY KEY NONCLUSTERED 
(
	[MsgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mst]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mst](
	[PK] [int] NOT NULL,
	[MDt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Mst] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MtInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MtInf](
	[PK] [int] NOT NULL,
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[MetaInf] [varbinary](max) NULL,
	[ContrInf] [varbinary](max) NULL,
 CONSTRAINT [PK__MtInf] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NoSr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NoSr](
	[NoSrNo] [int] NOT NULL,
	[FrNo] [int] NOT NULL,
	[ToNo] [int] NOT NULL,
	[Rsv] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__NoSr] PRIMARY KEY NONCLUSTERED 
(
	[NoSrNo] ASC,
	[FrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NtfCd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NtfCd](
	[NtfCd] [char](5) NOT NULL,
	[BPartNo] [int] NOT NULL,
	[NtfTxt] [varchar](25) NOT NULL,
	[BFormat] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[NtfProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__NtfCd] PRIMARY KEY NONCLUSTERED 
(
	[NtfCd] ASC,
	[BPartNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OpCustTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpCustTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[PayedDt] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[Trn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[St] [tinyint] NOT NULL DEFAULT ((0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[ExcInt] [tinyint] NOT NULL DEFAULT ((0)),
	[IntRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurIntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IntFrDt] [int] NOT NULL DEFAULT ((0)),
	[IntToDt] [int] NOT NULL DEFAULT ((0)),
	[ExcRem] [tinyint] NOT NULL DEFAULT ((0)),
	[Rems] [tinyint] NOT NULL DEFAULT ((0)),
	[RemRnNo] [int] NOT NULL DEFAULT ((0)),
	[GenAcNo] [int] NOT NULL DEFAULT ((0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DebDir] [tinyint] NOT NULL DEFAULT ((0)),
	[DebRnNo] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[FactRNo] [int] NOT NULL DEFAULT ((0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[CNAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WO] [tinyint] NOT NULL DEFAULT ((0)),
	[AcCPmtV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcDPmtV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[RemPrDt] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[PmVaCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTxCdP] [int] NOT NULL DEFAULT ((0)),
	[DbTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[PmtNo] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[ClIntFrD] [int] NOT NULL DEFAULT ((0)),
	[ClIntToD] [int] NOT NULL DEFAULT ((0)),
	[ClIntCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClIntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAmCD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[OrgDueDt] [int] NOT NULL DEFAULT ((0)),
	[FreeAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeCurA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LegRRNo] [int] NOT NULL DEFAULT ((0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[RemDocNo] [int] NOT NULL DEFAULT ((0)),
	[ClSugFrD] [int] NOT NULL DEFAULT ((0)),
	[ClSugToD] [int] NOT NULL DEFAULT ((0)),
	[ClSugCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClSugAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CRCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RemSt] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__OpCustTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OpSupTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OpSupTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[PayedDt] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[Purc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[St] [tinyint] NOT NULL DEFAULT ((0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[Att] [int] NOT NULL DEFAULT ((0)),
	[AttDt1] [int] NOT NULL DEFAULT ((0)),
	[AttDt2] [int] NOT NULL DEFAULT ((0)),
	[ExcRmt] [tinyint] NOT NULL DEFAULT ((0)),
	[EstPayDt] [int] NOT NULL DEFAULT ((0)),
	[RmtRnNo] [int] NOT NULL DEFAULT ((0)),
	[GenAcNo] [int] NOT NULL DEFAULT ((0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[AttVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[EFT1] [int] NOT NULL DEFAULT ((0)),
	[EFT2] [int] NOT NULL DEFAULT ((0)),
	[EFT3] [int] NOT NULL DEFAULT ((0)),
	[EFT4] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BPmtNo] [int] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[CNAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GiroChSm] [int] NOT NULL DEFAULT ((0)),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[BankAcLn] [int] NOT NULL DEFAULT ((0)),
	[PmtCur] [int] NOT NULL DEFAULT ((0)),
	[TrfExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RemCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CRCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EftFrmTp] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__OpSupTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ord]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ord](
	[OrdNo] [int] NOT NULL,
	[TrTp] [tinyint] NOT NULL DEFAULT ((0)),
	[OrdTp] [tinyint] NOT NULL DEFAULT ((0)),
	[OrdDt] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Ad1] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad2] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad3] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad4] [varchar](60) NOT NULL DEFAULT (' '),
	[PNo] [varchar](40) NOT NULL DEFAULT (' '),
	[PArea] [varchar](60) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[Lang] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[SelBuy] [int] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[TransGr] [int] NOT NULL DEFAULT ((0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[OrdBasNo] [int] NOT NULL DEFAULT ((0)),
	[OrdPrGr] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[TotDcP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TotDcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TotDcDAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ObVatNo] [int] NOT NULL DEFAULT ((0)),
	[ExVat] [tinyint] NOT NULL DEFAULT ((0)),
	[ExSpc] [tinyint] NOT NULL DEFAULT ((0)),
	[NOrdSum] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DNOrdSum] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DVatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdSum] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdSumT] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DOrdSum] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DOrdSumT] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CtrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[DelNm] [varchar](80) NOT NULL DEFAULT (' '),
	[DelAd1] [varchar](60) NOT NULL DEFAULT (' '),
	[DelAd2] [varchar](60) NOT NULL DEFAULT (' '),
	[DelAd3] [varchar](60) NOT NULL DEFAULT (' '),
	[DelAd4] [varchar](60) NOT NULL DEFAULT (' '),
	[DelPNo] [varchar](40) NOT NULL DEFAULT (' '),
	[DelPArea] [varchar](60) NOT NULL DEFAULT (' '),
	[DelCtry] [int] NOT NULL DEFAULT ((0)),
	[DelLang] [int] NOT NULL DEFAULT ((0)),
	[FrStc] [int] NOT NULL DEFAULT ((0)),
	[ToStc] [int] NOT NULL DEFAULT ((0)),
	[DelTrm] [int] NOT NULL DEFAULT ((0)),
	[DelMt] [int] NOT NULL DEFAULT ((0)),
	[ConsNo] [varchar](18) NOT NULL DEFAULT (' '),
	[FrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PstAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelDt] [int] NOT NULL DEFAULT ((0)),
	[CfDelDt] [int] NOT NULL DEFAULT ((0)),
	[Label] [varchar](20) NOT NULL DEFAULT (' '),
	[OurRef] [varchar](20) NOT NULL DEFAULT (' '),
	[YrRef] [varchar](20) NOT NULL DEFAULT (' '),
	[ReqNo] [varchar](20) NOT NULL DEFAULT (' '),
	[InvoCust] [int] NOT NULL DEFAULT ((0)),
	[RmtSup] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[InvoPl] [tinyint] NOT NULL DEFAULT ((0)),
	[FactNo] [varchar](24) NOT NULL DEFAULT (' '),
	[InvoRef] [varchar](20) NOT NULL DEFAULT (' '),
	[ExOrdPrc] [int] NOT NULL DEFAULT ((0)),
	[OrdPrSt] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[InvoAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LstSetDt] [int] NOT NULL DEFAULT ((0)),
	[LstInvDt] [int] NOT NULL DEFAULT ((0)),
	[ExPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EdSt] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Dupl] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[DelPri] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[Trunc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DTrunc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Package] [int] NOT NULL DEFAULT ((0)),
	[SpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DSpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DInvoIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstCur] [int] NOT NULL DEFAULT ((0)),
	[CstExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SaleCstP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MainOrd] [int] NOT NULL DEFAULT ((0)),
	[ERetDt] [int] NOT NULL DEFAULT ((0)),
	[TransGr2] [int] NOT NULL DEFAULT ((0)),
	[VoSr] [int] NOT NULL DEFAULT ((0)),
	[InqCnt] [int] NOT NULL DEFAULT ((0)),
	[PurcCnt] [int] NOT NULL DEFAULT ((0)),
	[OfCnt] [int] NOT NULL DEFAULT ((0)),
	[CfCnt] [int] NOT NULL DEFAULT ((0)),
	[PicCnt] [int] NOT NULL DEFAULT ((0)),
	[PacCnt] [int] NOT NULL DEFAULT ((0)),
	[ConCnt] [int] NOT NULL DEFAULT ((0)),
	[InvoCnt] [int] NOT NULL DEFAULT ((0)),
	[DtyFrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DDtyFrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ArDt] [int] NOT NULL DEFAULT ((0)),
	[DifProd] [varchar](40) NOT NULL DEFAULT (' '),
	[DCtrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[PrSup] [int] NOT NULL DEFAULT ((0)),
	[SPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdPref] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[NWgt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Tare] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Lgt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Area] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Vol] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSOrdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[FinBy] [varchar](24) NOT NULL DEFAULT (' '),
	[NoUn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[TransGr3] [int] NOT NULL DEFAULT ((0)),
	[TransGr4] [int] NOT NULL DEFAULT ((0)),
	[ConNo] [int] NOT NULL DEFAULT ((0)),
	[PacNo] [int] NOT NULL DEFAULT ((0)),
	[PicNo] [int] NOT NULL DEFAULT ((0)),
	[CfNo] [int] NOT NULL DEFAULT ((0)),
	[OfNo] [int] NOT NULL DEFAULT ((0)),
	[PurcNo] [int] NOT NULL DEFAULT ((0)),
	[InqNo] [int] NOT NULL DEFAULT ((0)),
	[EDISt] [int] NOT NULL DEFAULT ((0)),
	[OrdBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DOrdBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LiaActNo] [int] NOT NULL DEFAULT ((0)),
	[FCfDelDt] [int] NOT NULL DEFAULT ((0)),
	[RlDelDt] [int] NOT NULL DEFAULT ((0)),
	[OrdPrSt2] [int] NOT NULL DEFAULT ((0)),
	[TestRes] [int] NOT NULL DEFAULT ((0)),
	[DocSMt] [int] NOT NULL DEFAULT ((0)),
	[IgnTest] [tinyint] NOT NULL DEFAULT ((0)),
	[FrCusPro] [int] NOT NULL DEFAULT ((0)),
	[FinDt] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [int] NOT NULL DEFAULT ((0)),
	[ProdCnt] [int] NOT NULL DEFAULT ((0)),
	[GWgtTot] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[GWgtCoSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OvCNOSm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DepDt] [int] NOT NULL DEFAULT ((0)),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[TspAgrNo] [int] NOT NULL DEFAULT ((0)),
	[FinWgt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TonRt] [tinyint] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[DocSMt2] [int] NOT NULL DEFAULT ((0)),
	[LiaAct2] [int] NOT NULL DEFAULT ((0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[DesProDt] [int] NOT NULL DEFAULT ((0)),
	[FCNo] [int] NOT NULL DEFAULT ((0)),
	[ShpActNo] [int] NOT NULL DEFAULT ((0)),
	[InvRPro] [tinyint] NOT NULL DEFAULT ((0)),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[DelVisPN] [varchar](40) NOT NULL DEFAULT (' '),
	[DelVisPA] [varchar](60) NOT NULL DEFAULT (' '),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[StrtPer] [int] NOT NULL DEFAULT ((0)),
	[PStYrPr] [int] NOT NULL DEFAULT ((0)),
	[PEnYrPr] [int] NOT NULL DEFAULT ((0)),
	[DCstDf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCstDfSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCstAdSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CardNm] [varchar](80) NOT NULL DEFAULT (' '),
	[CardAc] [varchar](35) NOT NULL DEFAULT (' '),
	[InvoTxSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
 CONSTRAINT [PK__Ord] PRIMARY KEY CLUSTERED 
(
	[OrdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdAtt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdAtt](
	[OrdNo] [int] NOT NULL,
	[AttNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[Descr] [varchar](250) NOT NULL,
	[OrdAttProc] [int] NOT NULL,
	[FileTp] [int] NOT NULL,
	[SrcFNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[FileData] [varbinary](max) NULL,
 CONSTRAINT [PK__OrdAtt] PRIMARY KEY NONCLUSTERED 
(
	[OrdNo] ASC,
	[AttNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdBas]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdBas](
	[OrdDBNo] [int] NOT NULL,
	[OrdSeqNo] [int] NOT NULL,
	[Stat] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[NOrdSum] [decimal](28, 6) NOT NULL,
	[FrAm] [decimal](28, 6) NOT NULL,
	[ExclVatAm] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[VatBasAm] [decimal](28, 6) NOT NULL,
	[VatFreeAm] [decimal](28, 6) NOT NULL,
	[InclVatAm] [decimal](28, 6) NOT NULL,
	[CfDelDt] [int] NOT NULL,
	[DelDt] [int] NOT NULL,
	[OrdDt] [int] NOT NULL,
	[ErrMsg] [varchar](60) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__OrdBas] PRIMARY KEY NONCLUSTERED 
(
	[OrdDBNo] ASC,
	[OrdSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdDBas]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdDBas](
	[OrdDBNo] [int] NOT NULL,
	[DocType] [int] NOT NULL,
	[XmlFNm] [varchar](260) NOT NULL,
	[SuppNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[RmitNo] [int] NOT NULL,
	[Pref] [int] NOT NULL,
	[Stat] [int] NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[InvoRef] [varchar](20) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[InvDt] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[NOrdSum] [decimal](28, 6) NOT NULL,
	[InvoFee] [decimal](28, 6) NOT NULL,
	[TotFrAm] [decimal](28, 6) NOT NULL,
	[ExclVatAm] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[VatBasAm] [decimal](28, 6) NOT NULL,
	[VatFreeAm] [decimal](28, 6) NOT NULL,
	[InclVatAm] [decimal](28, 6) NOT NULL,
	[RoundAm] [decimal](28, 6) NOT NULL,
	[InvoAm] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Cid] [varchar](30) NOT NULL,
	[ErrMsg] [varchar](60) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__OrdDBas] PRIMARY KEY NONCLUSTERED 
(
	[OrdDBNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdDoc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdDoc](
	[OrdDocNo] [int] NOT NULL,
	[DocTp] [int] NOT NULL,
	[DocDt] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[LayNo] [int] NOT NULL,
	[PgElNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[TrTp] [tinyint] NOT NULL,
	[OrdTp] [tinyint] NOT NULL,
	[OrdDt] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Ctry] [int] NOT NULL,
	[Lang] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[SelBuy] [int] NOT NULL,
	[Rsp] [int] NOT NULL,
	[TransGr] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[OrdBasNo] [int] NOT NULL,
	[OrdPrGr] [int] NOT NULL,
	[CustPrGr] [int] NOT NULL,
	[TotDcP] [decimal](28, 6) NOT NULL,
	[TotDcAm] [decimal](28, 6) NOT NULL,
	[TotDcDAm] [decimal](28, 6) NOT NULL,
	[ObVatNo] [int] NOT NULL,
	[ExVat] [tinyint] NOT NULL,
	[ExSpc] [tinyint] NOT NULL,
	[NOrdSum] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[M1] [decimal](28, 6) NOT NULL,
	[DNOrdSum] [decimal](28, 6) NOT NULL,
	[DVatAm] [decimal](28, 6) NOT NULL,
	[M2] [decimal](28, 6) NOT NULL,
	[M3] [decimal](28, 6) NOT NULL,
	[M4] [decimal](28, 6) NOT NULL,
	[OrdSum] [decimal](28, 6) NOT NULL,
	[OrdSumT] [decimal](28, 6) NOT NULL,
	[DOrdSum] [decimal](28, 6) NOT NULL,
	[DOrdSumT] [decimal](28, 6) NOT NULL,
	[IncCst] [decimal](28, 6) NOT NULL,
	[CtrAm] [decimal](28, 6) NOT NULL,
	[AcSet] [int] NOT NULL,
	[DelActNo] [int] NOT NULL,
	[DelNm] [varchar](80) NOT NULL,
	[DelAd1] [varchar](60) NOT NULL,
	[DelAd2] [varchar](60) NOT NULL,
	[DelAd3] [varchar](60) NOT NULL,
	[DelAd4] [varchar](60) NOT NULL,
	[DelPNo] [varchar](40) NOT NULL,
	[DelPArea] [varchar](60) NOT NULL,
	[DelCtry] [int] NOT NULL,
	[DelLang] [int] NOT NULL,
	[FrStc] [int] NOT NULL,
	[ToStc] [int] NOT NULL,
	[DelTrm] [int] NOT NULL,
	[DelMt] [int] NOT NULL,
	[ConsNo] [varchar](18) NOT NULL,
	[FrAm] [decimal](28, 6) NOT NULL,
	[PstAm] [decimal](28, 6) NOT NULL,
	[DelDt] [int] NOT NULL,
	[CfDelDt] [int] NOT NULL,
	[Label] [varchar](20) NOT NULL,
	[OurRef] [varchar](20) NOT NULL,
	[YrRef] [varchar](20) NOT NULL,
	[ReqNo] [varchar](20) NOT NULL,
	[InvoCust] [int] NOT NULL,
	[RmtSup] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[PmtTrm] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[PmtMt] [int] NOT NULL,
	[InvoPl] [tinyint] NOT NULL,
	[FactNo] [varchar](24) NOT NULL,
	[InvoRef] [varchar](20) NOT NULL,
	[ExOrdPrc] [int] NOT NULL,
	[OrdPrSt] [int] NOT NULL,
	[M5] [decimal](28, 6) NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[InvoAm] [decimal](28, 6) NOT NULL,
	[LstSetDt] [int] NOT NULL,
	[LstInvDt] [int] NOT NULL,
	[ExPr] [decimal](28, 6) NOT NULL,
	[EdSt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Dupl] [int] NOT NULL,
	[DelPri] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[EmpPrGr] [int] NOT NULL,
	[WageRtNo] [int] NOT NULL,
	[Trunc] [decimal](28, 6) NOT NULL,
	[DTrunc] [decimal](28, 6) NOT NULL,
	[FrAm2] [decimal](28, 6) NOT NULL,
	[FrAm3] [decimal](28, 6) NOT NULL,
	[FrAm4] [decimal](28, 6) NOT NULL,
	[Package] [int] NOT NULL,
	[SpcTxAm] [decimal](28, 6) NOT NULL,
	[DSpcTxAm] [decimal](28, 6) NOT NULL,
	[InvoSF] [decimal](28, 6) NOT NULL,
	[IncSF] [decimal](28, 6) NOT NULL,
	[M6] [decimal](28, 6) NOT NULL,
	[M7] [decimal](28, 6) NOT NULL,
	[InvoIF] [decimal](28, 6) NOT NULL,
	[DInvoIF] [decimal](28, 6) NOT NULL,
	[IncIF] [decimal](28, 6) NOT NULL,
	[M8] [decimal](28, 6) NOT NULL,
	[M9] [decimal](28, 6) NOT NULL,
	[M10] [decimal](28, 6) NOT NULL,
	[M11] [decimal](28, 6) NOT NULL,
	[M12] [decimal](28, 6) NOT NULL,
	[M13] [decimal](28, 6) NOT NULL,
	[M14] [decimal](28, 6) NOT NULL,
	[CstCur] [int] NOT NULL,
	[CstExRt] [decimal](28, 6) NOT NULL,
	[CIncCst] [decimal](28, 6) NOT NULL,
	[CIncSF] [decimal](28, 6) NOT NULL,
	[CIncIF] [decimal](28, 6) NOT NULL,
	[M15] [decimal](28, 6) NOT NULL,
	[SaleCstP] [decimal](28, 6) NOT NULL,
	[MainOrd] [int] NOT NULL,
	[ERetDt] [int] NOT NULL,
	[TransGr2] [int] NOT NULL,
	[VoSr] [int] NOT NULL,
	[InqCnt] [int] NOT NULL,
	[PurcCnt] [int] NOT NULL,
	[OfCnt] [int] NOT NULL,
	[CfCnt] [int] NOT NULL,
	[PicCnt] [int] NOT NULL,
	[PacCnt] [int] NOT NULL,
	[ConCnt] [int] NOT NULL,
	[InvoCnt] [int] NOT NULL,
	[DtyFrAm] [decimal](28, 6) NOT NULL,
	[DDtyFrAm] [decimal](28, 6) NOT NULL,
	[ArDt] [int] NOT NULL,
	[DifProd] [varchar](40) NOT NULL,
	[DCtrAm] [decimal](28, 6) NOT NULL,
	[CustPrG2] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[PrSup] [int] NOT NULL,
	[SPrAdd] [decimal](28, 6) NOT NULL,
	[OrdPref] [int] NOT NULL,
	[M16] [int] NOT NULL,
	[M17] [tinyint] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[NWgt] [decimal](28, 6) NOT NULL,
	[Tare] [decimal](28, 6) NOT NULL,
	[M18] [decimal](28, 6) NOT NULL,
	[Lgt] [decimal](28, 6) NOT NULL,
	[Area] [decimal](28, 6) NOT NULL,
	[Vol] [decimal](28, 6) NOT NULL,
	[CSOrdNo] [varchar](40) NOT NULL,
	[FinBy] [varchar](24) NOT NULL,
	[NoUn] [decimal](28, 6) NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[TransGr3] [int] NOT NULL,
	[TransGr4] [int] NOT NULL,
	[ConNo] [int] NOT NULL,
	[PacNo] [int] NOT NULL,
	[PicNo] [int] NOT NULL,
	[CfNo] [int] NOT NULL,
	[OfNo] [int] NOT NULL,
	[PurcNo] [int] NOT NULL,
	[InqNo] [int] NOT NULL,
	[EDISt] [int] NOT NULL,
	[OrdBal] [decimal](28, 6) NOT NULL,
	[DOrdBal] [decimal](28, 6) NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[FCfDelDt] [int] NOT NULL,
	[RlDelDt] [int] NOT NULL,
	[OrdPrSt2] [int] NOT NULL,
	[TestRes] [int] NOT NULL,
	[DocSMt] [int] NOT NULL,
	[IgnTest] [tinyint] NOT NULL,
	[FrCusPro] [int] NOT NULL,
	[FinDt] [int] NOT NULL,
	[ProdNo] [int] NOT NULL,
	[ProdCnt] [int] NOT NULL,
	[GWgtTot] [decimal](28, 6) NOT NULL,
	[M19] [decimal](28, 6) NOT NULL,
	[GWgtCoSF] [decimal](28, 6) NOT NULL,
	[OvCNOSm] [decimal](28, 6) NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[DepDt] [int] NOT NULL,
	[CustPrG3] [int] NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[TspAgrNo] [int] NOT NULL,
	[FinWgt] [decimal](28, 6) NOT NULL,
	[TonRt] [tinyint] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[PropPrc] [tinyint] NOT NULL,
	[PropNo] [int] NOT NULL,
	[DocSMt2] [int] NOT NULL,
	[LiaAct2] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[DesProDt] [int] NOT NULL,
	[FCNo] [int] NOT NULL,
	[ShpActNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[OrdDPro] [int] NOT NULL,
	[MnOrDocN] [int] NOT NULL,
	[DelVisPN] [varchar](40) NOT NULL,
	[DelVisPA] [varchar](60) NOT NULL,
	[PrK] [int] NOT NULL,
	[StrtPer] [int] NOT NULL,
	[PStYrPr] [int] NOT NULL,
	[PEnYrPr] [int] NOT NULL,
	[DCstDf] [decimal](28, 6) NOT NULL,
	[DCstDfSF] [decimal](28, 6) NOT NULL,
	[DCstAd] [decimal](28, 6) NOT NULL,
	[DCstAdSF] [decimal](28, 6) NOT NULL,
	[MavStat] [int] NOT NULL,
	[MavInvId] [varchar](40) NOT NULL,
 CONSTRAINT [PK__OrdDoc] PRIMARY KEY CLUSTERED 
(
	[OrdDocNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdDocAtt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdDocAtt](
	[OrdDocNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[AttNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__OrdDocAtt] PRIMARY KEY NONCLUSTERED 
(
	[OrdDocNo] ASC,
	[OrdNo] ASC,
	[AttNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdDocF]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdDocF](
	[OrdDocNo] [int] NOT NULL,
	[FormLnNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Value] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__OrdDocF] PRIMARY KEY CLUSTERED 
(
	[OrdDocNo] ASC,
	[FormLnNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdDocLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdDocLn](
	[OrdDocNo] [int] NOT NULL,
	[DocLnNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[TrDt] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[EmpPrGr] [int] NOT NULL,
	[WageRtNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[InvoCust] [int] NOT NULL,
	[CustPrGr] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[RmtSup] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[ProdPrGr] [int] NOT NULL,
	[SpecFunc] [int] NOT NULL,
	[StrSt] [tinyint] NOT NULL,
	[ExcPrint] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[ProcMt] [int] NOT NULL,
	[M1] [tinyint] NOT NULL,
	[M2] [tinyint] NOT NULL,
	[FrStc] [int] NOT NULL,
	[ToStc] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[StUnRt] [decimal](28, 6) NOT NULL,
	[EdFmt] [int] NOT NULL,
	[FrNo] [decimal](28, 6) NOT NULL,
	[ToNo] [decimal](28, 6) NOT NULL,
	[NoReg] [decimal](28, 6) NOT NULL,
	[NoInvoAb] [decimal](28, 6) NOT NULL,
	[NoRet] [decimal](28, 6) NOT NULL,
	[NoComp] [decimal](28, 6) NOT NULL,
	[NoScr] [decimal](28, 6) NOT NULL,
	[CompPr] [decimal](28, 6) NOT NULL,
	[DCompPr] [decimal](28, 6) NOT NULL,
	[CstPr] [decimal](28, 6) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[StPr] [decimal](28, 6) NOT NULL,
	[DStPr] [decimal](28, 6) NOT NULL,
	[Price] [decimal](28, 6) NOT NULL,
	[DPrice] [decimal](28, 6) NOT NULL,
	[Dc1P] [decimal](28, 6) NOT NULL,
	[Dc1Am] [decimal](28, 6) NOT NULL,
	[Dc1DAm] [decimal](28, 6) NOT NULL,
	[Dc2P] [decimal](28, 6) NOT NULL,
	[Dc2Am] [decimal](28, 6) NOT NULL,
	[Dc2DAm] [decimal](28, 6) NOT NULL,
	[M3] [decimal](28, 6) NOT NULL,
	[M4] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[ProdGr] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[VatNo] [int] NOT NULL,
	[DstDc] [decimal](28, 6) NOT NULL,
	[DDstDc] [decimal](28, 6) NOT NULL,
	[DstAd] [decimal](28, 6) NOT NULL,
	[DDstAd] [decimal](28, 6) NOT NULL,
	[SpcTxCd] [tinyint] NOT NULL,
	[SpcTxAm] [decimal](28, 6) NOT NULL,
	[DSpcTxAm] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[DVatAm] [decimal](28, 6) NOT NULL,
	[InvoRef] [varchar](20) NOT NULL,
	[RefNo] [int] NOT NULL,
	[DelDt] [int] NOT NULL,
	[CfDelDt] [int] NOT NULL,
	[SelBuy] [int] NOT NULL,
	[Rsp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[WageSrt] [varchar](10) NOT NULL,
	[AdWage1] [int] NOT NULL,
	[AdWage2] [int] NOT NULL,
	[ProdTp] [int] NOT NULL,
	[TransGr] [int] NOT NULL,
	[IncCst] [decimal](28, 6) NOT NULL,
	[M5] [decimal](28, 6) NOT NULL,
	[M6] [decimal](28, 6) NOT NULL,
	[ShpNo] [int] NOT NULL,
	[PurcNo] [int] NOT NULL,
	[SerNo] [varchar](40) NOT NULL,
	[Loc] [varchar](18) NOT NULL,
	[DurDt] [int] NOT NULL,
	[ExQty] [decimal](28, 6) NOT NULL,
	[M7] [decimal](28, 6) NOT NULL,
	[NoInq] [decimal](28, 6) NOT NULL,
	[NoPurc] [decimal](28, 6) NOT NULL,
	[NoOf] [decimal](28, 6) NOT NULL,
	[NoCf] [decimal](28, 6) NOT NULL,
	[NoPic] [decimal](28, 6) NOT NULL,
	[M8] [decimal](28, 6) NOT NULL,
	[NoFin] [decimal](28, 6) NOT NULL,
	[M9] [decimal](28, 6) NOT NULL,
	[M10] [decimal](28, 6) NOT NULL,
	[FinInc] [decimal](28, 6) NOT NULL,
	[M11] [decimal](28, 6) NOT NULL,
	[M12] [decimal](28, 6) NOT NULL,
	[NoPac] [decimal](28, 6) NOT NULL,
	[NoCon] [decimal](28, 6) NOT NULL,
	[M13] [decimal](28, 6) NOT NULL,
	[NoInvo] [decimal](28, 6) NOT NULL,
	[EditPref] [int] NOT NULL,
	[FFm] [varchar](64) NOT NULL,
	[FSz] [int] NOT NULL,
	[FSt] [int] NOT NULL,
	[LnFl] [int] NOT NULL,
	[Dupl] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[DelAltNo] [int] NOT NULL,
	[ToShpNo] [int] NOT NULL,
	[CstCur] [int] NOT NULL,
	[CstExRt] [decimal](28, 6) NOT NULL,
	[CCstPr] [decimal](28, 6) NOT NULL,
	[CIncCst] [decimal](28, 6) NOT NULL,
	[InvoSF] [decimal](28, 6) NOT NULL,
	[DInvoSF] [decimal](28, 6) NOT NULL,
	[IncSF] [decimal](28, 6) NOT NULL,
	[M14] [decimal](28, 6) NOT NULL,
	[M15] [decimal](28, 6) NOT NULL,
	[InvoIF] [decimal](28, 6) NOT NULL,
	[DInvoIF] [decimal](28, 6) NOT NULL,
	[IncIF] [decimal](28, 6) NOT NULL,
	[M16] [decimal](28, 6) NOT NULL,
	[M17] [decimal](28, 6) NOT NULL,
	[M18] [decimal](28, 6) NOT NULL,
	[M19] [decimal](28, 6) NOT NULL,
	[M20] [decimal](28, 6) NOT NULL,
	[M21] [decimal](28, 6) NOT NULL,
	[M22] [decimal](28, 6) NOT NULL,
	[CIncSF] [decimal](28, 6) NOT NULL,
	[CIncIF] [decimal](28, 6) NOT NULL,
	[M23] [decimal](28, 6) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Dupl2] [int] NOT NULL,
	[DelActNo] [int] NOT NULL,
	[CstPrAdd] [decimal](28, 6) NOT NULL,
	[DelMt] [int] NOT NULL,
	[SCd] [varchar](52) NOT NULL,
	[NoRsv] [decimal](28, 6) NOT NULL,
	[M24] [decimal](28, 6) NOT NULL,
	[GrSep] [tinyint] NOT NULL,
	[TrTp] [tinyint] NOT NULL,
	[ERetDt] [int] NOT NULL,
	[EUStatNo] [bigint] NOT NULL,
	[ProdTp2] [int] NOT NULL,
	[TransGr2] [int] NOT NULL,
	[M25] [tinyint] NOT NULL,
	[Factor3] [decimal](28, 6) NOT NULL,
	[ArDt] [int] NOT NULL,
	[Stat1] [decimal](28, 6) NOT NULL,
	[Stat2] [decimal](28, 6) NOT NULL,
	[InvoPlLn] [tinyint] NOT NULL,
	[LstSetDt] [int] NOT NULL,
	[Shr] [decimal](28, 6) NOT NULL,
	[TanspTm] [smallint] NOT NULL,
	[DelTm] [smallint] NOT NULL,
	[M26] [tinyint] NOT NULL,
	[ProdPrG2] [int] NOT NULL,
	[ProdPrG3] [int] NOT NULL,
	[CustPrG2] [int] NOT NULL,
	[FreeNo] [decimal](28, 6) NOT NULL,
	[RlzFree] [decimal](28, 6) NOT NULL,
	[NWgtU] [decimal](28, 6) NOT NULL,
	[TareU] [decimal](28, 6) NOT NULL,
	[M27] [decimal](28, 6) NOT NULL,
	[LgtU] [decimal](28, 6) NOT NULL,
	[WdtU] [decimal](28, 6) NOT NULL,
	[HgtU] [decimal](28, 6) NOT NULL,
	[AreaU] [decimal](28, 6) NOT NULL,
	[VolU] [decimal](28, 6) NOT NULL,
	[NoUn] [decimal](28, 6) NOT NULL,
	[NWgtL] [decimal](28, 6) NOT NULL,
	[TareL] [decimal](28, 6) NOT NULL,
	[M28] [decimal](28, 6) NOT NULL,
	[LgtL] [decimal](28, 6) NOT NULL,
	[AreaL] [decimal](28, 6) NOT NULL,
	[VolL] [decimal](28, 6) NOT NULL,
	[Measure] [tinyint] NOT NULL,
	[DFrAm1] [decimal](28, 6) NOT NULL,
	[DFrAm2] [decimal](28, 6) NOT NULL,
	[DFrAm3] [decimal](28, 6) NOT NULL,
	[DFrAm4] [decimal](28, 6) NOT NULL,
	[PrUn] [tinyint] NOT NULL,
	[FinBy] [varchar](24) NOT NULL,
	[TransGr3] [int] NOT NULL,
	[TransGr4] [int] NOT NULL,
	[ProdTp3] [int] NOT NULL,
	[ProdTp4] [int] NOT NULL,
	[TrInf1] [varchar](40) NOT NULL,
	[TrInf2] [varchar](40) NOT NULL,
	[EDISt] [int] NOT NULL,
	[OrdTp] [tinyint] NOT NULL,
	[Tenancy] [int] NOT NULL,
	[PrNo] [decimal](28, 6) NOT NULL,
	[OrdLnSt] [int] NOT NULL,
	[M29] [tinyint] NOT NULL,
	[M31] [tinyint] NOT NULL,
	[M32] [decimal](28, 6) NOT NULL,
	[M33] [decimal](28, 6) NOT NULL,
	[M34] [decimal](28, 6) NOT NULL,
	[M35] [decimal](28, 6) NOT NULL,
	[InvoMth] [smallint] NOT NULL,
	[DensU] [decimal](28, 6) NOT NULL,
	[MntTm] [smallint] NOT NULL,
	[DemTm] [smallint] NOT NULL,
	[M36] [decimal](28, 6) NOT NULL,
	[PriceF] [decimal](28, 6) NOT NULL,
	[FCfDelDt] [int] NOT NULL,
	[RlDelDt] [int] NOT NULL,
	[DelGr] [int] NOT NULL,
	[AdmTm] [smallint] NOT NULL,
	[M37] [smallint] NOT NULL,
	[Alloc] [decimal](28, 6) NOT NULL,
	[M38] [decimal](28, 6) NOT NULL,
	[PrTp] [int] NOT NULL,
	[Cus] [decimal](28, 6) NOT NULL,
	[FrCusPro] [int] NOT NULL,
	[M39] [decimal](28, 6) NOT NULL,
	[FinDt] [int] NOT NULL,
	[YrWk] [int] NOT NULL,
	[FinTm] [smallint] NOT NULL,
	[Dc3P] [decimal](28, 6) NOT NULL,
	[Dc3Am] [decimal](28, 6) NOT NULL,
	[Dc3DAm] [decimal](28, 6) NOT NULL,
	[Dc4P] [decimal](28, 6) NOT NULL,
	[Dc4Am] [decimal](28, 6) NOT NULL,
	[Dc4DAm] [decimal](28, 6) NOT NULL,
	[Dc5P] [decimal](28, 6) NOT NULL,
	[Dc5Am] [decimal](28, 6) NOT NULL,
	[Dc5DAm] [decimal](28, 6) NOT NULL,
	[Dc6P] [decimal](28, 6) NOT NULL,
	[Dc6Am] [decimal](28, 6) NOT NULL,
	[Dc6DAm] [decimal](28, 6) NOT NULL,
	[NoProd] [decimal](28, 6) NOT NULL,
	[TrInf3] [varchar](40) NOT NULL,
	[TrInf4] [varchar](40) NOT NULL,
	[YrPr] [int] NOT NULL,
	[TrfOrdNo] [int] NOT NULL,
	[D1Hr] [int] NOT NULL,
	[D2Hr] [int] NOT NULL,
	[D3Hr] [int] NOT NULL,
	[D4Hr] [int] NOT NULL,
	[D5Hr] [int] NOT NULL,
	[D6Hr] [int] NOT NULL,
	[D7Hr] [int] NOT NULL,
	[M40] [decimal](28, 6) NOT NULL,
	[M41] [decimal](28, 6) NOT NULL,
	[OvCNOSm] [decimal](28, 6) NOT NULL,
	[PicN] [decimal](28, 6) NOT NULL,
	[FinN] [decimal](28, 6) NOT NULL,
	[RetN] [decimal](28, 6) NOT NULL,
	[CompN] [decimal](28, 6) NOT NULL,
	[ScrN] [decimal](28, 6) NOT NULL,
	[RlzN] [decimal](28, 6) NOT NULL,
	[RsvN] [decimal](28, 6) NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[CustPrG3] [int] NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[TspAgrNo] [int] NOT NULL,
	[SugPr] [decimal](28, 6) NOT NULL,
	[PicMax] [decimal](28, 6) NOT NULL,
	[M42] [tinyint] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[PropPrc] [tinyint] NOT NULL,
	[PropNo] [int] NOT NULL,
	[AcYrPr] [int] NOT NULL,
	[WfId] [int] NOT NULL,
	[PLDNo] [int] NOT NULL,
	[PLDFlow] [int] NOT NULL,
	[DesProDt] [int] NOT NULL,
	[ProdTm] [smallint] NOT NULL,
	[M43] [decimal](28, 6) NOT NULL,
	[M44] [decimal](28, 6) NOT NULL,
	[M45] [decimal](28, 6) NOT NULL,
	[M46] [decimal](28, 6) NOT NULL,
	[M47] [decimal](28, 6) NOT NULL,
	[M48] [decimal](28, 6) NOT NULL,
	[M49] [decimal](28, 6) NOT NULL,
	[M50] [tinyint] NOT NULL,
	[StHLnNo] [int] NOT NULL,
	[DocSrt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[PicNotR] [decimal](28, 6) NOT NULL,
	[M51] [decimal](28, 6) NOT NULL,
	[SrcTp] [int] NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[LnPurcNo] [int] NOT NULL,
	[OrdDLPro] [int] NOT NULL,
	[NoOrg] [decimal](28, 6) NOT NULL,
	[PrK] [int] NOT NULL,
	[StrtPer] [int] NOT NULL,
	[PStYrPr] [int] NOT NULL,
	[PEnYrPr] [int] NOT NULL,
	[DCstAd] [decimal](28, 6) NOT NULL,
	[CfN] [decimal](28, 6) NOT NULL,
	[NoRsvInc] [decimal](28, 6) NOT NULL,
	[M52] [decimal](28, 6) NOT NULL,
	[ExID] [int] NOT NULL,
	[VatRt] [decimal](28, 6) NOT NULL,
	[ProdProcNo] [int] NOT NULL,
	[M30] [tinyint] NOT NULL,
	[ToLoc] [varchar](18) NOT NULL,
	[NoPerStr] [decimal](28, 6) NOT NULL,
	[OrdDocLnTp] [int] NOT NULL,
	[VatBas] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[Ctry] [int] NOT NULL,
 CONSTRAINT [PK__OrdDocLn] PRIMARY KEY CLUSTERED 
(
	[OrdDocNo] ASC,
	[DocLnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdJ]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdJ](
	[JNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__OrdJ] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdLn](
	[OrdNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[TrDt] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[InvoCust] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[RmtSup] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ProdPrGr] [int] NOT NULL DEFAULT ((0)),
	[SpecFunc] [int] NOT NULL DEFAULT ((0)),
	[StrSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ExcPrint] [int] NOT NULL DEFAULT ((0)),
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[ProcMt] [int] NOT NULL DEFAULT ((0)),
	[FrStc] [int] NOT NULL DEFAULT ((0)),
	[ToStc] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EdFmt] [int] NOT NULL DEFAULT ((0)),
	[FrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ToNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoReg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInvoAb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRet] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoComp] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoScr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CompPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCompPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DStPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Price] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DPrice] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdGr] [int] NOT NULL DEFAULT ((0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[VatNo] [int] NOT NULL DEFAULT ((0)),
	[DstDc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DDstDc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DDstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SpcTxCd] [tinyint] NOT NULL DEFAULT ((0)),
	[SpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DSpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DVatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoRef] [varchar](20) NOT NULL DEFAULT (' '),
	[RefNo] [int] NOT NULL DEFAULT ((0)),
	[DelDt] [int] NOT NULL DEFAULT ((0)),
	[CfDelDt] [int] NOT NULL DEFAULT ((0)),
	[SelBuy] [int] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[ResNo] [int] NOT NULL DEFAULT ((0)),
	[WageSrt] [varchar](10) NOT NULL DEFAULT (' '),
	[AdWage1] [int] NOT NULL DEFAULT ((0)),
	[AdWage2] [int] NOT NULL DEFAULT ((0)),
	[ProdTp] [int] NOT NULL DEFAULT ((0)),
	[TransGr] [int] NOT NULL DEFAULT ((0)),
	[IncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ShpNo] [int] NOT NULL DEFAULT ((0)),
	[PurcNo] [int] NOT NULL DEFAULT ((0)),
	[SerNo] [varchar](40) NOT NULL DEFAULT (' '),
	[Loc] [varchar](18) NOT NULL DEFAULT (' '),
	[DurDt] [int] NOT NULL DEFAULT ((0)),
	[ExQty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInq] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoOf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoCf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoPic] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoFin] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FinInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoPac] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoCon] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInvo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EditPref] [int] NOT NULL DEFAULT ((0)),
	[FFm] [varchar](64) NOT NULL DEFAULT (' '),
	[FSz] [int] NOT NULL DEFAULT ((0)),
	[FSt] [int] NOT NULL DEFAULT ((0)),
	[LnFl] [int] NOT NULL DEFAULT ((0)),
	[Dupl] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[DelAltNo] [int] NOT NULL DEFAULT ((0)),
	[ToShpNo] [int] NOT NULL DEFAULT ((0)),
	[CstCur] [int] NOT NULL DEFAULT ((0)),
	[CstExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DInvoSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DInvoIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncSF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncIF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Dupl2] [int] NOT NULL DEFAULT ((0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[CstPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelMt] [int] NOT NULL DEFAULT ((0)),
	[SCd] [varchar](52) NOT NULL DEFAULT (' '),
	[NoRsv] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[GrSep] [tinyint] NOT NULL DEFAULT ((0)),
	[TrTp] [tinyint] NOT NULL DEFAULT ((0)),
	[ERetDt] [int] NOT NULL DEFAULT ((0)),
	[EUStatNo] [bigint] NOT NULL DEFAULT ((0)),
	[ProdTp2] [int] NOT NULL DEFAULT ((0)),
	[TransGr2] [int] NOT NULL DEFAULT ((0)),
	[Factor3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ArDt] [int] NOT NULL DEFAULT ((0)),
	[Stat1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Stat2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoPlLn] [tinyint] NOT NULL DEFAULT ((0)),
	[LstSetDt] [int] NOT NULL DEFAULT ((0)),
	[Shr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TanspTm] [smallint] NOT NULL DEFAULT ((0)),
	[DelTm] [smallint] NOT NULL DEFAULT ((0)),
	[ProdPrG2] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG3] [int] NOT NULL DEFAULT ((0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[FreeNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RlzFree] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NWgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WdtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoUn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NWgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Measure] [tinyint] NOT NULL DEFAULT ((0)),
	[DFrAm1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DFrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DFrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DFrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrUn] [tinyint] NOT NULL DEFAULT ((0)),
	[FinBy] [varchar](24) NOT NULL DEFAULT (' '),
	[TransGr3] [int] NOT NULL DEFAULT ((0)),
	[TransGr4] [int] NOT NULL DEFAULT ((0)),
	[ProdTp3] [int] NOT NULL DEFAULT ((0)),
	[ProdTp4] [int] NOT NULL DEFAULT ((0)),
	[TrInf1] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf2] [varchar](40) NOT NULL DEFAULT (' '),
	[EDISt] [int] NOT NULL DEFAULT ((0)),
	[OrdTp] [tinyint] NOT NULL DEFAULT ((0)),
	[Tenancy] [int] NOT NULL DEFAULT ((0)),
	[PrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdLnSt] [int] NOT NULL DEFAULT ((0)),
	[InvoMth] [smallint] NOT NULL DEFAULT ((0)),
	[DensU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MntTm] [smallint] NOT NULL DEFAULT ((0)),
	[DemTm] [smallint] NOT NULL DEFAULT ((0)),
	[PriceF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FCfDelDt] [int] NOT NULL DEFAULT ((0)),
	[RlDelDt] [int] NOT NULL DEFAULT ((0)),
	[DelGr] [int] NOT NULL DEFAULT ((0)),
	[AdmTm] [smallint] NOT NULL DEFAULT ((0)),
	[Alloc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrTp] [int] NOT NULL DEFAULT ((0)),
	[Cus] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrCusPro] [int] NOT NULL DEFAULT ((0)),
	[FinDt] [int] NOT NULL DEFAULT ((0)),
	[YrWk] [int] NOT NULL DEFAULT ((0)),
	[FinTm] [smallint] NOT NULL DEFAULT ((0)),
	[Dc3P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc3Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc3DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrInf3] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf4] [varchar](40) NOT NULL DEFAULT (' '),
	[YrPr] [int] NOT NULL DEFAULT ((0)),
	[TrfOrdNo] [int] NOT NULL DEFAULT ((0)),
	[D1Hr] [int] NOT NULL DEFAULT ((0)),
	[D2Hr] [int] NOT NULL DEFAULT ((0)),
	[D3Hr] [int] NOT NULL DEFAULT ((0)),
	[D4Hr] [int] NOT NULL DEFAULT ((0)),
	[D5Hr] [int] NOT NULL DEFAULT ((0)),
	[D6Hr] [int] NOT NULL DEFAULT ((0)),
	[D7Hr] [int] NOT NULL DEFAULT ((0)),
	[OvCNOSm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PicN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FinN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RetN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CompN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ScrN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RlzN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RsvN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[JNo] [int] NOT NULL DEFAULT ((0)),
	[EntNo] [int] NOT NULL DEFAULT ((0)),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[TspAgrNo] [int] NOT NULL DEFAULT ((0)),
	[SugPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PicMax] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[DesProDt] [int] NOT NULL DEFAULT ((0)),
	[ProdTm] [smallint] NOT NULL DEFAULT ((0)),
	[StHLnNo] [int] NOT NULL DEFAULT ((0)),
	[PicNotR] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SrcTp] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[LnPurcNo] [int] NOT NULL DEFAULT ((0)),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[NoOrg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[StrtPer] [int] NOT NULL DEFAULT ((0)),
	[PStYrPr] [int] NOT NULL DEFAULT ((0)),
	[PEnYrPr] [int] NOT NULL DEFAULT ((0)),
	[DCstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CfN] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRsvInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExID] [int] NOT NULL DEFAULT ((0)),
	[VatRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdProcNo] [int] NOT NULL DEFAULT ((0)),
	[ToLoc] [varchar](18) NOT NULL DEFAULT (' '),
	[NoPerStr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__OrdLn] PRIMARY KEY CLUSTERED 
(
	[OrdNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdLnBas]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdLnBas](
	[OrdDBNo] [int] NOT NULL,
	[OrdSeqNo] [int] NOT NULL,
	[OrdLnSeqNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[DeliQty] [decimal](28, 6) NOT NULL,
	[Price] [decimal](28, 6) NOT NULL,
	[DcAm] [decimal](28, 6) NOT NULL,
	[DcP] [decimal](28, 6) NOT NULL,
	[DcBAm] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[VatP] [decimal](28, 6) NOT NULL,
	[VatBAm] [decimal](28, 6) NOT NULL,
	[DVatAm] [decimal](28, 6) NOT NULL,
	[DVatBAm] [decimal](28, 6) NOT NULL,
	[CfDelDt] [int] NOT NULL,
	[DelDt] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[ErrMsg] [varchar](60) NOT NULL,
	[ExID] [int] NOT NULL,
	[Stat] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__OrdLnBas] PRIMARY KEY NONCLUSTERED 
(
	[OrdDBNo] ASC,
	[OrdSeqNo] ASC,
	[OrdLnSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PicLst]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PicLst](
	[PicLstNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[PicLstSt] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[RunNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PicLst] PRIMARY KEY NONCLUSTERED 
(
	[PicLstNo] ASC,
	[OrdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLCom]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLCom](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[Descr] [varchar](250) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLCom] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFData]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFData](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Srt] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[ProcTp] [int] NOT NULL,
	[Flags] [int] NOT NULL,
	[Descr] [varchar](100) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Owner] [varchar](24) NOT NULL,
	[ProcTpId] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFData] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFDatU]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFDatU](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Srt] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[ProcTp] [int] NOT NULL,
	[Flags] [int] NOT NULL,
	[Descr] [varchar](100) NOT NULL,
	[Owner] [varchar](24) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ProcTpId] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFDatU] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFDocs]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFDocs](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[DocTxt] [varchar](50) NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[FileExt] [char](4) NOT NULL,
	[OrgFNm] [varchar](100) NOT NULL,
	[Flags] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[NxtDueDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFDocs] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFDocU]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFDocU](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[DocTxt] [varchar](50) NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[FileExt] [char](4) NOT NULL,
	[OrgFNm] [varchar](100) NOT NULL,
	[Flags] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[NxtDueDt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFDocU] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFGMem]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFGMem](
	[FlGr] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFGMem] PRIMARY KEY NONCLUSTERED 
(
	[FlGr] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFGr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFGr](
	[FlGr] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFGr] PRIMARY KEY NONCLUSTERED 
(
	[FlGr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDFType]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDFType](
	[RowNo] [int] NOT NULL,
	[FlTp] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Flags] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDFType] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLDocGen]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLDocGen](
	[RowNo] [int] NOT NULL,
	[DocNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PLDocGen] PRIMARY KEY NONCLUSTERED 
(
	[RowNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PmtAgr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PmtAgr](
	[LnNo] [int] NOT NULL,
	[FCNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[PmtCd] [int] NOT NULL,
	[RegTp] [int] NOT NULL,
	[AgrId] [varchar](20) NOT NULL,
	[PerTp] [int] NOT NULL,
	[DueTp] [int] NOT NULL,
	[AgrAm] [decimal](28, 6) NOT NULL,
	[LstChrAm] [decimal](28, 6) NOT NULL,
	[AccAm] [decimal](28, 6) NOT NULL,
	[ValFrDt] [int] NOT NULL,
	[ValToDt] [int] NOT NULL,
	[ChrDt] [int] NOT NULL,
	[DueDt] [int] NOT NULL,
	[ComCd] [int] NOT NULL,
	[PayerInf] [varchar](60) NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[RefCID] [varchar](30) NOT NULL,
	[LstRunNo] [int] NOT NULL,
	[LstVoNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[PrevPNo] [varchar](18) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PmtAgr] PRIMARY KEY NONCLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PmtMt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PmtMt](
	[PmtMtNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[PmtAc] [int] NOT NULL DEFAULT ((0)),
	[CustLedg] [tinyint] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CrVoTp] [int] NOT NULL DEFAULT ((0)),
	[WitAc] [int] NOT NULL DEFAULT ((0)),
	[WitAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__PmtMt] PRIMARY KEY NONCLUSTERED 
(
	[PmtMtNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PmtTrm]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PmtTrm](
	[PmtTrmNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[CrMth] [tinyint] NOT NULL DEFAULT ((0)),
	[CrDy] [smallint] NOT NULL DEFAULT ((0)),
	[DcMth] [tinyint] NOT NULL DEFAULT ((0)),
	[DcDy] [smallint] NOT NULL DEFAULT ((0)),
	[DcP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncDcAc] [int] NOT NULL DEFAULT ((0)),
	[OutwDcAc] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[DirDeb] [tinyint] NOT NULL DEFAULT ((0)),
	[EDIPmtT] [tinyint] NOT NULL DEFAULT ((0)),
	[GrcDy] [smallint] NOT NULL DEFAULT ((0)),
	[IntFrDy] [smallint] NOT NULL DEFAULT ((0)),
	[MxIntDy] [smallint] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__PmtTrm] PRIMARY KEY NONCLUSTERED 
(
	[PmtTrmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[PostNo] [varchar](40) NOT NULL,
	[Place] [varchar](60) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CouncNo] [char](4) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Post] PRIMARY KEY NONCLUSTERED 
(
	[PostNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrDcMat]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrDcMat](
	[LnNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[OrdPrGr] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ProdPrGr] [int] NOT NULL DEFAULT ((0)),
	[StcNo] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[StrProd] [varchar](40) NOT NULL DEFAULT (' '),
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[MinNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[SalePr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SaleDcP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SaleDcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HirePr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HireDcP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HireDcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CompPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SugPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcCur] [int] NOT NULL DEFAULT ((0)),
	[PurcPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcDcP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcDcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[WageSrt] [varchar](10) NOT NULL DEFAULT (' '),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CstCur] [int] NOT NULL DEFAULT ((0)),
	[MinAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrCatNo] [int] NOT NULL DEFAULT ((0)),
	[PrCatDt] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG2] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG3] [int] NOT NULL DEFAULT ((0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[ShpNo] [int] NOT NULL DEFAULT ((0)),
	[NWgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoUn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gross] [int] NOT NULL DEFAULT ((0)),
	[VatNo] [int] NOT NULL DEFAULT ((0)),
	[Fixed] [int] NOT NULL DEFAULT ((0)),
	[InclStr] [tinyint] NOT NULL DEFAULT ((0)),
	[PrTp] [int] NOT NULL DEFAULT ((0)),
	[PrUn] [tinyint] NOT NULL DEFAULT ((0)),
	[Lim] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Lim2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MaxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Split] [tinyint] NOT NULL DEFAULT ((0)),
	[SPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrPNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ToPNo] [varchar](40) NOT NULL DEFAULT (' '),
	[DelTrm] [int] NOT NULL DEFAULT ((0)),
	[DelMt] [int] NOT NULL DEFAULT ((0)),
	[Lim3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Lim4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr5] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Lim5] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr6] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Lim6] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SalePr7] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CpSPr] [tinyint] NOT NULL DEFAULT ((0)),
	[SDc2P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc2Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc3P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc3Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc4P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc4Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc5P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SDc5Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GrPrTxCd] [int] NOT NULL DEFAULT ((0)),
	[SCPrSt] [int] NOT NULL DEFAULT ((0)),
	[SCd] [varchar](52) NOT NULL DEFAULT (' '),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__PrDcMat] PRIMARY KEY CLUSTERED 
(
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrKey]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrKey](
	[PrGrNo] [int] NOT NULL,
	[Descr] [varchar](40) NOT NULL,
	[SmShr] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[PerDbAc] [int] NOT NULL,
	[PerCrAc] [int] NOT NULL,
	[StrtPer] [int] NOT NULL,
	[NoPer] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PrKey] PRIMARY KEY NONCLUSTERED 
(
	[PrGrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrLn](
	[PrGrNo] [int] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[Shr] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PrLn] PRIMARY KEY NONCLUSTERED 
(
	[PrGrNo] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prod]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prod](
	[ProdNo] [varchar](40) NOT NULL,
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[ProdGr] [int] NOT NULL DEFAULT ((0)),
	[ProdTp] [int] NOT NULL DEFAULT ((0)),
	[StSaleUn] [int] NOT NULL DEFAULT ((0)),
	[ProdPrGr] [int] NOT NULL DEFAULT ((0)),
	[SpecFunc] [int] NOT NULL DEFAULT ((0)),
	[ExcPrint] [int] NOT NULL DEFAULT ((0)),
	[EditPref] [int] NOT NULL DEFAULT ((0)),
	[EdFmt] [int] NOT NULL DEFAULT ((0)),
	[ExpStr] [int] NOT NULL DEFAULT ((0)),
	[PrM2b] [int] NOT NULL DEFAULT ((0)),
	[WageSrt] [varchar](10) NOT NULL DEFAULT (' '),
	[DesMrg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NrmStc] [int] NOT NULL DEFAULT ((0)),
	[ProcMt] [int] NOT NULL DEFAULT ((0)),
	[NWgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CusStNo] [varchar](12) NOT NULL DEFAULT (' '),
	[RepProd] [varchar](40) NOT NULL DEFAULT (' '),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[ExQty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CstPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[GrSep] [tinyint] NOT NULL DEFAULT ((0)),
	[EUStatNo] [bigint] NOT NULL DEFAULT ((0)),
	[ProdTp2] [int] NOT NULL DEFAULT ((0)),
	[FrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ToNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Factor3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoPlLn] [tinyint] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[Buyer] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG2] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG3] [int] NOT NULL DEFAULT ((0)),
	[LgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WdtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Measure] [tinyint] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[ProdTp3] [int] NOT NULL DEFAULT ((0)),
	[ProdTp4] [int] NOT NULL DEFAULT ((0)),
	[TrInf1] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Rsp2] [int] NOT NULL DEFAULT ((0)),
	[PrUn] [tinyint] NOT NULL DEFAULT ((0)),
	[PrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DensU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrTp] [tinyint] NOT NULL DEFAULT ((0)),
	[TrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrM1b] [int] NOT NULL DEFAULT ((0)),
	[PrM1c] [int] NOT NULL DEFAULT ((0)),
	[PrM2c] [int] NOT NULL DEFAULT ((0)),
	[PrM3b] [int] NOT NULL DEFAULT ((0)),
	[PrM3c] [int] NOT NULL DEFAULT ((0)),
	[PrM4b] [int] NOT NULL DEFAULT ((0)),
	[PrM4c] [int] NOT NULL DEFAULT ((0)),
	[PrM5b] [int] NOT NULL DEFAULT ((0)),
	[PrM5c] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[TrInf3] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf4] [varchar](40) NOT NULL DEFAULT (' '),
	[OldPNo] [varchar](40) NOT NULL DEFAULT (' '),
	[SPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EANItmNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ProdPro] [int] NOT NULL DEFAULT ((0)),
	[PrCatNo] [int] NOT NULL DEFAULT ((0)),
	[PrCatNo2] [int] NOT NULL DEFAULT ((0)),
	[NwProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[WebPg2] [varchar](260) NOT NULL DEFAULT (' '),
	[PgElNo] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrCatNo3] [int] NOT NULL DEFAULT ((0)),
	[PrCatNo4] [int] NOT NULL DEFAULT ((0)),
	[PrCatNo5] [int] NOT NULL DEFAULT ((0)),
	[PrCatNo6] [int] NOT NULL DEFAULT ((0)),
	[AgrProc] [int] NOT NULL DEFAULT ((0)),
	[NxtSerNo] [int] NOT NULL DEFAULT ((0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[ProdProcNo] [int] NOT NULL DEFAULT ((0)),
	[ChTmms] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Prod] PRIMARY KEY CLUSTERED 
(
	[ProdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdCat]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdCat](
	[PrCatNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[MainPrC] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[EBAcGr] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Txt] [varchar](240) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ProdCat] PRIMARY KEY NONCLUSTERED 
(
	[PrCatNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdCust]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdCust](
	[ProdNo] [varchar](40) NOT NULL,
	[CustNo] [int] NOT NULL,
	[CProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[StSaleUn] [int] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__ProdCust] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[CustNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdDesc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdDesc](
	[ProdNo] [varchar](40) NOT NULL,
	[LangNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ExOutp] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ProdDesc] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[LangNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdProc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdProc](
	[ProdProcNo] [int] NOT NULL,
	[CopyProc] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[PrM1] [int] NOT NULL,
	[PrM1b] [int] NOT NULL,
	[PrM1c] [int] NOT NULL,
	[PrM2] [int] NOT NULL,
	[PrM2b] [int] NOT NULL,
	[PrM2c] [int] NOT NULL,
	[PrM3] [int] NOT NULL,
	[PrM3b] [int] NOT NULL,
	[PrM3c] [int] NOT NULL,
	[PrM4] [int] NOT NULL,
	[PrM4b] [int] NOT NULL,
	[PrM4c] [int] NOT NULL,
	[PrM5] [int] NOT NULL,
	[PrM5b] [int] NOT NULL,
	[PrM5c] [int] NOT NULL,
	[ExpStr] [int] NOT NULL,
	[ProdPro] [int] NOT NULL,
	[AgrProc] [int] NOT NULL,
	[AdWage1] [int] NOT NULL,
	[AdWage2] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[ProdTp] [int] NOT NULL,
	[ProdTp2] [int] NOT NULL,
	[ProdTp3] [int] NOT NULL,
	[ProdTp4] [int] NOT NULL,
	[ProdGr] [int] NOT NULL,
	[TrInf1] [varchar](40) NOT NULL,
	[TrInf2] [varchar](40) NOT NULL,
	[TrInf3] [varchar](40) NOT NULL,
	[TrInf4] [varchar](40) NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[WageRtNo] [int] NOT NULL,
	[WageSrt] [varchar](10) NOT NULL,
	[ProdPrGr] [int] NOT NULL,
	[ProdPrG2] [int] NOT NULL,
	[ProdPrG3] [int] NOT NULL,
	[StSaleUn] [int] NOT NULL,
	[CstPrAdd] [decimal](28, 6) NOT NULL,
	[EUStatNo] [bigint] NOT NULL,
	[TrAm] [decimal](28, 6) NOT NULL,
	[SPrAdd] [decimal](28, 6) NOT NULL,
	[PrUn] [tinyint] NOT NULL,
	[CusStNo] [varchar](12) NOT NULL,
	[DesMrg] [decimal](28, 6) NOT NULL,
	[PrCatNo] [int] NOT NULL,
	[PrCatNo2] [int] NOT NULL,
	[PrCatNo3] [int] NOT NULL,
	[PrCatNo4] [int] NOT NULL,
	[PrCatNo5] [int] NOT NULL,
	[PrCatNo6] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ProdProc] PRIMARY KEY CLUSTERED 
(
	[ProdProcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdTr](
	[JNo] [int] NOT NULL,
	[TrNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[InvoDt] [int] NOT NULL DEFAULT ((0)),
	[TrTp] [tinyint] NOT NULL DEFAULT ((0)),
	[TrDt] [int] NOT NULL DEFAULT ((0)),
	[EmpNo] [int] NOT NULL DEFAULT ((0)),
	[EmpPrGr] [int] NOT NULL DEFAULT ((0)),
	[WageRtNo] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[InvoCust] [int] NOT NULL DEFAULT ((0)),
	[CustPrGr] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[RmtSup] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ProdPrGr] [int] NOT NULL DEFAULT ((0)),
	[SpecFunc] [int] NOT NULL DEFAULT ((0)),
	[StrSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ExcPrint] [int] NOT NULL DEFAULT ((0)),
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[ProcMt] [int] NOT NULL DEFAULT ((0)),
	[FrStc] [int] NOT NULL DEFAULT ((0)),
	[ToStc] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EdFmt] [int] NOT NULL DEFAULT ((0)),
	[FrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ToNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoReg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoInvoAb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRet] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoComp] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoScr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CompPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCompPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DStPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Price] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DPrice] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc1DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc2DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdGr] [int] NOT NULL DEFAULT ((0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[VatNo] [int] NOT NULL DEFAULT ((0)),
	[DstDc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DDstDc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DDstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SpcTxCd] [tinyint] NOT NULL DEFAULT ((0)),
	[SpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DSpcTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DVatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoRef] [varchar](20) NOT NULL DEFAULT (' '),
	[RefNo] [int] NOT NULL DEFAULT ((0)),
	[DelDt] [int] NOT NULL DEFAULT ((0)),
	[CfDelDt] [int] NOT NULL DEFAULT ((0)),
	[SelBuy] [int] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[ResNo] [int] NOT NULL DEFAULT ((0)),
	[WageSrt] [varchar](10) NOT NULL DEFAULT (' '),
	[AdWage1] [int] NOT NULL DEFAULT ((0)),
	[AdWage2] [int] NOT NULL DEFAULT ((0)),
	[ProdTp] [int] NOT NULL DEFAULT ((0)),
	[TransGr] [int] NOT NULL DEFAULT ((0)),
	[IncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ShpNo] [int] NOT NULL DEFAULT ((0)),
	[PurcNo] [int] NOT NULL DEFAULT ((0)),
	[SerNo] [varchar](40) NOT NULL DEFAULT (' '),
	[Loc] [varchar](18) NOT NULL DEFAULT (' '),
	[DurDt] [int] NOT NULL DEFAULT ((0)),
	[ExQty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RlDelDt] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[DelAltNo] [int] NOT NULL DEFAULT ((0)),
	[ToShpNo] [int] NOT NULL DEFAULT ((0)),
	[CstCur] [int] NOT NULL DEFAULT ((0)),
	[CstExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CIncCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[CstPrAdd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelMt] [int] NOT NULL DEFAULT ((0)),
	[SCd] [varchar](52) NOT NULL DEFAULT (' '),
	[ERetDt] [int] NOT NULL DEFAULT ((0)),
	[RlRetDt] [int] NOT NULL DEFAULT ((0)),
	[EUStatNo] [bigint] NOT NULL DEFAULT ((0)),
	[ProdTp2] [int] NOT NULL DEFAULT ((0)),
	[TransGr2] [int] NOT NULL DEFAULT ((0)),
	[Factor3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ArDt] [int] NOT NULL DEFAULT ((0)),
	[Stat1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Stat2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdPrG2] [int] NOT NULL DEFAULT ((0)),
	[ProdPrG3] [int] NOT NULL DEFAULT ((0)),
	[CustPrG2] [int] NOT NULL DEFAULT ((0)),
	[NoUn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[YrPr] [int] NOT NULL DEFAULT ((0)),
	[YrWk] [int] NOT NULL DEFAULT ((0)),
	[InvoPlLn] [tinyint] NOT NULL DEFAULT ((0)),
	[FreeNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NWgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WdtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NWgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolL] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrUn] [tinyint] NOT NULL DEFAULT ((0)),
	[FinBy] [varchar](24) NOT NULL DEFAULT (' '),
	[TransGr3] [int] NOT NULL DEFAULT ((0)),
	[TransGr4] [int] NOT NULL DEFAULT ((0)),
	[ProdTp3] [int] NOT NULL DEFAULT ((0)),
	[ProdTp4] [int] NOT NULL DEFAULT ((0)),
	[TrInf1] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Tenancy] [int] NOT NULL DEFAULT ((0)),
	[PrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LiaActNo] [int] NOT NULL DEFAULT ((0)),
	[DensU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PriceF] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FCfDelDt] [int] NOT NULL DEFAULT ((0)),
	[PrTp] [int] NOT NULL DEFAULT ((0)),
	[Cus] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RepNo] [int] NOT NULL DEFAULT ((0)),
	[FinDt] [int] NOT NULL DEFAULT ((0)),
	[EditPref] [int] NOT NULL DEFAULT ((0)),
	[FinTm] [smallint] NOT NULL DEFAULT ((0)),
	[Dc3P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc3Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc3DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc4DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc5DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6P] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dc6DAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[OrCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrFrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrFrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrFrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrFrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrCusAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrInf3] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[CustPrG3] [int] NOT NULL DEFAULT ((0)),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[TspAgrNo] [int] NOT NULL DEFAULT ((0)),
	[SugPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FinYrPr] [int] NOT NULL DEFAULT ((0)),
	[FinYrWk] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[StcMov] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TrYrPr] [int] NOT NULL DEFAULT ((0)),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[LiaAct2] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[DesProDt] [int] NOT NULL DEFAULT ((0)),
	[ShpTrIn1] [varchar](22) NOT NULL DEFAULT (' '),
	[ShpTrIn2] [varchar](22) NOT NULL DEFAULT (' '),
	[SrcTp] [int] NOT NULL DEFAULT ((0)),
	[LnPurcNo] [int] NOT NULL DEFAULT ((0)),
	[RealJNo] [int] NOT NULL DEFAULT ((0)),
	[NoRlz] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoOrg] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[DCstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StcCst] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[VatRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[OrdLnNo] [int] NOT NULL DEFAULT ((0)),
	[StHLnNo] [int] NOT NULL DEFAULT ((0)),
	[ProdProcNo] [int] NOT NULL DEFAULT ((0)),
	[ToLoc] [varchar](18) NOT NULL DEFAULT (' '),
	[StcChRealJNo] [int] NOT NULL DEFAULT ((0)),
	[StcChRealLnNo] [int] NOT NULL DEFAULT ((0)),
	[StcValRealJNo] [int] NOT NULL DEFAULT ((0)),
	[StcValRealLnNo] [int] NOT NULL DEFAULT ((0)),
	[CorStcValRealJNo] [int] NOT NULL DEFAULT ((0)),
	[CorStcValRealLnNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__ProdTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[TrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProdTr2]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProdTr2](
	[JNo] [int] NOT NULL,
	[TrNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[InvoDt] [int] NOT NULL,
	[TrTp] [tinyint] NOT NULL,
	[TrDt] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[EmpPrGr] [int] NOT NULL,
	[WageRtNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[InvoCust] [int] NOT NULL,
	[CustPrGr] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[RmtSup] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[ProdPrGr] [int] NOT NULL,
	[SpecFunc] [int] NOT NULL,
	[StrSt] [tinyint] NOT NULL,
	[ExcPrint] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL,
	[ProcMt] [int] NOT NULL,
	[FrStc] [int] NOT NULL,
	[ToStc] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[StUnRt] [decimal](28, 6) NOT NULL,
	[EdFmt] [int] NOT NULL,
	[FrNo] [decimal](28, 6) NOT NULL,
	[ToNo] [decimal](28, 6) NOT NULL,
	[NoReg] [decimal](28, 6) NOT NULL,
	[NoInvoAb] [decimal](28, 6) NOT NULL,
	[NoRet] [decimal](28, 6) NOT NULL,
	[NoComp] [decimal](28, 6) NOT NULL,
	[NoScr] [decimal](28, 6) NOT NULL,
	[CompPr] [decimal](28, 6) NOT NULL,
	[DCompPr] [decimal](28, 6) NOT NULL,
	[CstPr] [decimal](28, 6) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[StPr] [decimal](28, 6) NOT NULL,
	[DStPr] [decimal](28, 6) NOT NULL,
	[Price] [decimal](28, 6) NOT NULL,
	[DPrice] [decimal](28, 6) NOT NULL,
	[Dc1P] [decimal](28, 6) NOT NULL,
	[Dc1Am] [decimal](28, 6) NOT NULL,
	[Dc1DAm] [decimal](28, 6) NOT NULL,
	[Dc2P] [decimal](28, 6) NOT NULL,
	[Dc2Am] [decimal](28, 6) NOT NULL,
	[Dc2DAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[ProdGr] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[VatNo] [int] NOT NULL,
	[DstDc] [decimal](28, 6) NOT NULL,
	[DDstDc] [decimal](28, 6) NOT NULL,
	[DstAd] [decimal](28, 6) NOT NULL,
	[DDstAd] [decimal](28, 6) NOT NULL,
	[SpcTxCd] [tinyint] NOT NULL,
	[SpcTxAm] [decimal](28, 6) NOT NULL,
	[DSpcTxAm] [decimal](28, 6) NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[DVatAm] [decimal](28, 6) NOT NULL,
	[InvoRef] [varchar](20) NOT NULL,
	[RefNo] [int] NOT NULL,
	[DelDt] [int] NOT NULL,
	[CfDelDt] [int] NOT NULL,
	[SelBuy] [int] NOT NULL,
	[Rsp] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[WageSrt] [varchar](10) NOT NULL,
	[AdWage1] [int] NOT NULL,
	[AdWage2] [int] NOT NULL,
	[ProdTp] [int] NOT NULL,
	[TransGr] [int] NOT NULL,
	[IncCst] [decimal](28, 6) NOT NULL,
	[ShpNo] [int] NOT NULL,
	[PurcNo] [int] NOT NULL,
	[SerNo] [varchar](40) NOT NULL,
	[Loc] [varchar](18) NOT NULL,
	[DurDt] [int] NOT NULL,
	[ExQty] [decimal](28, 6) NOT NULL,
	[RlDelDt] [int] NOT NULL,
	[Ctrl] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DelAltNo] [int] NOT NULL,
	[ToShpNo] [int] NOT NULL,
	[CstCur] [int] NOT NULL,
	[CstExRt] [decimal](28, 6) NOT NULL,
	[CCstPr] [decimal](28, 6) NOT NULL,
	[CIncCst] [decimal](28, 6) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[DelActNo] [int] NOT NULL,
	[CstPrAdd] [decimal](28, 6) NOT NULL,
	[DelMt] [int] NOT NULL,
	[SCd] [varchar](52) NOT NULL,
	[ERetDt] [int] NOT NULL,
	[RlRetDt] [int] NOT NULL,
	[EUStatNo] [bigint] NOT NULL,
	[ProdTp2] [int] NOT NULL,
	[TransGr2] [int] NOT NULL,
	[Factor3] [decimal](28, 6) NOT NULL,
	[ArDt] [int] NOT NULL,
	[Stat1] [decimal](28, 6) NOT NULL,
	[Stat2] [decimal](28, 6) NOT NULL,
	[ProdPrG2] [int] NOT NULL,
	[ProdPrG3] [int] NOT NULL,
	[CustPrG2] [int] NOT NULL,
	[NoUn] [decimal](28, 6) NOT NULL,
	[YrPr] [int] NOT NULL,
	[YrWk] [int] NOT NULL,
	[InvoPlLn] [tinyint] NOT NULL,
	[FreeNo] [decimal](28, 6) NOT NULL,
	[NWgtU] [decimal](28, 6) NOT NULL,
	[TareU] [decimal](28, 6) NOT NULL,
	[LgtU] [decimal](28, 6) NOT NULL,
	[WdtU] [decimal](28, 6) NOT NULL,
	[HgtU] [decimal](28, 6) NOT NULL,
	[AreaU] [decimal](28, 6) NOT NULL,
	[VolU] [decimal](28, 6) NOT NULL,
	[NWgtL] [decimal](28, 6) NOT NULL,
	[TareL] [decimal](28, 6) NOT NULL,
	[LgtL] [decimal](28, 6) NOT NULL,
	[AreaL] [decimal](28, 6) NOT NULL,
	[VolL] [decimal](28, 6) NOT NULL,
	[FrAm1] [decimal](28, 6) NOT NULL,
	[FrAm2] [decimal](28, 6) NOT NULL,
	[FrAm3] [decimal](28, 6) NOT NULL,
	[FrAm4] [decimal](28, 6) NOT NULL,
	[PrUn] [tinyint] NOT NULL,
	[FinBy] [varchar](24) NOT NULL,
	[TransGr3] [int] NOT NULL,
	[TransGr4] [int] NOT NULL,
	[ProdTp3] [int] NOT NULL,
	[ProdTp4] [int] NOT NULL,
	[TrInf1] [varchar](40) NOT NULL,
	[TrInf2] [varchar](40) NOT NULL,
	[Tenancy] [int] NOT NULL,
	[PrNo] [decimal](28, 6) NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[DensU] [decimal](28, 6) NOT NULL,
	[PriceF] [decimal](28, 6) NOT NULL,
	[FCfDelDt] [int] NOT NULL,
	[PrTp] [int] NOT NULL,
	[Cus] [decimal](28, 6) NOT NULL,
	[RepNo] [int] NOT NULL,
	[FinDt] [int] NOT NULL,
	[EditPref] [int] NOT NULL,
	[FinTm] [smallint] NOT NULL,
	[Dc3P] [decimal](28, 6) NOT NULL,
	[Dc3Am] [decimal](28, 6) NOT NULL,
	[Dc3DAm] [decimal](28, 6) NOT NULL,
	[Dc4P] [decimal](28, 6) NOT NULL,
	[Dc4Am] [decimal](28, 6) NOT NULL,
	[Dc4DAm] [decimal](28, 6) NOT NULL,
	[Dc5P] [decimal](28, 6) NOT NULL,
	[Dc5Am] [decimal](28, 6) NOT NULL,
	[Dc5DAm] [decimal](28, 6) NOT NULL,
	[Dc6P] [decimal](28, 6) NOT NULL,
	[Dc6Am] [decimal](28, 6) NOT NULL,
	[Dc6DAm] [decimal](28, 6) NOT NULL,
	[TransSt] [int] NOT NULL,
	[OrCstPr] [decimal](28, 6) NOT NULL,
	[OrFrAm] [decimal](28, 6) NOT NULL,
	[OrFrAm2] [decimal](28, 6) NOT NULL,
	[OrFrAm3] [decimal](28, 6) NOT NULL,
	[OrFrAm4] [decimal](28, 6) NOT NULL,
	[OrCusAm] [decimal](28, 6) NOT NULL,
	[TrInf3] [varchar](40) NOT NULL,
	[TrInf4] [varchar](40) NOT NULL,
	[Free1] [decimal](28, 6) NOT NULL,
	[Free2] [decimal](28, 6) NOT NULL,
	[Free3] [decimal](28, 6) NOT NULL,
	[Free4] [decimal](28, 6) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[CustPrG3] [int] NOT NULL,
	[WebPg] [varchar](260) NOT NULL,
	[TspAgrNo] [int] NOT NULL,
	[SugPr] [decimal](28, 6) NOT NULL,
	[FinYrPr] [int] NOT NULL,
	[FinYrWk] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[StcMov] [decimal](28, 6) NOT NULL,
	[TrYrPr] [int] NOT NULL,
	[PropPrc] [tinyint] NOT NULL,
	[PropNo] [int] NOT NULL,
	[AcYrPr] [int] NOT NULL,
	[LiaAct2] [int] NOT NULL,
	[WfId] [int] NOT NULL,
	[PLDNo] [int] NOT NULL,
	[PLDFlow] [int] NOT NULL,
	[CID] [varchar](30) NOT NULL,
	[DesProDt] [int] NOT NULL,
	[ShpTrIn1] [varchar](22) NOT NULL,
	[ShpTrIn2] [varchar](22) NOT NULL,
	[SrcTp] [int] NOT NULL,
	[LnPurcNo] [int] NOT NULL,
	[RealJNo] [int] NOT NULL,
	[NoRlz] [decimal](28, 6) NOT NULL,
	[NoOrg] [decimal](28, 6) NOT NULL,
	[InInc] [decimal](28, 6) NOT NULL,
	[PrK] [int] NOT NULL,
	[DCstAd] [decimal](28, 6) NOT NULL,
	[StcCst] [decimal](28, 6) NOT NULL,
	[Srt] [int] NOT NULL,
	[VatRt] [decimal](28, 6) NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[StHLnNo] [int] NOT NULL,
	[ProdProcNo] [int] NOT NULL,
	[ToLoc] [varchar](18) NOT NULL,
	[StcChRealJNo] [int] NOT NULL,
	[StcChRealLnNo] [int] NOT NULL,
	[StcValRealJNo] [int] NOT NULL,
	[StcValRealLnNo] [int] NOT NULL,
	[CorStcValRealJNo] [int] NOT NULL,
	[CorStcValRealLnNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[Ctry] [int] NOT NULL,
 CONSTRAINT [PK__ProdTr2] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[TrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prog]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prog](
	[ProgNo] [int] NOT NULL,
	[ExeNm] [varchar](260) NOT NULL,
	[ProgPath] [varchar](260) NOT NULL,
	[DataPath] [varchar](260) NOT NULL,
	[DocExt] [char](5) NOT NULL,
	[ProgLang] [tinyint] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DocProc] [int] NOT NULL,
	[TempPath] [varchar](260) NOT NULL,
	[InPath] [varchar](260) NOT NULL,
	[Icon] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Prog] PRIMARY KEY NONCLUSTERED 
(
	[ProgNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prop]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prop](
	[PropNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[PropClNo] [int] NOT NULL DEFAULT ((0)),
	[PurcDt] [int] NOT NULL DEFAULT ((0)),
	[LifeTm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WORt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LstWODt] [int] NOT NULL DEFAULT ((0)),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[SCd] [varchar](52) NOT NULL DEFAULT (' '),
	[SerNo] [varchar](40) NOT NULL DEFAULT (' '),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[Buyer] [int] NOT NULL DEFAULT ((0)),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[WarToDt] [int] NOT NULL DEFAULT ((0)),
	[SrvAgrNo] [int] NOT NULL DEFAULT ((0)),
	[SrvAgrSp] [int] NOT NULL DEFAULT ((0)),
	[SrvToDt] [int] NOT NULL DEFAULT ((0)),
	[RevalDt] [int] NOT NULL DEFAULT ((0)),
	[InsurVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EstVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[TxCd] [int] NOT NULL DEFAULT ((0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg2] [varchar](260) NOT NULL DEFAULT (' '),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[ScrapV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AdLifeTm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrLifeTm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AdWORt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrWORt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NewPropNo] [int] NOT NULL DEFAULT ((0)),
	[OldPropNo] [int] NOT NULL DEFAULT ((0)),
	[DstGr] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[EndDtInv] [int] NOT NULL DEFAULT ((0)),
	[EndDtAdd] [int] NOT NULL DEFAULT ((0)),
	[EndDtWrU] [int] NOT NULL DEFAULT ((0)),
	[IncAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AccWOAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[PropSt] [int] NOT NULL DEFAULT ((0)),
	[TrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[ProdGr] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PropPref] [int] NOT NULL DEFAULT ((0)),
	[PurcDtAdd] [int] NOT NULL DEFAULT ((0)),
	[PurcDtWrU] [int] NOT NULL DEFAULT ((0)),
	[EndDtWd] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Prop] PRIMARY KEY CLUSTERED 
(
	[PropNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropBal](
	[PropNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrUpIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrUpCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrDnIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrDnCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrOfIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WrOfCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SaleIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SaleCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DiscIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DiscCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[WAWrOfIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WAWrOfCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PuWOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PuWOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PuAfIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PuAfCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOAddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOAddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOAWOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOAWOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWUIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWUCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWUAWIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWUAWCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CPurcIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CPurcCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CAddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CAddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrUpIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrUpCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrDnIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrDnCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrOfIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWrOfCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSaleIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSaleCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CDiscIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CDiscCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWAWrOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWAWrOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CPuWOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CPuWOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOAddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOAddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOWUIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOWUCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2PurcIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2PurcCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2AddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2AddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrUpIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrUpCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrDnIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrDnCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrOfIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WrOfCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2SaleIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2SaleCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2DiscIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2DiscCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WAWrOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WAWrOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2PuWOIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2PuWOCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOAddIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOAddCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOWUIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOWUCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWdIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOWdCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOWdIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CWOWdCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOWdIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[C2WOWdCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__PropBal] PRIMARY KEY NONCLUSTERED 
(
	[PropNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropCl]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropCl](
	[PropClNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[WORt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WOYr] [tinyint] NOT NULL DEFAULT ((0)),
	[PropAc] [int] NOT NULL DEFAULT ((0)),
	[WOCstAc] [int] NOT NULL DEFAULT ((0)),
	[AccWOAc] [int] NOT NULL DEFAULT ((0)),
	[BalGrNo] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[ScrapV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncAcNo] [int] NOT NULL DEFAULT ((0)),
	[CstAcNo] [int] NOT NULL DEFAULT ((0)),
	[LossAcNo] [int] NOT NULL DEFAULT ((0)),
	[LiqAcNo] [int] NOT NULL DEFAULT ((0)),
	[PropPref] [int] NOT NULL DEFAULT ((0)),
	[WdAc] [int] NOT NULL DEFAULT ((0)),
	[WdWOCstAc] [int] NOT NULL DEFAULT ((0)),
	[WdAccWOAc] [int] NOT NULL DEFAULT ((0)),
	[WuAc] [int] NOT NULL DEFAULT ((0)),
	[WuWOCstAc] [int] NOT NULL DEFAULT ((0)),
	[WuAccWOAc] [int] NOT NULL DEFAULT ((0)),
	[AddAc] [int] NOT NULL DEFAULT ((0)),
	[AddWOCstAc] [int] NOT NULL DEFAULT ((0)),
	[AddAccWOAc] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__PropCl] PRIMARY KEY NONCLUSTERED 
(
	[PropClNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[AcAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[GenAcNo] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[Sup] [int] NOT NULL DEFAULT ((0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[EntAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Bas] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTxAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TxCd] [int] NOT NULL DEFAULT ((0)),
	[VatRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTxRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WthRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WthAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[TxCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[TxYrVoD] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrmVoD] [smallint] NOT NULL DEFAULT ((0)),
	[TxStNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__PropTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proxy]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proxy](
	[ActNo] [int] NOT NULL,
	[BankLnNo] [int] NOT NULL,
	[PrxNo] [int] NOT NULL,
	[PrxActNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[PrxTp] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Proxy] PRIMARY KEY NONCLUSTERED 
(
	[ActNo] ASC,
	[BankLnNo] ASC,
	[PrxNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrRep]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrRep](
	[SupNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[PrePrice] [decimal](28, 6) NOT NULL,
	[NewPrice] [decimal](28, 6) NOT NULL,
	[Bal] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[RepSt] [tinyint] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[RepNo] [int] NOT NULL,
	[StcInc] [decimal](28, 6) NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[PreDPr] [decimal](28, 6) NOT NULL,
	[NewDPr] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[PreDcP] [decimal](28, 6) NOT NULL,
	[PreDcAm] [decimal](28, 6) NOT NULL,
	[PreDcDAm] [decimal](28, 6) NOT NULL,
	[NewDcP] [decimal](28, 6) NOT NULL,
	[NewDcAm] [decimal](28, 6) NOT NULL,
	[NewDcDAm] [decimal](28, 6) NOT NULL,
	[Stc] [int] NOT NULL,
	[PrRepP] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PrRep] PRIMARY KEY NONCLUSTERED 
(
	[SupNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prtcp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prtcp](
	[SeqNo] [int] NOT NULL,
	[CmpNo] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[AdNo] [int] NOT NULL,
	[Att] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[RspTp] [int] NOT NULL,
	[Trf] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Num] [decimal](28, 6) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Prtcp] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurcS]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurcS](
	[PurcSNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[OrdTp] [tinyint] NOT NULL,
	[ColDel] [tinyint] NOT NULL,
	[Keep] [tinyint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PurcS] PRIMARY KEY NONCLUSTERED 
(
	[PurcSNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurcSLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurcSLn](
	[PurcSNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[DelAltNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[ArDt] [int] NOT NULL,
	[TanspTm] [smallint] NOT NULL,
	[DelDt] [int] NOT NULL,
	[DelTm] [smallint] NOT NULL,
	[PurcDt] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[Num] [decimal](28, 6) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Prod] [tinyint] NOT NULL,
	[NumBefR] [decimal](28, 6) NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[OvDelDt] [int] NOT NULL,
	[ProdTm] [smallint] NOT NULL,
	[StUnRt] [decimal](28, 6) NOT NULL,
	[ToStcNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__PurcSLn] PRIMARY KEY NONCLUSTERED 
(
	[PurcSNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R1]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R1](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Ad1] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad2] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad3] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad4] [varchar](60) NOT NULL DEFAULT (' '),
	[PNo] [varchar](40) NOT NULL DEFAULT (' '),
	[PArea] [varchar](60) NOT NULL DEFAULT (' '),
	[Prin] [varchar](80) NOT NULL DEFAULT (' '),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[St] [int] NOT NULL DEFAULT ((0)),
	[Susp] [int] NOT NULL DEFAULT ((0)),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[MainR1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[AccRes] [tinyint] NOT NULL DEFAULT ((0)),
	[EStDt] [int] NOT NULL DEFAULT ((0)),
	[EEndDt] [int] NOT NULL DEFAULT ((0)),
	[RStDt] [int] NOT NULL DEFAULT ((0)),
	[REndDt] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[IntAd] [varchar](260) NOT NULL DEFAULT (' '),
	[MailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Am1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ActNo1] [int] NOT NULL DEFAULT ((0)),
	[ActNo2] [int] NOT NULL DEFAULT ((0)),
	[ActNo3] [int] NOT NULL DEFAULT ((0)),
	[ActNo4] [int] NOT NULL DEFAULT ((0)),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[Dt3] [int] NOT NULL DEFAULT ((0)),
	[Dt4] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[LiaActNo] [int] NOT NULL DEFAULT ((0)),
	[NewRNo] [int] NOT NULL DEFAULT ((0)),
	[OldRNo] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[BalProc] [int] NOT NULL DEFAULT ((0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__R1] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R10]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R10](
	[RNo] [varchar](10) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[MainR10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](10) NOT NULL,
	[OldRNo] [varchar](10) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R10] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R10Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R10Bal](
	[R10] [varchar](10) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R10Bal] PRIMARY KEY NONCLUSTERED 
(
	[R10] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R11]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R11](
	[RNo] [varchar](10) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[MainR11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](10) NOT NULL,
	[OldRNo] [varchar](10) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R11] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R11Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R11Bal](
	[R11] [varchar](10) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R11Bal] PRIMARY KEY NONCLUSTERED 
(
	[R11] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R12]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R12](
	[RNo] [varchar](10) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[MainR12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](10) NOT NULL,
	[OldRNo] [varchar](10) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R12] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R12Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R12Bal](
	[R12] [varchar](10) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R12Bal] PRIMARY KEY NONCLUSTERED 
(
	[R12] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R1Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R1Bal](
	[R1] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R1Bal] PRIMARY KEY NONCLUSTERED 
(
	[R1] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R2]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R2](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[MainR2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [int] NOT NULL,
	[OldRNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R2] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R2Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R2Bal](
	[R2] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R2Bal] PRIMARY KEY NONCLUSTERED 
(
	[R2] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R3]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R3](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[MainR3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [int] NOT NULL,
	[OldRNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R3] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R3Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R3Bal](
	[R3] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R3Bal] PRIMARY KEY NONCLUSTERED 
(
	[R3] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R4]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R4](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[MainR4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [int] NOT NULL,
	[OldRNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R4] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R4Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R4Bal](
	[R4] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R4Bal] PRIMARY KEY NONCLUSTERED 
(
	[R4] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R5]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R5](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[MainR5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [int] NOT NULL,
	[OldRNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R5] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R5Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R5Bal](
	[R5] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R5Bal] PRIMARY KEY NONCLUSTERED 
(
	[R5] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R6]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R6](
	[RNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[MainR6] [int] NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [int] NOT NULL,
	[OldRNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R6] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R6Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R6Bal](
	[R6] [int] NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R6Bal] PRIMARY KEY NONCLUSTERED 
(
	[R6] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R7]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R7](
	[RNo] [varchar](40) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[MainR7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](40) NOT NULL,
	[OldRNo] [varchar](40) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R7] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R7Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R7Bal](
	[R7] [varchar](40) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R7Bal] PRIMARY KEY NONCLUSTERED 
(
	[R7] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R8]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R8](
	[RNo] [varchar](10) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[MainR8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](10) NOT NULL,
	[OldRNo] [varchar](10) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R8] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R8Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R8Bal](
	[R8] [varchar](10) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R8Bal] PRIMARY KEY NONCLUSTERED 
(
	[R8] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R9]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R9](
	[RNo] [varchar](10) NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[Ad1] [varchar](60) NOT NULL,
	[Ad2] [varchar](60) NOT NULL,
	[Ad3] [varchar](60) NOT NULL,
	[Ad4] [varchar](60) NOT NULL,
	[PNo] [varchar](40) NOT NULL,
	[PArea] [varchar](60) NOT NULL,
	[IntAd] [varchar](260) NOT NULL,
	[MailAd] [varchar](60) NOT NULL,
	[Prin] [varchar](80) NOT NULL,
	[Rsp] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[St] [int] NOT NULL,
	[Susp] [int] NOT NULL,
	[Gr] [int] NOT NULL,
	[Gr2] [int] NOT NULL,
	[Gr3] [int] NOT NULL,
	[Gr4] [int] NOT NULL,
	[Gr5] [int] NOT NULL,
	[Gr6] [int] NOT NULL,
	[Gr7] [int] NOT NULL,
	[Gr8] [int] NOT NULL,
	[Gr9] [int] NOT NULL,
	[Gr10] [int] NOT NULL,
	[Gr11] [int] NOT NULL,
	[Gr12] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[Inf7] [varchar](40) NOT NULL,
	[Inf8] [varchar](40) NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[MainR9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[AccRes] [tinyint] NOT NULL,
	[EStDt] [int] NOT NULL,
	[EEndDt] [int] NOT NULL,
	[RStDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Am1] [decimal](28, 6) NOT NULL,
	[Am2] [decimal](28, 6) NOT NULL,
	[Am3] [decimal](28, 6) NOT NULL,
	[Am4] [decimal](28, 6) NOT NULL,
	[ActNo1] [int] NOT NULL,
	[ActNo2] [int] NOT NULL,
	[ActNo3] [int] NOT NULL,
	[ActNo4] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Ctry] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[NewRNo] [varchar](10) NOT NULL,
	[OldRNo] [varchar](10) NOT NULL,
	[Cur] [int] NOT NULL,
	[Cur2] [int] NOT NULL,
	[BalProc] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R9] PRIMARY KEY NONCLUSTERED 
(
	[RNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[R9Bal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[R9Bal](
	[R9] [varchar](10) NOT NULL,
	[AcNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL,
	[CrIB] [decimal](28, 6) NOT NULL,
	[DbCh] [decimal](28, 6) NOT NULL,
	[CrCh] [decimal](28, 6) NOT NULL,
	[DbCurIB] [decimal](28, 6) NOT NULL,
	[CrCurIB] [decimal](28, 6) NOT NULL,
	[DbCurCh] [decimal](28, 6) NOT NULL,
	[CrCurCh] [decimal](28, 6) NOT NULL,
	[DbQtyIB] [decimal](28, 6) NOT NULL,
	[CrQtyIB] [decimal](28, 6) NOT NULL,
	[DbQtyCh] [decimal](28, 6) NOT NULL,
	[CrQtyCh] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[DbAutCh] [decimal](28, 6) NOT NULL,
	[CrAutCh] [decimal](28, 6) NOT NULL,
	[DbAutCCh] [decimal](28, 6) NOT NULL,
	[CrAutCCh] [decimal](28, 6) NOT NULL,
	[DbAutQCh] [decimal](28, 6) NOT NULL,
	[CrAutQCh] [decimal](28, 6) NOT NULL,
	[DbCur2IB] [decimal](28, 6) NOT NULL,
	[CrCur2IB] [decimal](28, 6) NOT NULL,
	[DbCur2Ch] [decimal](28, 6) NOT NULL,
	[CrCur2Ch] [decimal](28, 6) NOT NULL,
	[DbAutC2Ch] [decimal](28, 6) NOT NULL,
	[CrAutC2Ch] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__R9Bal] PRIMARY KEY NONCLUSTERED 
(
	[R9] ASC,
	[AcNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RealJ]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RealJ](
	[RealJNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Prc] [tinyint] NOT NULL,
	[TrCnt] [int] NOT NULL,
	[JNo] [int] NOT NULL,
 CONSTRAINT [PK__RealJ] PRIMARY KEY NONCLUSTERED 
(
	[RealJNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RealJLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RealJLn](
	[RealJNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[OrdJNo] [int] NOT NULL,
	[TrNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[VoJNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ValDt] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[StcCh] [decimal](28, 6) NOT NULL,
	[StcCst] [decimal](28, 6) NOT NULL,
	[RlStcVal] [decimal](28, 6) NOT NULL,
	[JDt] [int] NOT NULL,
	[RlOr] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__RealJLn] PRIMARY KEY NONCLUSTERED 
(
	[RealJNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RemLtr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RemLtr](
	[Ctry] [int] NOT NULL,
	[LtrNo] [tinyint] NOT NULL,
	[RemIntv] [smallint] NOT NULL DEFAULT ((0)),
	[MinRemAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Fee] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__RemLtr] PRIMARY KEY NONCLUSTERED 
(
	[Ctry] ASC,
	[LtrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RepNt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RepNt](
	[RepNtNo] [int] NOT NULL,
	[DfNo] [int] NOT NULL,
	[AcGr] [varchar](60) NOT NULL,
	[AcTp] [tinyint] NOT NULL,
	[FrAcNo] [int] NOT NULL,
	[ToAcNo] [int] NOT NULL,
	[FrValDt] [int] NOT NULL,
	[ToValDt] [int] NOT NULL,
	[Note] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__RepNt] PRIMARY KEY NONCLUSTERED 
(
	[RepNtNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Res]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Res](
	[ResNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[ReadInt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[TSGrNo] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[PropNo] [int] NOT NULL,
	[Rsp] [int] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[WebPg1] [varchar](260) NOT NULL,
	[WebPg2] [varchar](260) NOT NULL,
	[ProgNo] [int] NOT NULL,
	[TLnNo] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[MinQty] [decimal](28, 6) NOT NULL,
	[MaxQty] [decimal](28, 6) NOT NULL,
	[FixedQty] [decimal](28, 6) NOT NULL,
	[AgrProc] [int] NOT NULL,
	[DebDy] [int] NOT NULL,
	[ProdPrGr] [int] NOT NULL,
	[ProdPrG2] [int] NOT NULL,
	[ProdPrG3] [int] NOT NULL,
	[StdWageSrt] [varchar](10) NOT NULL,
	[OTWageSrt] [varchar](10) NOT NULL,
	[OT1WageRtN] [int] NOT NULL,
	[OT2WageRtN] [int] NOT NULL,
	[ChTmms] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Res] PRIMARY KEY NONCLUSTERED 
(
	[ResNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResRsv]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResRsv](
	[ResNo] [int] NOT NULL,
	[RsvNo] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[FrTm] [smallint] NOT NULL,
	[ToTm] [smallint] NOT NULL,
	[ActNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Fin] [tinyint] NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[R1] [int] NOT NULL,
	[R2] [int] NOT NULL,
	[R3] [int] NOT NULL,
	[R4] [int] NOT NULL,
	[R5] [int] NOT NULL,
	[R6] [int] NOT NULL,
	[R7] [varchar](40) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[R9] [varchar](10) NOT NULL,
	[R10] [varchar](10) NOT NULL,
	[R11] [varchar](10) NOT NULL,
	[R12] [varchar](10) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ResRsv] PRIMARY KEY NONCLUSTERED 
(
	[ResNo] ASC,
	[RsvNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RptLbl]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RptLbl](
	[RptNo] [int] NOT NULL,
	[ExpTp] [char](4) NOT NULL,
	[R8] [varchar](10) NOT NULL,
	[TblID] [varchar](40) NOT NULL,
	[Price] [decimal](28, 6) NOT NULL,
	[PrTp] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[Orig] [varchar](20) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__RptLbl] PRIMARY KEY NONCLUSTERED 
(
	[RptNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RspTp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RspTp](
	[RspTpNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Num] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Fin] [tinyint] NOT NULL DEFAULT ((0)),
	[MinNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AgrProc] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__RspTp] PRIMARY KEY NONCLUSTERED 
(
	[RspTpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rsv]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rsv](
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[SeqNo] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[TrfShpNo] [int] NOT NULL,
	[SerNo] [varchar](40) NOT NULL,
	[Loc] [varchar](18) NOT NULL,
	[Num] [decimal](28, 6) NOT NULL,
	[NoRet] [decimal](28, 6) NOT NULL,
	[NoComp] [decimal](28, 6) NOT NULL,
	[NoScr] [decimal](28, 6) NOT NULL,
	[NoRsv] [decimal](28, 6) NOT NULL,
	[NoPic] [decimal](28, 6) NOT NULL,
	[NoRlz] [decimal](28, 6) NOT NULL,
	[RlDelDt] [int] NOT NULL,
	[CstPr] [decimal](28, 6) NOT NULL,
	[DurDt] [int] NOT NULL,
	[JNo] [int] NOT NULL,
	[TrNo] [int] NOT NULL,
	[TrfJNo] [int] NOT NULL,
	[TrfTrNo] [int] NOT NULL,
	[PicRunNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Dupl] [int] NOT NULL,
	[CstCur] [int] NOT NULL,
	[CstExRt] [decimal](28, 6) NOT NULL,
	[CCstPr] [decimal](28, 6) NOT NULL,
	[NoFin] [decimal](28, 6) NOT NULL,
	[RlRetDt] [int] NOT NULL,
	[FinBy] [varchar](24) NOT NULL,
	[Fr] [decimal](28, 6) NOT NULL,
	[Fr2] [decimal](28, 6) NOT NULL,
	[Fr3] [decimal](28, 6) NOT NULL,
	[Fr4] [decimal](28, 6) NOT NULL,
	[Cus] [decimal](28, 6) NOT NULL,
	[FinTm] [smallint] NOT NULL,
	[RetN] [decimal](28, 6) NOT NULL,
	[CompN] [decimal](28, 6) NOT NULL,
	[ScrN] [decimal](28, 6) NOT NULL,
	[PicN] [decimal](28, 6) NOT NULL,
	[RlzN] [decimal](28, 6) NOT NULL,
	[FinN] [decimal](28, 6) NOT NULL,
	[PictFNm] [varchar](260) NOT NULL,
	[TrInf1] [varchar](22) NOT NULL,
	[TrInf2] [varchar](22) NOT NULL,
	[WfId] [int] NOT NULL,
	[PLDNo] [int] NOT NULL,
	[PLDFlow] [int] NOT NULL,
	[InvoNo] [varchar](20) NOT NULL,
	[RealJNo] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[FrStc] [int] NOT NULL,
	[TrTp] [tinyint] NOT NULL,
	[NoRsvInc] [decimal](28, 6) NOT NULL,
	[ToStc] [int] NOT NULL,
	[DCstAd] [decimal](28, 6) NOT NULL,
	[ToLoc] [varchar](18) NOT NULL,
	[NoPac] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
	[PurcNo] [int] NOT NULL,
	[LnPurcNo] [int] NOT NULL,
 CONSTRAINT [PK__Rsv] PRIMARY KEY NONCLUSTERED 
(
	[OrdNo] ASC,
	[OrdLnNo] ASC,
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RVo]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RVo](
	[RVNo] [int] NOT NULL,
	[PosID] [int] NOT NULL,
	[VoNo] [int] NOT NULL,
	[StDt] [int] NOT NULL,
	[StTm] [smallint] NOT NULL,
	[Seller] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[DDiscAm] [decimal](28, 6) NOT NULL,
	[DVatAm] [decimal](28, 6) NOT NULL,
	[DAm] [decimal](28, 6) NOT NULL,
	[EndDt] [int] NOT NULL,
	[EndTm] [smallint] NOT NULL,
	[CancelFl] [char](1) NOT NULL,
	[TstSt] [char](1) NOT NULL,
	[StrtSeq] [int] NOT NULL,
	[StopSeq] [int] NOT NULL,
	[CustTp] [int] NOT NULL,
	[VoTp] [int] NOT NULL,
	[St] [char](1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[JNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[ElJNo] [int] NOT NULL,
	[StlmJNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__RVo] PRIMARY KEY NONCLUSTERED 
(
	[RVNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RVoLn]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RVoLn](
	[RVLNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[VoNo] [int] NOT NULL,
	[AtSeller] [int] NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[ISO] [char](4) NOT NULL,
	[TotAm] [decimal](28, 6) NOT NULL,
	[DcTp] [int] NOT NULL,
	[DcTpEx] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[Ds1P] [decimal](28, 6) NOT NULL,
	[Dc1PAm] [decimal](28, 6) NOT NULL,
	[DcTrans] [decimal](28, 6) NOT NULL,
	[Qty] [decimal](28, 6) NOT NULL,
	[Price] [decimal](28, 6) NOT NULL,
	[EANItmNo] [varchar](50) NOT NULL,
	[Descr] [varchar](50) NOT NULL,
	[UnTp] [int] NOT NULL,
	[VatAm] [decimal](28, 6) NOT NULL,
	[LnTp] [int] NOT NULL,
	[VatCd] [int] NOT NULL,
	[GiftCpID] [int] NOT NULL,
	[Bank] [varchar](20) NOT NULL,
	[CheckNo] [int] NOT NULL,
	[PersonID] [varchar](20) NOT NULL,
	[PersonTp] [int] NOT NULL,
	[CrCardTp] [int] NOT NULL,
	[CrCardNm] [varchar](100) NOT NULL,
	[CrCardNo] [varchar](20) NOT NULL,
	[ExpDt] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[VoNoRef] [int] NOT NULL,
	[PosIDRef] [int] NOT NULL,
	[ValDt] [int] NOT NULL,
	[SerNo] [varchar](50) NOT NULL,
	[R8Ref] [varchar](10) NOT NULL,
	[LnID] [int] NOT NULL,
	[RefTxt] [varchar](50) NOT NULL,
	[NrmUnPr] [decimal](28, 6) NOT NULL,
	[RetReas] [int] NOT NULL,
	[ParLnID] [int] NOT NULL,
	[LnValid] [int] NOT NULL,
	[St] [char](1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[R6] [int] NOT NULL,
	[Un] [int] NOT NULL,
	[JNo] [int] NOT NULL,
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[BndLnNo] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[ElJNo] [int] NOT NULL,
	[AccID] [varchar](50) NOT NULL,
	[CostID] [varchar](20) NOT NULL,
	[EntryID] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__RVoLn] PRIMARY KEY NONCLUSTERED 
(
	[RVLNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ScanCd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ScanCd](
	[SCd] [varchar](52) NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[Un] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[StUnRt] [decimal](28, 6) NOT NULL,
	[NWgtU] [decimal](28, 6) NOT NULL,
	[TareU] [decimal](28, 6) NOT NULL,
	[LgtU] [decimal](28, 6) NOT NULL,
	[WdtU] [decimal](28, 6) NOT NULL,
	[HgtU] [decimal](28, 6) NOT NULL,
	[AreaU] [decimal](28, 6) NOT NULL,
	[VolU] [decimal](28, 6) NOT NULL,
	[Measure] [tinyint] NOT NULL,
	[DensU] [decimal](28, 6) NOT NULL,
	[PrNo] [decimal](28, 6) NOT NULL,
	[Factor3] [decimal](28, 6) NOT NULL,
	[ChTmms] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__ScanCd] PRIMARY KEY NONCLUSTERED 
(
	[SCd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEMtInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEMtInf](
	[MdmPubId] [varchar](40) NOT NULL,
	[MdmDataTp] [int] NOT NULL,
	[FkInt32] [int] NOT NULL,
	[MdmVer] [int] NOT NULL,
	[MdmSyncVer] [int] NOT NULL,
	[MdmDelVer] [int] NOT NULL,
	[MdmPrc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__SEMtInf] PRIMARY KEY NONCLUSTERED 
(
	[MdmPubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ser]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ser](
	[OrdNo] [int] NOT NULL,
	[OrdLnNo] [int] NOT NULL,
	[SerSeqNo] [int] NOT NULL,
	[SerNo] [varchar](40) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[ProdNo] [varchar](40) NOT NULL,
	[FrStc] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[JNo] [int] NOT NULL,
	[TrNo] [int] NOT NULL,
	[TransSt] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Ser] PRIMARY KEY NONCLUSTERED 
(
	[OrdNo] ASC,
	[OrdLnNo] ASC,
	[SerSeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SESnapInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SESnapInf](
	[MdmDataTp] [int] NOT NULL,
	[SnapId] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__SESnapInf] PRIMARY KEY NONCLUSTERED 
(
	[MdmDataTp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShpBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShpBal](
	[ProdNo] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[ShpNo] [int] NOT NULL,
	[SerNo] [varchar](40) NOT NULL DEFAULT (' '),
	[Loc] [varchar](18) NOT NULL DEFAULT (' '),
	[SepShp] [int] NOT NULL DEFAULT ((0)),
	[RestBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoDel] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoHire] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoLoan] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Loss] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoFrProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRec] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoTrf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRsv] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StcVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CusAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[RecDt] [int] NOT NULL DEFAULT ((0)),
	[PrvDecDt] [int] NOT NULL DEFAULT ((0)),
	[DurDt] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[FrAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrAm4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstCur] [int] NOT NULL DEFAULT ((0)),
	[CstExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StcInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PhStcVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MemoNo] [varchar](260) NOT NULL DEFAULT (' '),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[ShpSt] [int] NOT NULL DEFAULT ((0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[TrInf1] [varchar](22) NOT NULL DEFAULT (' '),
	[TrInf2] [varchar](22) NOT NULL DEFAULT (' '),
	[OriOrdNo] [int] NOT NULL DEFAULT ((0)),
	[OriOLnNo] [int] NOT NULL DEFAULT ((0)),
	[Cntable] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CntGr] [int] NOT NULL DEFAULT ((0)),
	[LstCntDt] [int] NOT NULL DEFAULT ((0)),
	[CntBy] [varchar](24) NOT NULL DEFAULT (' '),
	[CntDf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[InInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DCstAd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[NoRsvInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__ShpBal] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[StcNo] ASC,
	[ShpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Src]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Src](
	[SrcNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Ver] [varchar](80) NOT NULL,
	[Dt] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Src] PRIMARY KEY NONCLUSTERED 
(
	[SrcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatPr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatPr](
	[YrPr] [int] NOT NULL,
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__StatPr] PRIMARY KEY NONCLUSTERED 
(
	[YrPr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stc](
	[StcNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[Ad1] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad2] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad3] [varchar](60) NOT NULL DEFAULT (' '),
	[Ad4] [varchar](60) NOT NULL DEFAULT (' '),
	[PNo] [varchar](40) NOT NULL DEFAULT (' '),
	[PArea] [varchar](60) NOT NULL DEFAULT (' '),
	[Rsp] [int] NOT NULL DEFAULT ((0)),
	[MailAd] [varchar](60) NOT NULL DEFAULT (' '),
	[Phone] [varchar](20) NOT NULL DEFAULT (' '),
	[Fax] [varchar](20) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PictFNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[EANLocCd] [varchar](40) NOT NULL DEFAULT (' '),
	[StcPro] [int] NOT NULL DEFAULT ((0)),
	[MainStc] [int] NOT NULL DEFAULT ((0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Stc] PRIMARY KEY NONCLUSTERED 
(
	[StcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StcBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StcBal](
	[ProdNo] [varchar](40) NOT NULL,
	[StcNo] [int] NOT NULL,
	[NrmSup] [int] NOT NULL DEFAULT ((0)),
	[NrmLoc] [varchar](18) NOT NULL DEFAULT (' '),
	[Bal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InHireO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInHireO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HireBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InLoanO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInLoanO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LoanBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExpLoss] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CExpLoss] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InProdO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInProdO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInProd] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InTrfO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CInTrfO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RsvOuts] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ShpRsv] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MinBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MaxBal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CntGr] [int] NOT NULL DEFAULT ((0)),
	[CntDf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LstCntDt] [int] NOT NULL DEFAULT ((0)),
	[CntBy] [varchar](24) NOT NULL DEFAULT (' '),
	[StcVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LPurcQty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LPurcDt] [int] NOT NULL DEFAULT ((0)),
	[LSaleDt] [int] NOT NULL DEFAULT ((0)),
	[LShpNo] [int] NOT NULL DEFAULT ((0)),
	[LSrt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[StcInc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[PrvCntNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrvCntDt] [int] NOT NULL DEFAULT ((0)),
	[PrvCntBy] [varchar](24) NOT NULL DEFAULT (' '),
	[DecrRate] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MinBalD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MaxBalD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AdmTm] [smallint] NOT NULL DEFAULT ((0)),
	[DelTm] [smallint] NOT NULL DEFAULT ((0)),
	[TanspTm] [smallint] NOT NULL DEFAULT ((0)),
	[PurcInt] [smallint] NOT NULL DEFAULT ((0)),
	[PurcSDt] [int] NOT NULL DEFAULT ((0)),
	[DecrPurc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExpArDt] [int] NOT NULL DEFAULT ((0)),
	[PurcPnt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcPntD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EcPurcQ] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EcPurcQD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RndOff] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RndOffD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PurcProc] [int] NOT NULL DEFAULT ((0)),
	[MntTm] [smallint] NOT NULL DEFAULT ((0)),
	[DemTm] [smallint] NOT NULL DEFAULT ((0)),
	[Conf] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Sent] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Days] [int] NOT NULL DEFAULT ((0)),
	[PurcMt] [tinyint] NOT NULL DEFAULT ((0)),
	[AggrL] [tinyint] NOT NULL DEFAULT ((0)),
	[RoundMt] [tinyint] NOT NULL DEFAULT ((0)),
	[DecIns] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PhCstPr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PhStcVal] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncIns] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PoPhStV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PoPhStB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Cntable] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StcBalSt] [int] NOT NULL DEFAULT ((0)),
	[PrintS] [int] NOT NULL DEFAULT ((0)),
	[NoFin] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StInf1] [varchar](22) NOT NULL DEFAULT (' '),
	[StInf2] [varchar](22) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ProdTm] [smallint] NOT NULL DEFAULT ((0)),
	[PicNotR] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AvToPic] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[MemoNo] [varchar](260) NOT NULL DEFAULT (' '),
	[LastFIFO] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LstFStcV] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ShpRsvIn] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__StcBal] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[StcNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StrFVar]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StrFVar](
	[NmSp] [varchar](40) NOT NULL,
	[VarNm] [varchar](40) NOT NULL,
	[Val1] [varchar](260) NOT NULL,
	[Val2] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__StrFVar] PRIMARY KEY NONCLUSTERED 
(
	[NmSp] ASC,
	[VarNm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Struct]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Struct](
	[ProdNo] [varchar](40) NOT NULL,
	[LnNo] [int] NOT NULL,
	[SubProd] [varchar](40) NOT NULL DEFAULT (' '),
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[ID] [varchar](18) NOT NULL DEFAULT (' '),
	[NoPerStr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FFm] [varchar](64) NOT NULL DEFAULT (' '),
	[FSz] [int] NOT NULL DEFAULT ((0)),
	[FSt] [int] NOT NULL DEFAULT ((0)),
	[LnFl] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PrM2] [int] NOT NULL DEFAULT ((0)),
	[ProdTp1] [int] NOT NULL DEFAULT ((0)),
	[ProdTp2] [int] NOT NULL DEFAULT ((0)),
	[ProdTp3] [int] NOT NULL DEFAULT ((0)),
	[ProdTp4] [int] NOT NULL DEFAULT ((0)),
	[TrInf1] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf2] [varchar](40) NOT NULL DEFAULT (' '),
	[StrWgt] [int] NOT NULL DEFAULT ((0)),
	[PrM1] [int] NOT NULL DEFAULT ((0)),
	[PrM3] [int] NOT NULL DEFAULT ((0)),
	[PrM4] [int] NOT NULL DEFAULT ((0)),
	[PrM5] [int] NOT NULL DEFAULT ((0)),
	[TrInf3] [varchar](40) NOT NULL DEFAULT (' '),
	[TrInf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[Inf] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf2] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf3] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf4] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf5] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf6] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf7] [varchar](40) NOT NULL DEFAULT (' '),
	[Inf8] [varchar](40) NOT NULL DEFAULT (' '),
	[Gr] [int] NOT NULL DEFAULT ((0)),
	[Gr2] [int] NOT NULL DEFAULT ((0)),
	[Gr3] [int] NOT NULL DEFAULT ((0)),
	[Gr4] [int] NOT NULL DEFAULT ((0)),
	[Gr5] [int] NOT NULL DEFAULT ((0)),
	[Gr6] [int] NOT NULL DEFAULT ((0)),
	[Gr7] [int] NOT NULL DEFAULT ((0)),
	[Gr8] [int] NOT NULL DEFAULT ((0)),
	[Gr9] [int] NOT NULL DEFAULT ((0)),
	[Gr10] [int] NOT NULL DEFAULT ((0)),
	[Gr11] [int] NOT NULL DEFAULT ((0)),
	[Gr12] [int] NOT NULL DEFAULT ((0)),
	[StcNo] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ProdGr] [int] NOT NULL DEFAULT ((0)),
	[AcSet] [int] NOT NULL DEFAULT ((0)),
	[ProdProcNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Struct] PRIMARY KEY NONCLUSTERED 
(
	[ProdNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupBal](
	[SupNo] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[DbIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbPurcIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbPurcCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CrIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCurCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrQtyCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrPurcIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrPurcCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2IB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CrCur2Ch] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__SupBal] PRIMARY KEY NONCLUSTERED 
(
	[SupNo] ASC,
	[Yr] ASC,
	[Pr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupTr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupTr](
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL DEFAULT ((0)),
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[PayedDt] [int] NOT NULL DEFAULT ((0)),
	[OrdNo] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[Purc] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[St] [tinyint] NOT NULL DEFAULT ((0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[Att] [int] NOT NULL DEFAULT ((0)),
	[AttDt1] [int] NOT NULL DEFAULT ((0)),
	[AttDt2] [int] NOT NULL DEFAULT ((0)),
	[ExcRmt] [tinyint] NOT NULL DEFAULT ((0)),
	[EstPayDt] [int] NOT NULL DEFAULT ((0)),
	[RmtRnNo] [int] NOT NULL DEFAULT ((0)),
	[GenAcNo] [int] NOT NULL DEFAULT ((0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[AgAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[AgAcNo] [int] NOT NULL DEFAULT ((0)),
	[Ctrl] [int] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Cr] [tinyint] NOT NULL DEFAULT ((0)),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[AttVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[EFT1] [int] NOT NULL DEFAULT ((0)),
	[EFT2] [int] NOT NULL DEFAULT ((0)),
	[EFT3] [int] NOT NULL DEFAULT ((0)),
	[EFT4] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BPmtNo] [int] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[CNAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GiroChSm] [int] NOT NULL DEFAULT ((0)),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[AcYrPr] [int] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[BankAcLn] [int] NOT NULL DEFAULT ((0)),
	[PmtCur] [int] NOT NULL DEFAULT ((0)),
	[TrfExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurCDt] [int] NOT NULL DEFAULT ((0)),
	[CurCRNo] [int] NOT NULL DEFAULT ((0)),
	[LastCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RemCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CRCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RCshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[EftFrmTp] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__SupTr] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[EntNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskJ]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskJ](
	[JNo] [int] NOT NULL,
	[CustNo] [int] NOT NULL,
	[StDt] [int] NOT NULL,
	[AgEndDt] [int] NOT NULL,
	[REndDt] [int] NOT NULL,
	[Yr] [smallint] NOT NULL,
	[Pr] [smallint] NOT NULL,
	[Term] [tinyint] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[SuitP] [int] NOT NULL,
	[LiaActNo] [int] NOT NULL,
	[Assessm] [int] NOT NULL,
	[RepFDt] [int] NOT NULL,
	[VatFDt] [int] NOT NULL,
	[TaxFDt] [int] NOT NULL,
	[SentDt] [int] NOT NULL,
	[AcSpDt] [int] NOT NULL,
	[PuncDt] [int] NOT NULL,
	[TallyDt] [int] NOT NULL,
	[InvngDt] [int] NOT NULL,
	[WgFinDt] [int] NOT NULL,
	[HolAlSDt] [int] NOT NULL,
	[WDSDt] [int] NOT NULL,
	[AcpLtDt] [int] NOT NULL,
	[AcrHrs] [decimal](28, 6) NOT NULL,
	[Invd] [int] NOT NULL,
	[TskSrt] [varchar](80) NOT NULL,
	[TermAjDt] [int] NOT NULL,
	[MtAjDt] [int] NOT NULL,
	[ChEqDt] [int] NOT NULL,
	[SkAcDt] [int] NOT NULL,
	[FinAcDt] [int] NOT NULL,
	[AudActNo] [int] NOT NULL,
	[StAudDt] [int] NOT NULL,
	[AnStlDt] [int] NOT NULL,
	[AsPaDt] [int] NOT NULL,
	[PbArDt] [int] NOT NULL,
	[TxRetDt] [int] NOT NULL,
	[BoardDt] [int] NOT NULL,
	[AgrRevDt] [int] NOT NULL,
	[Inf1] [varchar](40) NOT NULL,
	[Inf2] [varchar](40) NOT NULL,
	[Inf3] [varchar](40) NOT NULL,
	[Inf4] [varchar](40) NOT NULL,
	[Inf5] [varchar](40) NOT NULL,
	[Inf6] [varchar](40) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[Dt1] [int] NOT NULL,
	[Dt2] [int] NOT NULL,
	[Dt3] [int] NOT NULL,
	[Dt4] [int] NOT NULL,
	[Dt5] [int] NOT NULL,
	[Dt6] [int] NOT NULL,
	[Dt7] [int] NOT NULL,
	[Dt8] [int] NOT NULL,
	[Dt9] [int] NOT NULL,
	[Dt10] [int] NOT NULL,
	[Dt11] [int] NOT NULL,
	[Dt12] [int] NOT NULL,
	[Dt13] [int] NOT NULL,
	[Dt14] [int] NOT NULL,
	[Val1] [decimal](28, 6) NOT NULL,
	[Val2] [decimal](28, 6) NOT NULL,
	[Val3] [decimal](28, 6) NOT NULL,
	[Val4] [decimal](28, 6) NOT NULL,
	[Val5] [decimal](28, 6) NOT NULL,
	[Val6] [decimal](28, 6) NOT NULL,
	[Val7] [decimal](28, 6) NOT NULL,
	[Val8] [decimal](28, 6) NOT NULL,
	[Val9] [decimal](28, 6) NOT NULL,
	[Val10] [decimal](28, 6) NOT NULL,
	[Val11] [decimal](28, 6) NOT NULL,
	[Val12] [decimal](28, 6) NOT NULL,
	[Val13] [decimal](28, 6) NOT NULL,
	[Val14] [decimal](28, 6) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TaskJ] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxAcGr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaxAcGr](
	[ProdGrNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[OtPrGrNo] [int] NOT NULL,
	[PrGrProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TaxAcGr] PRIMARY KEY NONCLUSTERED 
(
	[ProdGrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxAcInf]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaxAcInf](
	[ProdGr] [int] NOT NULL,
	[AcSet] [int] NOT NULL,
	[Descr] [varchar](60) NOT NULL DEFAULT (' '),
	[VatNo] [int] NOT NULL DEFAULT ((0)),
	[WthTxRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SpcTxCd] [tinyint] NOT NULL DEFAULT ((0)),
	[SpcTxSz] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SpcTxVat] [tinyint] NOT NULL DEFAULT ((0)),
	[SpcTxPr] [tinyint] NOT NULL DEFAULT ((0)),
	[SaleR1] [int] NOT NULL DEFAULT ((0)),
	[SaleR2] [int] NOT NULL DEFAULT ((0)),
	[SaleR3] [int] NOT NULL DEFAULT ((0)),
	[SaleR4] [int] NOT NULL DEFAULT ((0)),
	[SaleR5] [int] NOT NULL DEFAULT ((0)),
	[SaleR6] [int] NOT NULL DEFAULT ((0)),
	[TrnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[StcR1] [int] NOT NULL DEFAULT ((0)),
	[StcR2] [int] NOT NULL DEFAULT ((0)),
	[StcR3] [int] NOT NULL DEFAULT ((0)),
	[StcR4] [int] NOT NULL DEFAULT ((0)),
	[StcR5] [int] NOT NULL DEFAULT ((0)),
	[StcR6] [int] NOT NULL DEFAULT ((0)),
	[ObSaleAc] [int] NOT NULL DEFAULT ((0)),
	[FrSaleAc] [int] NOT NULL DEFAULT ((0)),
	[ExSaleAc] [int] NOT NULL DEFAULT ((0)),
	[ObDcAc] [int] NOT NULL DEFAULT ((0)),
	[FrDcAc] [int] NOT NULL DEFAULT ((0)),
	[ExDcAc] [int] NOT NULL DEFAULT ((0)),
	[ObAddAc] [int] NOT NULL DEFAULT ((0)),
	[FrAddAc] [int] NOT NULL DEFAULT ((0)),
	[ExAddAc] [int] NOT NULL DEFAULT ((0)),
	[ObSpcAc] [int] NOT NULL DEFAULT ((0)),
	[FrSpcAc] [int] NOT NULL DEFAULT ((0)),
	[ExSpcAc] [int] NOT NULL DEFAULT ((0)),
	[DbPrCst] [int] NOT NULL DEFAULT ((0)),
	[CrPrCst] [int] NOT NULL DEFAULT ((0)),
	[DbFrg] [int] NOT NULL DEFAULT ((0)),
	[CrFrg] [int] NOT NULL DEFAULT ((0)),
	[DbFrg2] [int] NOT NULL DEFAULT ((0)),
	[CrFrg2] [int] NOT NULL DEFAULT ((0)),
	[DbFrg3] [int] NOT NULL DEFAULT ((0)),
	[CrFrg3] [int] NOT NULL DEFAULT ((0)),
	[DbFrg4] [int] NOT NULL DEFAULT ((0)),
	[CrFrg4] [int] NOT NULL DEFAULT ((0)),
	[DbCus] [int] NOT NULL DEFAULT ((0)),
	[CrCus] [int] NOT NULL DEFAULT ((0)),
	[DbStc] [int] NOT NULL DEFAULT ((0)),
	[CrStc] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[EUSaleAc] [int] NOT NULL DEFAULT ((0)),
	[EUDcAc] [int] NOT NULL DEFAULT ((0)),
	[EUAddAc] [int] NOT NULL DEFAULT ((0)),
	[EUSpcAc] [int] NOT NULL DEFAULT ((0)),
	[ObPurcAc] [int] NOT NULL DEFAULT ((0)),
	[FrPurcAc] [int] NOT NULL DEFAULT ((0)),
	[EUPurcAc] [int] NOT NULL DEFAULT ((0)),
	[ExPurcAc] [int] NOT NULL DEFAULT ((0)),
	[PurcTxCd] [int] NOT NULL DEFAULT ((0)),
	[OverwOrd] [tinyint] NOT NULL DEFAULT ((0)),
	[TaxAcPro] [int] NOT NULL DEFAULT ((0)),
	[SaleR7] [varchar](40) NOT NULL DEFAULT (' '),
	[SaleR8] [varchar](10) NOT NULL DEFAULT (' '),
	[SaleR9] [varchar](10) NOT NULL DEFAULT (' '),
	[SaleR10] [varchar](10) NOT NULL DEFAULT (' '),
	[SaleR11] [varchar](10) NOT NULL DEFAULT (' '),
	[SaleR12] [varchar](10) NOT NULL DEFAULT (' '),
	[StcR7] [varchar](40) NOT NULL DEFAULT (' '),
	[StcR8] [varchar](10) NOT NULL DEFAULT (' '),
	[StcR9] [varchar](10) NOT NULL DEFAULT (' '),
	[StcR10] [varchar](10) NOT NULL DEFAULT (' '),
	[StcR11] [varchar](10) NOT NULL DEFAULT (' '),
	[StcR12] [varchar](10) NOT NULL DEFAULT (' '),
	[TrnClSal] [tinyint] NOT NULL DEFAULT ((0)),
	[TrnClPur] [tinyint] NOT NULL DEFAULT ((0)),
	[DbStcS] [int] NOT NULL DEFAULT ((0)),
	[CrStcS] [int] NOT NULL DEFAULT ((0)),
	[DbSaleS] [int] NOT NULL DEFAULT ((0)),
	[CrSaleS] [int] NOT NULL DEFAULT ((0)),
	[DbCstAd] [int] NOT NULL DEFAULT ((0)),
	[CrCstAd] [int] NOT NULL DEFAULT ((0)),
	[CstDfAc] [int] NOT NULL DEFAULT ((0)),
	[ReTxDc] [int] NOT NULL DEFAULT ((0)),
	[ReNTxDc] [int] NOT NULL DEFAULT ((0)),
	[ReEUDc] [int] NOT NULL DEFAULT ((0)),
	[ReImpDc] [int] NOT NULL DEFAULT ((0)),
	[AdTxDc] [int] NOT NULL DEFAULT ((0)),
	[AdNTxDc] [int] NOT NULL DEFAULT ((0)),
	[AdEUDc] [int] NOT NULL DEFAULT ((0)),
	[AdImpDc] [int] NOT NULL DEFAULT ((0)),
	[ProdWaAc] [int] NOT NULL DEFAULT ((0)),
	[ProdWoAc] [int] NOT NULL DEFAULT ((0)),
	[ProdDfAc] [int] NOT NULL DEFAULT ((0)),
	[ProdCfAc] [int] NOT NULL DEFAULT ((0)),
	[DbHrAc] [int] NOT NULL DEFAULT ((0)),
	[CrHrAc] [int] NOT NULL DEFAULT ((0)),
	[DscHrCst] [int] NOT NULL DEFAULT ((0)),
	[DbStcPr] [int] NOT NULL DEFAULT ((0)),
	[CrStcPr] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[SrvTp] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__TaxAcInf] PRIMARY KEY NONCLUSTERED 
(
	[ProdGr] ASC,
	[AcSet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Templ]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Templ](
	[ProgNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[FileNm] [varchar](260) NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[TemplTp] [int] NOT NULL,
	[TabNo] [bigint] NOT NULL,
	[Gr] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[DocGr] [int] NOT NULL,
	[Psw] [varchar](32) NOT NULL,
	[DocProc] [int] NOT NULL,
	[AgrTxtNo] [int] NOT NULL,
	[DataPath] [varchar](260) NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__Templ] PRIMARY KEY NONCLUSTERED 
(
	[ProgNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TemplAcc]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemplAcc](
	[TemplTp] [int] NOT NULL,
	[ActNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TemplAcc] PRIMARY KEY NONCLUSTERED 
(
	[TemplTp] ASC,
	[ActNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TemplTp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemplTp](
	[TemplTpNo] [int] NOT NULL,
	[Descr] [varchar](260) NOT NULL,
	[Psw] [varchar](32) NOT NULL,
	[DocProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TemplTp] PRIMARY KEY NONCLUSTERED 
(
	[TemplTpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TenancyF]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TenancyF](
	[Tenancy] [int] NOT NULL,
	[PriceF] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TenancyF] PRIMARY KEY NONCLUSTERED 
(
	[Tenancy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSBal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSBal](
	[TSGrNo] [int] NOT NULL,
	[YrPr] [int] NOT NULL,
	[ResNo] [int] NOT NULL,
	[EmpNo] [int] NOT NULL,
	[FrTm] [smallint] NOT NULL,
	[ToTm] [smallint] NOT NULL,
	[TmDy] [smallint] NOT NULL,
	[DeTm] [smallint] NOT NULL,
	[NrmTm] [int] NOT NULL,
	[NoOfWDy] [smallint] NOT NULL,
	[AgrBalAp] [int] NOT NULL,
	[AgrBIncTm] [int] NOT NULL,
	[AgrBInvoTm] [int] NOT NULL,
	[AgrBRsvTm] [int] NOT NULL,
	[Overtime] [int] NOT NULL,
	[FlexIB] [int] NOT NULL,
	[TrToOrdBal] [int] NOT NULL,
	[TrToWgBal] [int] NOT NULL,
	[TSBSt] [int] NOT NULL,
	[BookSt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[MaxFl] [int] NOT NULL,
	[TSProc] [int] NOT NULL,
	[FlexCor] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[NoteNm] [varchar](260) NOT NULL,
	[Gr] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TSBal] PRIMARY KEY NONCLUSTERED 
(
	[TSGrNo] ASC,
	[YrPr] ASC,
	[ResNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSCal]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSCal](
	[TSGrNo] [int] NOT NULL,
	[YrPr] [int] NOT NULL,
	[FrDt] [int] NOT NULL,
	[ToDt] [int] NOT NULL,
	[D1FrTm] [smallint] NOT NULL,
	[D1TmDy] [smallint] NOT NULL,
	[D2FrTm] [smallint] NOT NULL,
	[D2TmDy] [smallint] NOT NULL,
	[D3FrTm] [smallint] NOT NULL,
	[D3TmDy] [smallint] NOT NULL,
	[D4FrTm] [smallint] NOT NULL,
	[D4TmDy] [smallint] NOT NULL,
	[D5FrTm] [smallint] NOT NULL,
	[D5TmDy] [smallint] NOT NULL,
	[D6FrTm] [smallint] NOT NULL,
	[D6TmDy] [smallint] NOT NULL,
	[D7FrTm] [smallint] NOT NULL,
	[D7TmDy] [smallint] NOT NULL,
	[NoOfWDy] [smallint] NOT NULL,
	[FrWkNo] [tinyint] NOT NULL,
	[ToWkNo] [tinyint] NOT NULL,
	[TSGrProc] [int] NOT NULL,
	[DeTm] [smallint] NOT NULL,
	[NrmTm] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TSCal] PRIMARY KEY NONCLUSTERED 
(
	[TSGrNo] ASC,
	[YrPr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TSGr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TSGr](
	[TSGrNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[CurrYr] [smallint] NOT NULL,
	[CurrYrPr] [int] NOT NULL,
	[SuspYrPr] [int] NOT NULL,
	[MaxFl] [int] NOT NULL,
	[TSGrProc] [int] NOT NULL,
	[NoOfPr] [int] NOT NULL,
	[FrTm] [smallint] NOT NULL,
	[ToTm] [smallint] NOT NULL,
	[DeTm] [smallint] NOT NULL,
	[NrmTm] [smallint] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[StdWageSrt] [varchar](10) NOT NULL,
	[OTWageSrt] [varchar](10) NOT NULL,
	[OT1WageRtN] [int] NOT NULL,
	[OT2WageRtN] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TSGr] PRIMARY KEY NONCLUSTERED 
(
	[TSGrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TspAgr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TspAgr](
	[TspAgrNo] [int] NOT NULL,
	[SupNo] [int] NOT NULL,
	[TonRt1] [decimal](28, 6) NOT NULL,
	[TonRt2] [decimal](28, 6) NOT NULL,
	[TonRt3] [decimal](28, 6) NOT NULL,
	[TonRt4] [decimal](28, 6) NOT NULL,
	[Zone] [char](2) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TspAgr] PRIMARY KEY NONCLUSTERED 
(
	[TspAgrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TspZ]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TspZ](
	[Zone] [char](2) NOT NULL,
	[FrWgt] [decimal](28, 6) NOT NULL,
	[ToWgt] [decimal](28, 6) NOT NULL,
	[Cst] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TspZ] PRIMARY KEY NONCLUSTERED 
(
	[Zone] ASC,
	[FrWgt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TxCd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TxCd](
	[TxCdNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[VatNo] [int] NOT NULL DEFAULT ((0)),
	[WthTxRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CstP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTxNo] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Serv] [int] NOT NULL DEFAULT ((0)),
	[WgDPro] [int] NOT NULL DEFAULT ((0)),
	[TrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TxInf] [varchar](22) NOT NULL DEFAULT (' '),
	[Shr] [varchar](22) NOT NULL DEFAULT (' '),
	[FormNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[VatRtTp] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__TxCd] PRIMARY KEY NONCLUSTERED 
(
	[TxCdNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TxCdAut]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TxCdAut](
	[PK] [int] NOT NULL,
	[TxCdNo] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL,
	[VatNo] [int] NOT NULL,
	[WthTxRt] [decimal](28, 6) NOT NULL,
	[CstP] [decimal](28, 6) NOT NULL,
	[InvTxNo] [int] NOT NULL,
	[Serv] [int] NOT NULL,
	[WgDPro] [int] NOT NULL,
	[TrnCl] [tinyint] NOT NULL,
	[TxInf] [varchar](22) NOT NULL,
	[Shr] [decimal](28, 6) NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[NwTxCdNo] [int] NOT NULL,
	[NwAcNo] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TxCdAut] PRIMARY KEY NONCLUSTERED 
(
	[PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TxStmtL]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TxStmtL](
	[SeqNo] [int] IDENTITY(1,1) NOT NULL,
	[Dt] [int] NOT NULL,
	[Tm] [smallint] NOT NULL,
	[Usr] [varchar](24) NOT NULL,
	[TxStNo] [int] NOT NULL,
	[FormNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TxStmtL] PRIMARY KEY NONCLUSTERED 
(
	[SeqNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Txt]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Txt](
	[Lang] [int] NOT NULL,
	[TxtTp] [bigint] NOT NULL,
	[TxtNo] [bigint] NOT NULL,
	[LnNo] [int] NOT NULL,
	[Txt] [varchar](240) NOT NULL DEFAULT (' '),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Txt] PRIMARY KEY NONCLUSTERED 
(
	[Lang] ASC,
	[TxtTp] ASC,
	[TxtNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TxtCd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TxtCd](
	[TxtCd] [varchar](10) NOT NULL,
	[BPartNo] [int] NOT NULL,
	[TxtLn] [varchar](80) NOT NULL,
	[BFormat] [int] NOT NULL,
	[Inf] [varchar](40) NOT NULL,
	[TxtProc] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__TxtCd] PRIMARY KEY NONCLUSTERED 
(
	[TxtCd] ASC,
	[BPartNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TxTrm]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TxTrm](
	[Yr] [smallint] NOT NULL,
	[TrmNo] [smallint] NOT NULL,
	[FrDt] [int] NOT NULL DEFAULT ((0)),
	[ToDt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[TxStNo] [int] NOT NULL DEFAULT ((0)),
	[MainTrm] [smallint] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__TxTrm] PRIMARY KEY NONCLUSTERED 
(
	[Yr] ASC,
	[TrmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit](
	[Un] [int] NOT NULL,
	[Descr] [varchar](80) NOT NULL DEFAULT (' '),
	[StUnRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[EDIUn] [char](3) NOT NULL DEFAULT (' '),
	[NWgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[TareU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[LgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[WdtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[HgtU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AreaU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[VolU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Measure] [tinyint] NOT NULL DEFAULT ((0)),
	[DensU] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrNo] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Factor3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Unit] PRIMARY KEY NONCLUSTERED 
(
	[Un] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Upd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Upd](
	[JNo] [int] NOT NULL,
	[MinVoNo] [int] NOT NULL DEFAULT ((0)),
	[MaxVoNo] [int] NOT NULL DEFAULT ((0)),
	[CustTr] [int] NOT NULL DEFAULT ((0)),
	[SupTr] [int] NOT NULL DEFAULT ((0)),
	[AcTr] [int] NOT NULL DEFAULT ((0)),
	[TotTr] [int] NOT NULL DEFAULT ((0)),
	[ErrCnt] [int] NOT NULL DEFAULT ((0)),
	[NewBal] [int] NOT NULL DEFAULT ((0)),
	[CustCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SupCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTx] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PropTr] [int] NOT NULL DEFAULT ((0)),
	[PropCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__Upd] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UpdBnd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UpdBnd](
	[JNo] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[Descr] [varchar](200) NOT NULL DEFAULT (' '),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[SrNo] [int] NOT NULL DEFAULT ((0)),
	[MinVoNo] [int] NOT NULL DEFAULT ((0)),
	[MaxVoNo] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[CustTr] [int] NOT NULL DEFAULT ((0)),
	[SupTr] [int] NOT NULL DEFAULT ((0)),
	[AcTr] [int] NOT NULL DEFAULT ((0)),
	[TotTr] [int] NOT NULL DEFAULT ((0)),
	[ErrCnt] [int] NOT NULL DEFAULT ((0)),
	[NewBal] [int] NOT NULL DEFAULT ((0)),
	[CustCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SupCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[InvTx] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PropTr] [int] NOT NULL DEFAULT ((0)),
	[PropCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[UpdBSt] [int] NOT NULL DEFAULT ((0)),
	[BtPro] [int] NOT NULL DEFAULT ((0)),
	[RevDt] [int] NOT NULL DEFAULT ((0)),
	[RevAcYr] [smallint] NOT NULL DEFAULT ((0)),
	[RevAcPr] [smallint] NOT NULL DEFAULT ((0)),
	[RevTxYr] [smallint] NOT NULL DEFAULT ((0)),
	[RevTxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[Seller] [int] NOT NULL DEFAULT ((0)),
	[Att] [tinyint] NOT NULL DEFAULT ((0)),
	[BankAcNo] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[CSmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcNo] [int] NOT NULL DEFAULT ((0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[PrvJNo] [int] NOT NULL DEFAULT ((0)),
	[PrvBndNo] [int] NOT NULL DEFAULT ((0)),
	[CSmDb2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSmCr2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmDbExVat] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCrExVat] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[EsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[RevEsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__UpdBnd] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC,
	[BndNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UpdMa]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UpdMa](
	[JNo] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[RLnNo] [int] NOT NULL,
	[RefNo] [varchar](20) NOT NULL,
	[AgJNo] [int] NOT NULL,
	[AgEntNo] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[AgRefTp] [tinyint] NOT NULL,
	[AgJNo2] [int] NOT NULL,
	[AgEntNo2] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[PrtCurAm] [decimal](28, 6) NOT NULL,
	[PrtAm] [decimal](28, 6) NOT NULL,
	[PmVaCAm] [decimal](28, 6) NOT NULL,
	[PmVaAm] [decimal](28, 6) NOT NULL,
	[PmVaAmCD] [decimal](28, 6) NOT NULL,
	[DbTxCdP] [int] NOT NULL,
	[DbTrnClP] [tinyint] NOT NULL,
	[CrTxCdP] [int] NOT NULL,
	[CrTrnClP] [tinyint] NOT NULL,
	[Payed] [tinyint] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__UpdMa] PRIMARY KEY NONCLUSTERED 
(
	[JNo] ASC,
	[BndNo] ASC,
	[LnNo] ASC,
	[RLnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UpdVo]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UpdVo](
	[JNo] [int] NOT NULL,
	[BndNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[DbAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[DbAcNo] [int] NOT NULL DEFAULT ((0)),
	[DbTxCd] [int] NOT NULL DEFAULT ((0)),
	[CrAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[CrAcNo] [int] NOT NULL DEFAULT ((0)),
	[CrTxCd] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DstGr] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[IntRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[Exc] [tinyint] NOT NULL DEFAULT ((0)),
	[Att] [int] NOT NULL DEFAULT ((0)),
	[Task] [int] NOT NULL DEFAULT ((0)),
	[Cust] [int] NOT NULL DEFAULT ((0)),
	[Sup] [int] NOT NULL DEFAULT ((0)),
	[Emp] [int] NOT NULL DEFAULT ((0)),
	[Act] [varchar](40) NOT NULL DEFAULT (' '),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[DbAutSt] [tinyint] NOT NULL DEFAULT ((0)),
	[CrAutSt] [tinyint] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[Err] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[ExAut] [tinyint] NOT NULL DEFAULT ((0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[EFT1] [int] NOT NULL DEFAULT ((0)),
	[EFT2] [int] NOT NULL DEFAULT ((0)),
	[EFT3] [int] NOT NULL DEFAULT ((0)),
	[EFT4] [int] NOT NULL DEFAULT ((0)),
	[DbTrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[CrTrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[AmExVAT] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[CstAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GiroChSm] [int] NOT NULL DEFAULT ((0)),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[PmVaCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTxCdP] [int] NOT NULL DEFAULT ((0)),
	[DbTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[CrTxCdP] [int] NOT NULL DEFAULT ((0)),
	[CrTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[BankAcLn] [int] NOT NULL DEFAULT ((0)),
	[PmVaAmCD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeCurA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PStYrPr] [int] NOT NULL DEFAULT ((0)),
	[PEnYrPr] [int] NOT NULL DEFAULT ((0)),
	[SmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RealJNo] [int] NOT NULL DEFAULT ((0)),
	[EftFrmTp] [int] NOT NULL DEFAULT ((0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[StrtPer] [int] NOT NULL DEFAULT ((0)),
	[RealLnNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[EsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__UpdVo] PRIMARY KEY CLUSTERED 
(
	[JNo] ASC,
	[BndNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrComb]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsrComb](
	[Usr] [varchar](24) NOT NULL,
	[CombG] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__UsrComb] PRIMARY KEY NONCLUSTERED 
(
	[Usr] ASC,
	[CombG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrDelim]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsrDelim](
	[Usr] [varchar](24) NOT NULL,
	[DelimG] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__UsrDelim] PRIMARY KEY NONCLUSTERED 
(
	[Usr] ASC,
	[DelimG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vat]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vat](
	[VatNo] [int] NOT NULL,
	[Rt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[IncAcNo] [int] NOT NULL DEFAULT ((0)),
	[CrEUAc] [int] NOT NULL DEFAULT ((0)),
	[DbWthAc] [int] NOT NULL DEFAULT ((0)),
	[CrWthAc] [int] NOT NULL DEFAULT ((0)),
	[CstAcNo] [int] NOT NULL DEFAULT ((0)),
	[OutwAcNo] [int] NOT NULL DEFAULT ((0)),
	[AfterDt] [int] NOT NULL DEFAULT ((0)),
	[NewRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Gross] [tinyint] NOT NULL DEFAULT ((0)),
	[WdrAcNo] [int] NOT NULL DEFAULT ((0)),
	[DbRevAc] [int] NOT NULL DEFAULT ((0)),
	[CrRevAc] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[EsVatAc] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__Vat] PRIMARY KEY NONCLUSTERED 
(
	[VatNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VoSr]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VoSr](
	[VoSrNo] [int] NOT NULL,
	[Nm] [varchar](80) NOT NULL DEFAULT (' '),
	[NxtVoNo] [int] NOT NULL DEFAULT ((0)),
	[LstVoNo] [int] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Susp] [tinyint] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[SrTp] [tinyint] NOT NULL DEFAULT ((0)),
	[FstVoNo] [int] NOT NULL DEFAULT ((0)),
	[VoSrProc] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__VoSr] PRIMARY KEY NONCLUSTERED 
(
	[VoSrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VoTp]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VoTp](
	[VoTpNo] [int] NOT NULL,
	[StdTxt] [varchar](200) NOT NULL DEFAULT (' '),
	[InpTxt] [tinyint] NOT NULL DEFAULT ((0)),
	[InpCur] [tinyint] NOT NULL DEFAULT ((0)),
	[AffTrn] [tinyint] NOT NULL DEFAULT ((0)),
	[IgnTxCd] [tinyint] NOT NULL DEFAULT ((0)),
	[DbAc] [int] NOT NULL DEFAULT ((0)),
	[CrAc] [int] NOT NULL DEFAULT ((0)),
	[SugAm] [tinyint] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[UpdOrd] [tinyint] NOT NULL DEFAULT ((0)),
	[Per] [tinyint] NOT NULL DEFAULT ((0)),
	[SrNo] [int] NOT NULL DEFAULT ((0)),
	[CompExRt] [tinyint] NOT NULL DEFAULT ((0)),
	[ExAut] [tinyint] NOT NULL DEFAULT ((0)),
	[RepInf] [tinyint] NOT NULL DEFAULT ((0)),
	[TrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[VoTpPrc] [int] NOT NULL DEFAULT ((0)),
	[ClPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PgElNo] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PmVCshP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVOtP] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Txt2Def] [varchar](128) NOT NULL DEFAULT (' '),
	[ProdNo] [varchar](40) NOT NULL DEFAULT (' '),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
 CONSTRAINT [PK__VoTp] PRIMARY KEY NONCLUSTERED 
(
	[VoTpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WaBnd]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WaBnd](
	[BndNo] [int] NOT NULL,
	[Descr] [varchar](200) NOT NULL DEFAULT (' '),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[SrNo] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[SmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CtrlSm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SrcTp] [tinyint] NOT NULL DEFAULT ((0)),
	[SrcJNo] [int] NOT NULL DEFAULT ((0)),
	[Keep] [tinyint] NOT NULL DEFAULT ((0)),
	[Att] [tinyint] NOT NULL DEFAULT ((0)),
	[Susp] [tinyint] NOT NULL DEFAULT ((0)),
	[Dupl] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[BankAcNo] [int] NOT NULL DEFAULT ((0)),
	[BankIB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankOB] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CpBankCh] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BtPro] [int] NOT NULL DEFAULT ((0)),
	[RevDt] [int] NOT NULL DEFAULT ((0)),
	[RevAcYr] [smallint] NOT NULL DEFAULT ((0)),
	[RevAcPr] [smallint] NOT NULL DEFAULT ((0)),
	[RevTxYr] [smallint] NOT NULL DEFAULT ((0)),
	[RevTxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[CSmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[AcNo] [int] NOT NULL DEFAULT ((0)),
	[CustNo] [int] NOT NULL DEFAULT ((0)),
	[Seller] [int] NOT NULL DEFAULT ((0)),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[PrvJNo] [int] NOT NULL DEFAULT ((0)),
	[PrvBndNo] [int] NOT NULL DEFAULT ((0)),
	[CSmDb2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CSmCr2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmDbExVat] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCrExVat] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[EsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[RevEsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__WaBnd] PRIMARY KEY NONCLUSTERED 
(
	[BndNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WaMa]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WaMa](
	[BndNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[RLnNo] [int] NOT NULL,
	[RefNo] [varchar](20) NOT NULL,
	[JNo] [int] NOT NULL,
	[EntNo] [int] NOT NULL,
	[Srt] [int] NOT NULL,
	[ChDt] [int] NOT NULL,
	[ChTm] [smallint] NOT NULL,
	[ChUsr] [varchar](24) NOT NULL,
	[LckSt] [tinyint] NOT NULL,
	[ChPrc] [int] NOT NULL,
	[ChSm] [int] NOT NULL,
	[AgRefTp] [tinyint] NOT NULL,
	[AgJNo2] [int] NOT NULL,
	[AgEntNo2] [int] NOT NULL,
	[Cur] [int] NOT NULL,
	[ExRt] [decimal](28, 6) NOT NULL,
	[CurAm] [decimal](28, 6) NOT NULL,
	[Am] [decimal](28, 6) NOT NULL,
	[PrtCurAm] [decimal](28, 6) NOT NULL,
	[PrtAm] [decimal](28, 6) NOT NULL,
	[PmVaCAm] [decimal](28, 6) NOT NULL,
	[PmVaAm] [decimal](28, 6) NOT NULL,
	[PmVaAmCD] [decimal](28, 6) NOT NULL,
	[DbTxCdP] [int] NOT NULL,
	[DbTrnClP] [tinyint] NOT NULL,
	[CrTxCdP] [int] NOT NULL,
	[CrTrnClP] [tinyint] NOT NULL,
	[Payed] [tinyint] NOT NULL,
	[CreDt] [int] NOT NULL,
	[CreTm] [smallint] NOT NULL,
	[CreUsr] [varchar](24) NOT NULL,
 CONSTRAINT [PK__WaMa] PRIMARY KEY NONCLUSTERED 
(
	[BndNo] ASC,
	[LnNo] ASC,
	[RLnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WaVo]    Script Date: 3/7/2017 10:30:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WaVo](
	[BndNo] [int] NOT NULL,
	[LnNo] [int] NOT NULL,
	[VoNo] [int] NOT NULL DEFAULT ((0)),
	[VoDt] [int] NOT NULL DEFAULT ((0)),
	[ValDt] [int] NOT NULL DEFAULT ((0)),
	[AcYr] [smallint] NOT NULL DEFAULT ((0)),
	[AcPr] [smallint] NOT NULL DEFAULT ((0)),
	[TxYr] [smallint] NOT NULL DEFAULT ((0)),
	[TxTrm] [smallint] NOT NULL DEFAULT ((0)),
	[VoTp] [int] NOT NULL DEFAULT ((0)),
	[Txt] [varchar](200) NOT NULL DEFAULT (' '),
	[DbAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[DbAcNo] [int] NOT NULL DEFAULT ((0)),
	[DbTxCd] [int] NOT NULL DEFAULT ((0)),
	[CrAcCl] [tinyint] NOT NULL DEFAULT ((0)),
	[CrAcNo] [int] NOT NULL DEFAULT ((0)),
	[CrTxCd] [int] NOT NULL DEFAULT ((0)),
	[Cur] [int] NOT NULL DEFAULT ((0)),
	[ExRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Am] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Qty] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DstGr] [int] NOT NULL DEFAULT ((0)),
	[R1] [int] NOT NULL DEFAULT ((0)),
	[R2] [int] NOT NULL DEFAULT ((0)),
	[R3] [int] NOT NULL DEFAULT ((0)),
	[R4] [int] NOT NULL DEFAULT ((0)),
	[R5] [int] NOT NULL DEFAULT ((0)),
	[R6] [int] NOT NULL DEFAULT ((0)),
	[InvoNo] [varchar](20) NOT NULL DEFAULT (' '),
	[Ref] [varchar](20) NOT NULL DEFAULT (' '),
	[AgRef] [varchar](20) NOT NULL DEFAULT (' '),
	[PmtTrm] [int] NOT NULL DEFAULT ((0)),
	[DueDt] [int] NOT NULL DEFAULT ((0)),
	[IntRt] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Pri] [int] NOT NULL DEFAULT ((0)),
	[Exc] [tinyint] NOT NULL DEFAULT ((0)),
	[Att] [int] NOT NULL DEFAULT ((0)),
	[Task] [int] NOT NULL DEFAULT ((0)),
	[Cust] [int] NOT NULL DEFAULT ((0)),
	[Sup] [int] NOT NULL DEFAULT ((0)),
	[Emp] [int] NOT NULL DEFAULT ((0)),
	[Act] [varchar](40) NOT NULL DEFAULT (' '),
	[CID] [varchar](30) NOT NULL DEFAULT (' '),
	[DbAutSt] [tinyint] NOT NULL DEFAULT ((0)),
	[CrAutSt] [tinyint] NOT NULL DEFAULT ((0)),
	[NoteNm] [varchar](260) NOT NULL DEFAULT (' '),
	[VoTpFl] [int] NOT NULL DEFAULT ((0)),
	[DbAcFl] [int] NOT NULL DEFAULT ((0)),
	[CrAcFl] [int] NOT NULL DEFAULT ((0)),
	[Dupl] [int] NOT NULL DEFAULT ((0)),
	[Srt] [int] NOT NULL DEFAULT ((0)),
	[ChDt] [int] NOT NULL DEFAULT ((0)),
	[ChTm] [smallint] NOT NULL DEFAULT ((0)),
	[ChUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[LckSt] [tinyint] NOT NULL DEFAULT ((0)),
	[ChPrc] [int] NOT NULL DEFAULT ((0)),
	[ChSm] [int] NOT NULL DEFAULT ((0)),
	[Obl] [int] NOT NULL DEFAULT ((0)),
	[PropPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[PropNo] [int] NOT NULL DEFAULT ((0)),
	[ExAut] [tinyint] NOT NULL DEFAULT ((0)),
	[Txt2] [varchar](200) NOT NULL DEFAULT (' '),
	[BankG] [varchar](35) NOT NULL DEFAULT (' '),
	[VoGr1] [int] NOT NULL DEFAULT ((0)),
	[VoGr2] [int] NOT NULL DEFAULT ((0)),
	[VatAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FixAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshDueDt] [int] NOT NULL DEFAULT ((0)),
	[CshCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CshAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrevVoNo] [int] NOT NULL DEFAULT ((0)),
	[TransSt] [int] NOT NULL DEFAULT ((0)),
	[EFT1] [int] NOT NULL DEFAULT ((0)),
	[EFT2] [int] NOT NULL DEFAULT ((0)),
	[EFT3] [int] NOT NULL DEFAULT ((0)),
	[EFT4] [int] NOT NULL DEFAULT ((0)),
	[DbTrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[CrTrnCl] [tinyint] NOT NULL DEFAULT ((0)),
	[TmpTr] [int] NOT NULL DEFAULT ((0)),
	[PrtCurAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PrtAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ClPrc] [tinyint] NOT NULL DEFAULT ((0)),
	[AmExVAT] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DelActNo] [int] NOT NULL DEFAULT ((0)),
	[CstAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PictNo] [varchar](260) NOT NULL DEFAULT (' '),
	[WebPg] [varchar](260) NOT NULL DEFAULT (' '),
	[Free1] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free3] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[Free4] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbAcFl2] [int] NOT NULL DEFAULT ((0)),
	[CrAcFl2] [int] NOT NULL DEFAULT ((0)),
	[R7] [varchar](40) NOT NULL DEFAULT (' '),
	[R8] [varchar](10) NOT NULL DEFAULT (' '),
	[R9] [varchar](10) NOT NULL DEFAULT (' '),
	[R10] [varchar](10) NOT NULL DEFAULT (' '),
	[R11] [varchar](10) NOT NULL DEFAULT (' '),
	[R12] [varchar](10) NOT NULL DEFAULT (' '),
	[GiroChSm] [int] NOT NULL DEFAULT ((0)),
	[PmtMt] [int] NOT NULL DEFAULT ((0)),
	[Un] [int] NOT NULL DEFAULT ((0)),
	[PrBt] [int] NOT NULL DEFAULT ((0)),
	[JNo] [int] NOT NULL DEFAULT ((0)),
	[UpdBndNo] [int] NOT NULL DEFAULT ((0)),
	[UpdLnNo] [int] NOT NULL DEFAULT ((0)),
	[PmVaCAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PmVaAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[DbTxCdP] [int] NOT NULL DEFAULT ((0)),
	[DbTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[CrTxCdP] [int] NOT NULL DEFAULT ((0)),
	[CrTrnClP] [tinyint] NOT NULL DEFAULT ((0)),
	[WfId] [int] NOT NULL DEFAULT ((0)),
	[PLDNo] [int] NOT NULL DEFAULT ((0)),
	[PLDFlow] [int] NOT NULL DEFAULT ((0)),
	[ExtRef1] [varchar](20) NOT NULL DEFAULT (' '),
	[ExtRef2] [varchar](20) NOT NULL DEFAULT (' '),
	[Dt1] [int] NOT NULL DEFAULT ((0)),
	[Dt2] [int] NOT NULL DEFAULT ((0)),
	[BankCon] [int] NOT NULL DEFAULT ((0)),
	[BankAcLn] [int] NOT NULL DEFAULT ((0)),
	[PmVaAmCD] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[FreeCurA] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[PStYrPr] [int] NOT NULL DEFAULT ((0)),
	[PEnYrPr] [int] NOT NULL DEFAULT ((0)),
	[SmDb] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[SmCr] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[BankAm] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[ExtRef3] [varchar](20) NOT NULL DEFAULT (' '),
	[Cur2] [int] NOT NULL DEFAULT ((0)),
	[ExRt2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[CurAm2] [decimal](28, 6) NOT NULL DEFAULT ((0.0)),
	[RealJNo] [int] NOT NULL DEFAULT ((0)),
	[ValSt1] [int] NOT NULL DEFAULT ((0)),
	[ValSt2] [int] NOT NULL DEFAULT ((0)),
	[ValSt3] [int] NOT NULL DEFAULT ((0)),
	[ValSt4] [int] NOT NULL DEFAULT ((0)),
	[EftFrmTp] [int] NOT NULL DEFAULT ((0)),
	[PrK] [int] NOT NULL DEFAULT ((0)),
	[StrtPer] [int] NOT NULL DEFAULT ((0)),
	[RealLnNo] [int] NOT NULL DEFAULT ((0)),
	[CreDt] [int] NOT NULL DEFAULT ((0)),
	[CreTm] [smallint] NOT NULL DEFAULT ((0)),
	[CreUsr] [varchar](24) NOT NULL DEFAULT (' '),
	[Ctry] [int] NOT NULL DEFAULT ((0)),
	[EsTxTrm] [smallint] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK__WaVo] PRIMARY KEY CLUSTERED 
(
	[BndNo] ASC,
	[LnNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [FromNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ToNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [GenAcNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [OlAcNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ClReAcNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [ClBaAcNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [Cl3AcNo]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [AcIntProc]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AcInt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [InfTp]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [Txt1]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [Txt3]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Qty1]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Qty2]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Qty3]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [TpFld]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [MemoFNm]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [ChTmms]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [AIProc]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ActInf] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT (' ') FOR [SocMed]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT (' ') FOR [Acc]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ActorSocMe] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Lang]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Shrt]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Phone]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [PrivPh]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [MobPh]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Pers]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Fax]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Title]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [LiaAd]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Trade]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Distr]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [BsNo]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [NoOfEmp]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0.0)) FOR [Turn]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [SrcNo]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [AdPro]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [AgrActNo]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [PriActNo]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [Acc]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AgrAcc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [SubProd]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [AgrProc]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [RspTp]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [Int]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [NoOfInt]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0.0)) FOR [FixedQty]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [StructProc]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AgrStruct] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [SysID]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT (' ') FOR [Psw]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [SchNo]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [BatchCnt]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [SendRef]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Altinn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [BatchID]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [SendRef]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [SchNo]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [SchSpec]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [RecRef]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [PrCd]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [Pr]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [Yr]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [MsgTp]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [Msg]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [SubmRef]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [WrkFlRef]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [ArchRef]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AltinnLog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT (' ') FOR [AltProd]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [Lang]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [AltProdSt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [PrCatNo]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AltProd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0.0)) FOR [MinNo]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0.0)) FOR [PerAdd]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [RndInMin]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AOProdInf] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [VatRepNo]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [RefId]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [RepMsg]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [SrvRef]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ARArch] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [Cust]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [Sup]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [Emp]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [Role]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ChTmms]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [TempFor]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [ReportTo]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0.0)) FOR [MaxAttAm]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AssLink] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [DbAcCl]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [DbAcNo]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [DbTxCd]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [CrAcCl]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [CrAcNo]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [CrTxCd]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0.0)) FOR [Shr]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [Exc]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [Blank]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [TxCdProc]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR1]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR2]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR3]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR4]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR5]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [SelR6]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR7]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR8]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR9]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR10]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR11]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [SelR12]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [DstK]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [PrK]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [ExpAut]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Aut] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT (' ') FOR [Cd]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[AutInvOp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [BankG]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [GiroChSm]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [BankCon]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ExPro]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [PmtMt]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [AgAcNo]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [PmtCur]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [CrCdKey]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [ExpPr]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [IntGr]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [ClIntTp]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [SuitNo]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [AgCustNo]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[BankAc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [SwftCd]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [SwftAd1]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [SwftAd2]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [SwftAd3]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [SwftAd4]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [BGiro]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [CurAc]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [CurNo]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [GenAcNo]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [Phone]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [Fax]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [Branch]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[BankCon] ADD  DEFAULT (' ') FOR [IBAN]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [FrFileNm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [ToFileNm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [CustNo]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Div]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Oper]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [LstTrfDt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [LstDySq]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [LstSq]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [ImFileNm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [ExFileNm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Passw]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [NwPassw]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [BankSys]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [BankG]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [BankCon]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [RmtAc]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [RmtFeeAc]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [CNtDy]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [EFTProc]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [CurCd]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [AbCst]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [DeclCd]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [PmtLnPro]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [BankNm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [EftSep]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [NtfCd]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [NtfTxt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [TxtCd]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [TxtLn]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [VoSrNo]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [DeclTxt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [EftFrmTp]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[BPart] ADD  DEFAULT (' ') FOR [ApSigKey]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [BPartNo]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [TrfDt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [PlTrfDt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT (' ') FOR [ToFileNm]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [PmtSt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [FrDySq]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [ToDySq]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [PmtTp]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [CurCd]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[BPmt] ADD  DEFAULT (' ') FOR [ApReqId]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CurNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [ExchRt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [CAm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [LnSt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [RetCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [SugDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [RecDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [ValDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [BatDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [BankRef]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [RlExchRt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [DySq]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [PmtAc]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [RecRef]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [DeclCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [DeclTxt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [PmtDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [TxtCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [TxtLn]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [PmtLnPro]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [ActAm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [AbCst]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [DmCst]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [AgExchRt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [AgWt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [TrmCtr]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [TrmRt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [ChkCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [TlxFax]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [TlxCtrCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [TlxFaxNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [Att]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [Cid]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [NtfCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [NtfTxt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [BankG]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [BankSeq]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [Prv]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [GiroChSm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [BankAcLn]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CNtDy]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CurCd]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [PmtCur]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0.0)) FOR [TrfExRt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [BPartNo]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [EftFrmTp]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[BPmtLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [LogTp]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [TabNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ColNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ProcNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [ChPK]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [PrvVal]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [NewVal]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [AccGrCh]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [RepNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [CmdNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [MiscFNo]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ChLog] ADD  DEFAULT (' ') FOR [Cmt]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [ExpTp]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [TblID]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [ChTp]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [PrLbl]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ChQue] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [Cnt]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CmpRsp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [Comb]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CombG] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrAcNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToAcNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR1]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR1]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR2]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR2]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR3]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR3]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR4]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR4]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR5]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR5]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrR6]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToR6]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR7]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR7]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR8]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR8]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR9]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR9]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR10]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR10]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR11]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR11]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrR12]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToR12]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrEmpNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToEmpNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [FrProdNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ToProdNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [Comb]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [CombPro]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [FrResNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [ToResNo]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CombMat] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LtrNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DocDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [StDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LayNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [PgElNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CsDPro]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Lang]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Shrt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Phone]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [PrivPh]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [MobPh]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Pers]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Fax]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Title]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LiaAct]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Seller]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Buyer]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Att]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [CrLmt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CrSusp]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [CrEval]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ExVat]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [InvoCust]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [FactNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CPmtTrm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CPmtMt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [BGiro]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [PGiro]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DebFrDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DebToDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [MaxRems]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LstRemDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LstRemNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [IntRt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [RmtPri]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [RmtSup]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [OurCNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Trade]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Distr]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [BsNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [Turn]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Branch]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DirDeb]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [MaxDebAm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CustPref]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [YrRef]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [Fax2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [EUTaxNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [DocSMt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [MainAct]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [MaxDueP]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [MaxDueDy]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [AcDocSMt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ActPro]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [IntAd1]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [IntAd2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [EANLocCd]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [OlAcNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ClReAcNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ClBaAcNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [GiroChSm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [BankCon]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [ViPNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [ViPArea]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [RemPrDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [IntGr]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CNtDy]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [FCNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Cl3AcNo]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [AgrChBal]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [CurFee]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0.0)) FOR [Fee]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CustPre2]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CsDoc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT (' ') FOR [Value]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CsDocF] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [VoNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [VoDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ValDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [AcYr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [AcPr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [VoTp]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [Txt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [RCurAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [RAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PayedDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [Ref]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [AgRef]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Trn]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Pri]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ExcInt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [IntRt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CurIntAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [IntAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [IntFrDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [IntToDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ExcRem]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Rems]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [RemRnNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [GenAcNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Qty]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [SrcTp]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [SrcJNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Err]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [AgAcCl]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [AgAcNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Ctrl]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Cr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PmtTrm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CshDueDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CshCurAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CshAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DebDir]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DebRnNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [VoGr1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [VoGr2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [FixCurAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [FixAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PrevVoNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [TransSt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [TmpTr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [FactRNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [PrtCurAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [PrtAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ClPrc]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CNAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [WO]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [AcCPmtV]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [AcDPmtV]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DelActNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [PictNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PmtMt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PrBt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [UpdBndNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [UpdLnNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [RemPrDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [AcYrPr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [PmVaCAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [PmVaAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DbTxCdP]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DbTrnClP]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [ExtRef1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [ExtRef2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PmtNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [WfId]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PLDNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [PLDFlow]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ClIntFrD]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ClIntToD]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ClIntCAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ClIntAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [PmVaAmCD]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [OrgDueDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [FreeAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [FreeCurA]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [LegRRNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CurCExRt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CurCAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CurCDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CurCRNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [LastCAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [BankG]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [ExtRef3]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [RemDocNo]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ClSugFrD]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ClSugToD]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ClSugCAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ClSugAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [ExRt2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CurAm2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [CRCshAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [RCshAm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [RemSt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [OrgCID]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CsDLPro]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [DocSrt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M1]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M2]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M3]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M4]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M5]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M6]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M7]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M8]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M9]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M10]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M11]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M12]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M13]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M14]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M15]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M16]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M17]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M18]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M19]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M20]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0.0)) FOR [M21]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [M22]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CsDocLnTp]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CsDocLn] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [AcAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [CorExRt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [CorAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [CorDt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [NewCRt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [NewCAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [CorDP]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [CorDAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [ACorDP]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [ACorDAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [TransSt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0.0)) FOR [LastCAm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CurCData] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [FrAcNo]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [ToAcNo]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [DbCurCR]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [CrCurCR]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [DbCurCB]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [CrCurCB]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CurCor] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT (' ') FOR [DocNo]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[CustDocL] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val1]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val2]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val3]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val4]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val5]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val6]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val7]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val8]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val9]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val10]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val11]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0.0)) FOR [Val12]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DecFVar] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT (' ') FOR [DeclTxt]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [BFormat]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [TxtProc]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DeclCd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [DelActNo]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DelAd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [KeyNo]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT (' ') FOR [FrVal]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT (' ') FOR [ToVal]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [DelimPro]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Delim] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DelimG] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [ProgNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [FileCrDt]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [FileChDt]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [Inc]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [DocGr]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [CrActNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [MainDoc]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [WfId]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [PLDNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [PLDFlow]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [Psw]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [TemplLnNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [TemplTpNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [RunNo]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [Icon]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Doc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [AgrActNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [AgrNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [RsvNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [CrActNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [DocGr]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DocLink] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR1]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR2]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR3]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR4]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR5]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR6]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR7]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR8]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR9]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR10]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR11]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0.0)) FOR [SmR12]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DstKey] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0.0)) FOR [Shr]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[DstLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT (' ') FOR [Txt]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [Orig]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EDIErr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT (' ') FOR [XslFileNm]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT (' ') FOR [XsdFileNm]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EdiFormId] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT (' ') FOR [Templ]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EDIMsg] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [DocSize]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [TransSt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [DocNo]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [NoOfSh]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [OutMed]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [TransID]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [Party]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [MsgID]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [RetCd]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [StAsTxt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [FormId]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [MsgTp]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [MsgLnNo]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EDITrLog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [FrServP]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [ToServP]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [WrFileNm]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [RdFileNm]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [PID]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [RunSt]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [Psw]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [EdocProc]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [ProvURL]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [DownPath]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [UpPath]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [FormId]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [AcknPath]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [Env]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EDocInfo] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [RwSq]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [RejTr]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EDocLog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [SmtpAd]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [SmtpPort]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [SmtpUser]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [SmtpPass]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [EmCoProc]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [Bcc]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [FromMail]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EmlCfgFrm] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT (' ') FOR [ProgPath]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT (' ') FOR [DataPath]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [ProgLang]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EmpPath] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [TmplType]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT ((0)) FOR [EmlTplGr]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT (' ') FOR [FileDesc]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT (' ') FOR [Bcc]
GO
ALTER TABLE [dbo].[EmTpl] ADD  DEFAULT (' ') FOR [FromMail]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [ErrTp]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [TabNo]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT (' ') FOR [Data]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [QNo]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ErrLog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [EsTxStNo]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EsTxStmtL] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [EsTxStNo]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[EsTxTrm] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0.0)) FOR [SalesRt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0.0)) FOR [CalcRt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0.0)) FOR [PurcRt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ExRt] ADD  DEFAULT ((0.0)) FOR [EuRtEcb]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0.0)) FOR [SalesRt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0.0)) FOR [CalcRt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0.0)) FOR [PurcRt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ExRt2] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [MsgTp]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [ObNm]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [ObTxt]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ObNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [PrgNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [CfFl]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ExFrNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ExToNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [InFrNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [InToNo]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [TbNm1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [TbNm2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [ColNm1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Sep1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [ColNm2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Sep2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Exp1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Exp2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Exp3]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Exp4]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Txt1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Txt3]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Txt4]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [Gr1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ExtConf] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [ImpFNm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [FactFNm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [LstRnDt]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [LstRnNo]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [FactPro]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [FactCust]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [FactID]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CIDFact]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [FactCID]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CIDProc]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CIDCust]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CIDRef]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [BGiro]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [OCRAcB]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [VoSr]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CIDFrm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [RmtFeeAc]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [CustNo]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [AgAcNo]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [BefDueDy]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [RecpFile]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [RecpImp]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [ChgFile]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [ChgImp]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [PaymFile]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [PaymImp]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [CredDep1]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [CredDep2]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [SqlFltSP]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [FrTxtReF]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [BrkTxt1]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [BrkTxt2]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [DyBefDed]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [DirDebSt]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [LnInvSrc]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [EftErrAc]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [AgioVTp2]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[FactComp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [FromNo]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [ToNo]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [FormTp]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[FormCh] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Cust]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Sup]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Emp]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [StrLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [DelLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [StcNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [OrdJNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ProdTrNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [VoJNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [BgNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [BgLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AgrRefNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AcYr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AcPr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [TxYr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [TxTrm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [StYrPr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [BndNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [BndLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [FrInfTp]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [Txt1]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val1]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val4]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val5]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val6]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val7]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val8]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val9]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val10]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val11]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val12]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val13]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val14]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [Txt3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [Txt4]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [MainFrI1]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [FreeInf2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [FreeInf3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [InfCatNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [PrCatNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt5]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt6]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt7]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt8]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt9]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt10]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt11]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt12]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt13]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Dt14]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [PriceLn]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [FrInfTp2]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [FrInfTp3]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val15]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val16]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val17]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val18]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val19]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val20]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val21]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val22]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val23]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val24]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val25]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val26]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val27]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0.0)) FOR [Val28]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [TsGrNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [YrPr]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [PrtSeqNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [AdNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [ProgNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [TemplLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [DocVerNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [DocLkLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [BankLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [PrxNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [RealJNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [RealLnNo]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[FreeInf1] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Cust]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Sup]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Emp]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [StrLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [DelLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [StcNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [OrdJNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ProdTrNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [VoJNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [BgNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [BgLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AgrRefNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AcYr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AcPr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [TxYr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [TxTrm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [StYrPr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [BndNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [BndLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [FrInfTp]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [Txt1]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val1]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val4]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val5]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val6]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val7]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val8]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val9]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val10]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val11]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val12]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val13]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val14]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [Txt3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [Txt4]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [FreeInf1]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [MainFrI2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [FreeInf3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [InfCatNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [PrCatNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt5]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt6]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt7]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt8]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt9]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt10]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt11]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt12]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt13]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Dt14]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [PriceLn]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [FrInfTp2]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [FrInfTp3]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val15]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val16]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val17]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val18]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val19]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val20]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val21]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val22]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val23]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val24]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val25]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val26]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val27]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0.0)) FOR [Val28]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [TsGrNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [YrPr]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [PrtSeqNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [AdNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [ProgNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [TemplLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [DocVerNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [DocLkLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [BankLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [PrxNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [RealJNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [RealLnNo]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[FreeInf2] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Cust]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Sup]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Emp]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [StrLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [DelLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [StcNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [OrdJNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ProdTrNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AcNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AcCl]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [VoJNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [BgNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [BgLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AgrRefNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AcYr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AcPr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [TxYr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [TxTrm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [StYrPr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [BndNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [BndLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [FrInfTp]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [Txt1]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [Txt2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val1]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val4]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val5]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val6]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val7]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val8]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val9]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val10]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val11]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val12]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val13]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val14]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [Txt3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [Txt4]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [FreeInf1]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [FreeInf2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [MainFrI3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [InfCatNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [PrCatNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt5]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt6]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt7]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt8]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt9]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt10]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt11]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt12]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt13]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Dt14]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [PriceLn]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [FrInfTp2]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [FrInfTp3]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val15]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val16]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val17]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val18]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val19]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val20]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val21]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val22]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val23]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val24]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val25]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val26]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val27]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0.0)) FOR [Val28]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [TsGrNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [YrPr]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [PrtSeqNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [AdNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [ProgNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [TemplLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [DocVerNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [DocLkLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [BankLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [PrxNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [RealJNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [RealLnNo]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[FreeInf3] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [FrTm]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ToTm]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [Opt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [HolFl]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Hol] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [ColNo]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Ind] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [InfTp]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [InfCat]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[InfNeed] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [AgInfTp]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[InfTp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val1]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val2]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val3]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val4]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val5]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val6]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val7]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val8]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val9]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val10]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val11]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [Val12]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[IntFVar] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [OnOrdNo]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[IntLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [IntGr]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0.0)) FOR [MinAm]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0.0)) FOR [IntRt]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [IntTp]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[IntRt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0.0)) FOR [Rt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [InvTxAc]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [BasAc]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [AfterDt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0.0)) FOR [NewRt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[InvTx] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT (' ') FOR [LocInf1]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0.0)) FOR [MaxQtyUn]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [ItmLocProc]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0.0)) FOR [Cntable]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [CntGr]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [LstCntDt]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT (' ') FOR [CntBy]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0.0)) FOR [CntDf]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ItemLoc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT (' ') FOR [Dest]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT (' ') FOR [Data]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [JobDSt]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[JobDstCmd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [PhysLoc]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [LocProc]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Lgt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Wdt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Hgt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Area]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Volume]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [Wgt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [UsdVol]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [UsdWgt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [UsdQty]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [FreeVol]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [FreeWgt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0.0)) FOR [FreeQty]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Loc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [PayedDt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0.0)) FOR [InCurAm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0.0)) FOR [CurIntAm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0.0)) FOR [IntAm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [IntFrDt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [IntToDt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[MaCustTr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [PayedDt]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0.0)) FOR [InCurAm]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[MaSupTr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [MsgTo]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [MsgFrom]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [Type]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [Body]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[MsgFrom] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [MsgTo]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [MsgFrom]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [Type]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [Body]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[MsgTo] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [ToNo]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [Rsv]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[NoSr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT (' ') FOR [NtfTxt]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [BFormat]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [NtfProc]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[NtfCd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [OrdAttProc]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [FileTp]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT (' ') FOR [SrcFNm]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdAtt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [Stat]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [NOrdSum]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [FrAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [ExclVatAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [VatBasAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [VatFreeAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0.0)) FOR [InclVatAm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [CfDelDt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [OrdDt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT (' ') FOR [ErrMsg]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdBas] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [DocType]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [XmlFNm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [SuppNo]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [RmitNo]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [Pref]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [Stat]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [InvoRef]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [InvDt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [NOrdSum]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [InvoFee]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [TotFrAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [ExclVatAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [VatBasAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [VatFreeAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [InclVatAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [RoundAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0.0)) FOR [InvoAm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [Cid]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [ErrMsg]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdDBas] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DocTp]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DocDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LayNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PgElNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TrTp]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdTp]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Lang]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [SelBuy]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TransGr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdBasNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdPrGr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CustPrGr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [TotDcP]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [TotDcAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [TotDcDAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ObVatNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ExVat]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ExSpc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [NOrdSum]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M1]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DNOrdSum]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DVatAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [OrdSum]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [OrdSumT]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DOrdSum]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DOrdSumT]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [IncCst]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [CtrAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelActNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelNm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelAd1]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelAd2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelAd3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelAd4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelPNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelPArea]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelCtry]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelLang]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FrStc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ToStc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelTrm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelMt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [ConsNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [FrAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [PstAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CfDelDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [Label]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [OurRef]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [YrRef]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [ReqNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [InvoCust]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [RmtSup]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PmtTrm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PmtMt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [InvoPl]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [FactNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [InvoRef]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ExOrdPrc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdPrSt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M5]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [InvoAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LstSetDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LstInvDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [ExPr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [EdSt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Dupl]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DelPri]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [EmpPrGr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [WageRtNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Trunc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DTrunc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [FrAm2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [FrAm3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [FrAm4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Package]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [SpcTxAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DSpcTxAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [InvoSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [IncSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M6]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M7]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [InvoIF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DInvoIF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [IncIF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M8]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M9]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M10]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M11]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M12]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M13]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M14]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CstCur]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [CstExRt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [CIncCst]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [CIncSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [CIncIF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M15]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [SaleCstP]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [MainOrd]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ERetDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TransGr2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [VoSr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [InqCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PurcCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OfCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CfCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PicCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PacCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ConCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [InvoCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DtyFrAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DDtyFrAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ArDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DifProd]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DCtrAm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CustPrG2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PrSup]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [SPrAdd]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdPref]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [M16]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [M17]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [NWgt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Tare]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M18]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Lgt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Area]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Vol]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [CSOrdNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [FinBy]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [NoUn]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TransGr3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TransGr4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ConNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PacNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PicNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CfNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OfNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PurcNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [InqNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [EDISt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [OrdBal]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DOrdBal]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FCfDelDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [RlDelDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdPrSt2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TestRes]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DocSMt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [IgnTest]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FrCusPro]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FinDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ProdNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ProdCnt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [GWgtTot]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [M19]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [GWgtCoSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [OvCNOSm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DepDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [CustPrG3]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TspAgrNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [FinWgt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [TonRt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PropPrc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DocSMt2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LiaAct2]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [DesProDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [FCNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ShpActNo]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [OrdDPro]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [MnOrDocN]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelVisPN]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [DelVisPA]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PrK]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [StrtPer]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PStYrPr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [PEnYrPr]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DCstDf]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DCstDfSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DCstAd]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0.0)) FOR [DCstAdSF]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT ((0)) FOR [MavStat]
GO
ALTER TABLE [dbo].[OrdDoc] ADD  DEFAULT (' ') FOR [MavInvId]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdDocAtt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT (' ') FOR [Value]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdDocF] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [LnNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TrDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EmpPrGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [WageRtNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [InvoCust]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CustPrGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [RmtSup]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdPrGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [SpecFunc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [StrSt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ExcPrint]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProcMt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FrStc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ToStc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [StUnRt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EdFmt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [FrNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [ToNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoReg]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoInvoAb]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoRet]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoComp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoScr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CompPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DCompPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CstPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [StPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DStPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DPrice]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc1P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc1Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc1DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc2P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc2Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc2DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [VatNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DstDc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DDstDc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DstAd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DDstAd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [SpcTxCd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [SpcTxAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DSpcTxAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DVatAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [InvoRef]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [RefNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CfDelDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [SelBuy]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [WageSrt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [AdWage1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [AdWage2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TransGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [IncCst]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M5]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M6]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PurcNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [SerNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [Loc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DurDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [ExQty]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M7]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoInq]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoPurc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoOf]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoCf]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoPic]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M8]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoFin]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M9]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M10]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [FinInc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M11]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M12]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoPac]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoCon]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M13]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoInvo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EditPref]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [FFm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FSz]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FSt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [LnFl]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Dupl]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelAltNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ToShpNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CstCur]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CstExRt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CCstPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CIncCst]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [InvoSF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DInvoSF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [IncSF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M14]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M15]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [InvoIF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DInvoIF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [IncIF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M16]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M17]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M18]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M19]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M20]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M21]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M22]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CIncSF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CIncIF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M23]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Dupl2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelActNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CstPrAdd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelMt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [SCd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoRsv]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M24]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [GrSep]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TrTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ERetDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EUStatNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdTp2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TransGr2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M25]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Factor3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ArDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Stat1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Stat2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [InvoPlLn]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [LstSetDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Shr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TanspTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M26]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdPrG2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdPrG3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CustPrG2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [FreeNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [RlzFree]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NWgtU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [TareU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M27]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [LgtU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [WdtU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [HgtU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [AreaU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [VolU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoUn]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NWgtL]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [TareL]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M28]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [LgtL]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [AreaL]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [VolL]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Measure]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DFrAm1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DFrAm2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DFrAm3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DFrAm4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PrUn]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [FinBy]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TransGr3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TransGr4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdTp3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdTp4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [TrInf1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [TrInf2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EDISt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [OrdTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Tenancy]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [PrNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [OrdLnSt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M29]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M31]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M32]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M33]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M34]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M35]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [InvoMth]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DensU]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [MntTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DemTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M36]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [PriceF]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FCfDelDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [RlDelDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DelGr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [AdmTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M37]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Alloc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M38]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PrTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Cus]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FrCusPro]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M39]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FinDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [YrWk]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [FinTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc3P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc3Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc3DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc4P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc4Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc4DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc5P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc5Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc5DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc6P]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc6Am]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Dc6DAm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoProd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [TrInf3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [TrInf4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [YrPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TrfOrdNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D1Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D2Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D3Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D4Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D5Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D6Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [D7Hr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M40]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M41]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [OvCNOSm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [PicN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [FinN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [RetN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CompN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [ScrN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [RlzN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [RsvN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CustPrG3]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [TspAgrNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [SugPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [PicMax]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M42]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PropPrc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [AcYrPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [WfId]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PLDNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PLDFlow]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DesProDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M43]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M44]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M45]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M46]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M47]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M48]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M49]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M50]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [StHLnNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [DocSrt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [PicNotR]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M51]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [SrcTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [LnPurcNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [OrdDLPro]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoOrg]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PrK]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [StrtPer]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PStYrPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [PEnYrPr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [DCstAd]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [CfN]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoRsvInc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [M52]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ExID]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [VatRt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [ProdProcNo]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [M30]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [ToLoc]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [NoPerStr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [OrdDocLnTp]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0.0)) FOR [VatBas]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[OrdDocLn] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DeliQty]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DcAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DcP]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DcBAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [VatP]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [VatBAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DVatAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0.0)) FOR [DVatBAm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [CfDelDt]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT (' ') FOR [ErrMsg]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [ExID]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [Stat]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[OrdLnBas] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [PicLstSt]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [RunNo]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PicLst] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLCom] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ProcTp]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [Owner]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [ProcTpId]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFData] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ProcTp]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [Owner]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [ProcTpId]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFDatU] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [DocTxt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [FileExt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [OrgFNm]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [NxtDueDt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFDocs] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [DocTxt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [FileExt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [OrgFNm]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [NxtDueDt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFDocU] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFGMem] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFGr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [FlTp]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [Id]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [Flags]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDFType] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [DocNo]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PLDocGen] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [FCNo]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [PmtCd]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [RegTp]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [AgrId]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [PerTp]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [DueTp]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0.0)) FOR [AgrAm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0.0)) FOR [LstChrAm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0.0)) FOR [AccAm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ValFrDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ValToDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ChrDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [DueDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ComCd]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [PayerInf]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [RefCID]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [LstRunNo]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [LstVoNo]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [PrevPNo]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PmtAgr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT (' ') FOR [Place]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT (' ') FOR [CouncNo]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0.0)) FOR [SmShr]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [PerDbAc]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [PerCrAc]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [StrtPer]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [NoPer]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PrKey] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0.0)) FOR [Shr]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PrLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [MainPrC]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [EBAcGr]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [Txt]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ProdCat] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [ExOutp]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ProdDesc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [CopyProc]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM1]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM1b]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM1c]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM2b]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM2c]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM3b]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM3c]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM4b]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM4c]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM5]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM5b]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrM5c]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ExpStr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdPro]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [AgrProc]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [AdWage1]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [AdWage2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdTp]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdTp2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdTp3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdTp4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdGr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [TrInf1]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [TrInf2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [TrInf3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [TrInf4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [StcNo]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [WageRtNo]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [WageSrt]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdPrGr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdPrG2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ProdPrG3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [StSaleUn]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [CstPrAdd]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [EUStatNo]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [TrAm]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [SPrAdd]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrUn]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [CusStNo]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0.0)) FOR [DesMrg]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo2]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo3]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo4]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo5]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [PrCatNo6]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ProdProc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [InvoDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TrTp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TrDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [EmpPrGr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [WageRtNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [InvoCust]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CustPrGr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RmtSup]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdPrGr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [SpecFunc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StrSt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ExcPrint]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProcMt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FrStc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ToStc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [StUnRt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [EdFmt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FrNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [ToNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoReg]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoInvoAb]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoRet]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoComp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoScr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CompPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DCompPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CstPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [StPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DStPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DPrice]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc1P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc1Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc1DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc2P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc2Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc2DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdGr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [VatNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DstDc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DDstDc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DstAd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DDstAd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [SpcTxCd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [SpcTxAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DSpcTxAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DVatAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [InvoRef]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RefNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CfDelDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [SelBuy]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ResNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [WageSrt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [AdWage1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [AdWage2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdTp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TransGr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [IncCst]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PurcNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [SerNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [Loc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DurDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [ExQty]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RlDelDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Ctrl]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DelAltNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ToShpNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CstCur]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CstExRt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CCstPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CIncCst]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DelActNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [CstPrAdd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DelMt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [SCd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ERetDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RlRetDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [EUStatNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdTp2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TransGr2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Factor3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ArDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Stat1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Stat2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdPrG2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdPrG3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CustPrG2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoUn]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [YrPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [YrWk]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [InvoPlLn]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FreeNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NWgtU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [TareU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [LgtU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [WdtU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [HgtU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [AreaU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [VolU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NWgtL]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [TareL]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [LgtL]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [AreaL]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [VolL]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FrAm1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FrAm2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FrAm3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [FrAm4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PrUn]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [FinBy]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TransGr3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TransGr4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdTp3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdTp4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [TrInf1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [TrInf2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Tenancy]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [PrNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DensU]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [PriceF]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FCfDelDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PrTp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Cus]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RepNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FinDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [EditPref]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FinTm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc3P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc3Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc3DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc4P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc4Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc4DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc5P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc5Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc5DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc6P]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc6Am]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Dc6DAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TransSt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrCstPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrFrAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrFrAm2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrFrAm3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrFrAm4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [OrCusAm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [TrInf3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [TrInf4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Free1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Free2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Free3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [Free4]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CustPrG3]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [WebPg]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TspAgrNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [SugPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FinYrPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [FinYrWk]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [StcMov]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [TrYrPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PropPrc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [AcYrPr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [LiaAct2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [WfId]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PLDNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PLDFlow]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [CID]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [DesProDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [ShpTrIn1]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [ShpTrIn2]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [SrcTp]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [LnPurcNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [RealJNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoRlz]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [NoOrg]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [InInc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [PrK]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [DCstAd]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [StcCst]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0.0)) FOR [VatRt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StHLnNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [ProdProcNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [ToLoc]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StcChRealJNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StcChRealLnNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StcValRealJNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [StcValRealLnNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CorStcValRealJNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CorStcValRealLnNo]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ProdTr2] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [ExeNm]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [ProgPath]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [DataPath]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [DocExt]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [ProgLang]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [DocProc]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [TempPath]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [InPath]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [Icon]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Prog] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [PrxActNo]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [PrxTp]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Proxy] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [PrePrice]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [NewPrice]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [Bal]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [RepSt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [RepNo]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [StcInc]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [PreDPr]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [NewDPr]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [PreDcP]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [PreDcAm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [PreDcDAm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [NewDcP]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [NewDcAm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0.0)) FOR [NewDcDAm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [Stc]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [PrRepP]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PrRep] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [CmpNo]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [AdNo]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [Att]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [RspTp]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [Trf]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0.0)) FOR [Num]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Prtcp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [OrdTp]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [ColDel]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [Keep]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PurcS] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [StcNo]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [DelAltNo]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ArDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [TanspTm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [DelDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [DelTm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [PurcDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0.0)) FOR [Num]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [Prod]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0.0)) FOR [NumBefR]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [OvDelDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ProdTm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0.0)) FOR [StUnRt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [ToStcNo]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[PurcSLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [MainR10]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R10] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R10Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [MainR11]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R11] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R11Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [MainR12]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R12] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R12Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R1Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [MainR2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [NewRNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [OldRNo]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R2] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R2Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [MainR3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [NewRNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [OldRNo]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R3] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R3Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [MainR4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [NewRNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [OldRNo]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R4] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R4Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [MainR5]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [NewRNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [OldRNo]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R5] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R5Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [MainR6]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [NewRNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [OldRNo]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R6] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R6Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [MainR7]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R7] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R7Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [MainR8]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R8] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R8Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Ad1]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Ad2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Ad3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Ad4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [PNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [PArea]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [IntAd]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [MailAd]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Prin]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [St]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Susp]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr5]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr6]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr7]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr8]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr9]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr10]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr11]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Gr12]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf7]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [Inf8]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [MainR9]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [AccRes]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [EStDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [EEndDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [RStDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0.0)) FOR [Am1]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0.0)) FOR [Am2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0.0)) FOR [Am3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0.0)) FOR [Am4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ActNo1]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ActNo2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ActNo3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ActNo4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Ctry]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [NewRNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [OldRNo]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [Cur2]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [BalProc]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [AcSet]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R9] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbCurIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrCurIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbCurCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrCurCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyIB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbQtyCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrQtyCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbAutCCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrAutCCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbAutQCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrAutQCh]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2IB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2IB]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbCur2Ch]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrCur2Ch]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [DbAutC2Ch]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0.0)) FOR [CrAutC2Ch]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[R9Bal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [Prc]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [TrCnt]
GO
ALTER TABLE [dbo].[RealJ] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [OrdJNo]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [TrNo]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [VoJNo]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [ValDt]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [Yr]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [Pr]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0.0)) FOR [StcCh]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0.0)) FOR [StcCst]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0.0)) FOR [RlStcVal]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [JDt]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [RlOr]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RealJLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [DfNo]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT (' ') FOR [AcGr]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [AcTp]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [FrAcNo]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ToAcNo]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [FrValDt]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ToValDt]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT (' ') FOR [Note]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RepNt] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [Nm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ReadInt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [TSGrNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [PropNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [Rsp]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [WebPg1]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [WebPg2]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ProgNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [TLnNo]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0.0)) FOR [MinQty]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0.0)) FOR [MaxQty]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0.0)) FOR [FixedQty]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [AgrProc]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [DebDy]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ProdPrGr]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ProdPrG2]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ProdPrG3]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [StdWageSrt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [OTWageSrt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [OT1WageRtN]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [OT2WageRtN]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [ChTmms]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Res] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [FrTm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ToTm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [Fin]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R1]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R2]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R3]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R4]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R5]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R7]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R9]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R10]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R11]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [R12]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ResRsv] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [ExpTp]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [R8]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [TblID]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [PrTp]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [Orig]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RptLbl] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [TrfShpNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [SerNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [Loc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Num]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoRet]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoComp]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoScr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoRsv]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoPic]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoRlz]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [RlDelDt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [CstPr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [DurDt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [TrNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [TrfJNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [TrfTrNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [PicRunNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [Dupl]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [CstCur]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [CstExRt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [CCstPr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoFin]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [RlRetDt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [FinBy]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Fr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Fr2]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Fr3]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Fr4]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [Cus]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [FinTm]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [RetN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [CompN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [ScrN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [PicN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [RlzN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [FinN]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [PictFNm]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [TrInf1]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [TrInf2]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [WfId]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [PLDNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [PLDFlow]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [InvoNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [RealJNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [FrStc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [TrTp]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoRsvInc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [ToStc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [DCstAd]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [ToLoc]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0.0)) FOR [NoPac]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [PurcNo]
GO
ALTER TABLE [dbo].[Rsv] ADD  DEFAULT ((0)) FOR [LnPurcNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [PosID]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [VoNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [StDt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [StTm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [Seller]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0.0)) FOR [DDiscAm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0.0)) FOR [DVatAm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0.0)) FOR [DAm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [EndDt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [EndTm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT (' ') FOR [CancelFl]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT (' ') FOR [TstSt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [StrtSeq]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [StopSeq]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [CustTp]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [VoTp]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT (' ') FOR [St]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [BndNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [ElJNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [StlmJNo]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RVo] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [VoNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [AtSeller]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [ISO]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [TotAm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [DcTp]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [DcTpEx]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [Ds1P]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [Dc1PAm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [DcTrans]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [Qty]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [EANItmNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [UnTp]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [VatAm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [LnTp]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [VatCd]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [GiftCpID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [Bank]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [CheckNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [PersonID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [PersonTp]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [CrCardTp]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [CrCardNm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [CrCardNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ExpDt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [VoNoRef]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [PosIDRef]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ValDt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [SerNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [R8Ref]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [LnID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [RefTxt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0.0)) FOR [NrmUnPr]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [RetReas]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ParLnID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [LnValid]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [St]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [R6]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [OrdNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [OrdLnNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [BndNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [BndLnNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ElJNo]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [AccID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [CostID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [EntryID]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[RVoLn] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [Un]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [StUnRt]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [NWgtU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [TareU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [LgtU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [WdtU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [HgtU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [AreaU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [VolU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [Measure]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [DensU]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [PrNo]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0.0)) FOR [Factor3]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [ChTmms]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[ScanCd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [MdmDataTp]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [FkInt32]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [MdmVer]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [MdmSyncVer]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [MdmDelVer]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [MdmPrc]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[SEMtInf] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT (' ') FOR [SerNo]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT (' ') FOR [ProdNo]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [FrStc]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [ShpNo]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [TrNo]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [TransSt]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Ser] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [SnapId]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[SESnapInf] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT (' ') FOR [Ver]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [ActNo]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Src] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT (' ') FOR [Val1]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT (' ') FOR [Val2]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[StrFVar] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [CustNo]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [StDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AgEndDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [REndDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Yr]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Pr]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Term]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [SuitP]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [LiaActNo]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Assessm]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [RepFDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [VatFDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [TaxFDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [SentDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AcSpDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [PuncDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [TallyDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [InvngDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [WgFinDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [HolAlSDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [WDSDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AcpLtDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [AcrHrs]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Invd]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [TskSrt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [TermAjDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [MtAjDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [ChEqDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [SkAcDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [FinAcDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AudActNo]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [StAudDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AnStlDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AsPaDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [PbArDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [TxRetDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [BoardDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [AgrRevDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf1]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf2]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf3]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf4]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf5]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [Inf6]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt1]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt2]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt3]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt4]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt5]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt6]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt7]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt8]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt9]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt10]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt11]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt12]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt13]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [Dt14]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val1]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val2]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val3]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val4]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val5]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val6]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val7]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val8]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val9]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val10]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val11]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val12]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val13]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0.0)) FOR [Val14]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TaskJ] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [OtPrGrNo]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [PrGrProc]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TaxAcGr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [FileNm]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [TemplTp]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [TabNo]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [DocGr]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [Psw]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [DocProc]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [AgrTxtNo]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [DataPath]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[Templ] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TemplAcc] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT (' ') FOR [Psw]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [DocProc]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TemplTp] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0.0)) FOR [PriceF]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TenancyF] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [EmpNo]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [FrTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [ToTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [TmDy]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [DeTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [NrmTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [NoOfWDy]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [AgrBalAp]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [AgrBIncTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [AgrBInvoTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [AgrBRsvTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [Overtime]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [FlexIB]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [TrToOrdBal]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [TrToWgBal]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [TSBSt]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [BookSt]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [MaxFl]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [TSProc]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [FlexCor]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT (' ') FOR [NoteNm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [Gr]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TSBal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [FrDt]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ToDt]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D1FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D1TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D2FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D2TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D3FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D3TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D4FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D4TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D5FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D5TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D6FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D6TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D7FrTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [D7TmDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [NoOfWDy]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [FrWkNo]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ToWkNo]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [TSGrProc]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [DeTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [NrmTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TSCal] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [CurrYr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [CurrYrPr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [SuspYrPr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [MaxFl]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [TSGrProc]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [NoOfPr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [FrTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [ToTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [DeTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [NrmTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT (' ') FOR [StdWageSrt]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT (' ') FOR [OTWageSrt]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [OT1WageRtN]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [OT2WageRtN]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TSGr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [SupNo]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0.0)) FOR [TonRt1]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0.0)) FOR [TonRt2]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0.0)) FOR [TonRt3]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0.0)) FOR [TonRt4]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT (' ') FOR [Zone]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TspAgr] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0.0)) FOR [ToWgt]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0.0)) FOR [Cst]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TspZ] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [TxCdNo]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT (' ') FOR [Descr]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [VatNo]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0.0)) FOR [WthTxRt]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0.0)) FOR [CstP]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [InvTxNo]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [Serv]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [WgDPro]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [TrnCl]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT (' ') FOR [TxInf]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0.0)) FOR [Shr]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [NwTxCdNo]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [NwAcNo]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TxCdAut] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [Dt]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [Tm]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT (' ') FOR [Usr]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [TxStNo]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [FormNo]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TxStmtL] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT (' ') FOR [TxtLn]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [BFormat]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT (' ') FOR [Inf]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [TxtProc]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[TxtCd] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT (' ') FOR [RefNo]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [AgJNo]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [AgEntNo]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [AgRefTp]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [AgJNo2]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [AgEntNo2]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [PrtCurAm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [PrtAm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [PmVaCAm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [PmVaAm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0.0)) FOR [PmVaAmCD]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [DbTxCdP]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [DbTrnClP]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [CrTxCdP]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [CrTrnClP]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [Payed]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[UpdMa] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[UsrComb] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[UsrDelim] ADD  DEFAULT (' ') FOR [CreUsr]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT (' ') FOR [RefNo]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [JNo]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [EntNo]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [Srt]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [ChDt]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [ChTm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT (' ') FOR [ChUsr]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [LckSt]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [ChPrc]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [ChSm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [AgRefTp]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [AgJNo2]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [AgEntNo2]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [Cur]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [ExRt]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [CurAm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [Am]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [PrtCurAm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [PrtAm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [PmVaCAm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [PmVaAm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0.0)) FOR [PmVaAmCD]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [DbTxCdP]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [DbTrnClP]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [CrTxCdP]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [CrTrnClP]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [Payed]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [CreDt]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT ((0)) FOR [CreTm]
GO
ALTER TABLE [dbo].[WaMa] ADD  DEFAULT (' ') FOR [CreUsr]
GO

/* Actor - Alter table columns */

IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = 'IBAN' AND Object_ID = Object_ID('Actor'))
BEGIN
    ALTER TABLE Actor ADD IBAN VARCHAR(MAX)
END

IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = 'GiroTp' AND Object_ID = Object_ID('Actor'))
BEGIN
    ALTER TABLE Actor ADD GiroTp VARCHAR(MAX)
END

IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = 'AcCost' AND Object_ID = Object_ID('Actor'))
BEGIN
	ALTER TABLE Actor ADD AcCost VARCHAR(MAX)
END

IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = 'DebMess' AND Object_ID = Object_ID('Actor'))
BEGIN
	ALTER TABLE Actor ADD DebMess VARCHAR(MAX)
END