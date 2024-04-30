/****** Object:  Table [dbo].[Acceso]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceso](
	[Id_Acceso] [nvarchar](36) NOT NULL,
	[Menu] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
 CONSTRAINT [PK_Acceso] PRIMARY KEY CLUSTERED 
(
	[Id_Acceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthTokens]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthTokens](
	[IdAuthTokenU] [nvarchar](36) NOT NULL,
	[IdAuthTokenP] [nvarchar](36) NOT NULL,
	[ExpirationDate] [datetime] NULL,
 CONSTRAINT [PK_AuthTokens] PRIMARY KEY CLUSTERED 
(
	[IdAuthTokenU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banco]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banco](
	[IdBanco] [nvarchar](36) NOT NULL,
	[NombreBanco] [nvarchar](300) NOT NULL,
	[Observaciones] [nvarchar](2000) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Banco] PRIMARY KEY CLUSTERED 
(
	[IdBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja](
	[Id_Caja] [nvarchar](36) NOT NULL,
	[Nombre] [nvarchar](250) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Estado] [bit] NOT NULL,
	[Id_Usuario] [nvarchar](36) NOT NULL,
 CONSTRAINT [PK_Caja] PRIMARY KEY CLUSTERED 
(
	[Id_Caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CajaCuenta]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CajaCuenta](
	[Id_CajaCuenta] [nvarchar](36) NOT NULL,
	[Id_Caja] [nvarchar](36) NOT NULL,
	[Id_Cuenta] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Observaciones] [nvarchar](max) NULL,
	[CuentaPrincipalUsuario] [bit] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_CajaCuenta] PRIMARY KEY CLUSTERED 
(
	[Id_CajaCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [nvarchar](36) NOT NULL,
	[TipoDocIdentidad] [int] NOT NULL,
	[NroDocumento] [nvarchar](50) NOT NULL,
	[Nombre_RazonSocial] [nvarchar](max) NOT NULL,
	[ApPaterno] [nvarchar](max) NULL,
	[ApMaterno] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[TelefonoCelular] [nvarchar](max) NULL,
	[Genero] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfiguracionEmpresa]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfiguracionEmpresa](
	[Id_ConfiguracionEmpresa] [nvarchar](36) NOT NULL,
	[Nombre_Empresa] [nvarchar](100) NULL,
	[URL_Logo] [nvarchar](250) NULL,
	[Color_Login] [nvarchar](25) NULL,
	[Color_Menu] [nvarchar](25) NULL,
	[Color_Boton] [nvarchar](25) NULL,
	[Color_SeleccionItems] [nvarchar](25) NULL,
	[URL_LogoMenu] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_ConfiguracionEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[Id_Cuenta] [nvarchar](36) NOT NULL,
	[NombreCuenta] [nvarchar](500) NOT NULL,
	[NumeroCuenta] [nvarchar](500) NOT NULL,
	[Moneda] [nvarchar](10) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[TipoCuenta] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[CuentaPrincipalSucursal] [bit] NOT NULL,
	[Id_Sucursal] [nvarchar](36) NOT NULL,
	[IdBanco] [nvarchar](36) NULL,
	[Saldo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[Id_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[Id_Error] [nvarchar](36) NOT NULL,
	[Modulo] [nvarchar](max) NULL,
	[Mensaje] [nvarchar](max) NULL,
	[StackError] [nvarchar](max) NULL,
	[FechaGeneracion] [datetime] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id_Error] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroDepositoBanco]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroDepositoBanco](
	[IdRegistroDepositoBanco] [nvarchar](36) NOT NULL,
	[IdRegistroSalida] [nvarchar](36) NOT NULL,
	[IdRegistroSalidaComisionBanco] [nvarchar](36) NULL,
	[NumeroOperacion] [nvarchar](300) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Observaciones] [nvarchar](max) NULL,
 CONSTRAINT [PK_RegistroDepositoBanco] PRIMARY KEY CLUSTERED 
(
	[IdRegistroDepositoBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroIngreso]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroIngreso](
	[IdRegistroIngreso] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Codigo] [nvarchar](50) NULL,
	[Concepto] [nvarchar](max) NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[PorTransferencia] [bit] NULL,
 CONSTRAINT [PK_RegistroIngreso] PRIMARY KEY CLUSTERED 
(
	[IdRegistroIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroSalida]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroSalida](
	[IdRegistroSalida] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Codigo] [nvarchar](50) NULL,
	[Concepto] [nvarchar](max) NOT NULL,
	[MontoTotal] [decimal](18, 2) NOT NULL,
	[PorTransferencia] [bit] NULL,
 CONSTRAINT [PK_RegistroSalida] PRIMARY KEY CLUSTERED 
(
	[IdRegistroSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroTransferencia]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroTransferencia](
	[IdRegistroTransferencia] [nvarchar](36) NOT NULL,
	[IdRegistroIngreso] [nvarchar](36) NOT NULL,
	[IdRegistroSalida] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[IdRegistroIngresoComision] [nvarchar](36) NULL,
 CONSTRAINT [PK_RegistroTransferencia] PRIMARY KEY CLUSTERED 
(
	[IdRegistroTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroTransferenciaInterna]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroTransferenciaInterna](
	[Id_RegistroTransferenciaInterna] [nvarchar](36) NOT NULL,
	[IdRegistroIngreso] [nvarchar](36) NOT NULL,
	[IdRegistroEgreso] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_RegistroTransferenciaInterna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReglaComision]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReglaComision](
	[IdReglaComision] [nvarchar](36) NOT NULL,
	[NombreComision] [nvarchar](300) NOT NULL,
	[Desde] [decimal](18, 2) NOT NULL,
	[Hasta] [decimal](18, 2) NOT NULL,
	[Comision] [decimal](18, 2) NOT NULL,
	[Moneda] [nchar](10) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Id_Sucursal] [nvarchar](36) NOT NULL,
 CONSTRAINT [PK_ReglaComision] PRIMARY KEY CLUSTERED 
(
	[IdReglaComision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolAcceso]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolAcceso](
	[Id_RolAcceso] [nvarchar](36) NOT NULL,
	[Id_Acceso] [nvarchar](36) NOT NULL,
	[Id_Rol] [nvarchar](36) NOT NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_RolAcceso] PRIMARY KEY CLUSTERED 
(
	[Id_RolAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudDepositoBanco]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudDepositoBanco](
	[IdSolicitudDepositoBanco] [nvarchar](36) NOT NULL,
	[IdClienteBeneficiario] [nvarchar](36) NOT NULL,
	[IdClienteSolicitante] [nvarchar](36) NOT NULL,
	[NombreBancoSolDeposito] [nvarchar](300) NOT NULL,
	[FechaRegistroSolicitud] [datetime] NOT NULL,
	[TipoOperacion] [int] NULL,
	[NroCuenta] [nvarchar](300) NOT NULL,
	[Estado] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Moneda] [nchar](10) NOT NULL,
	[IdCuentaGenera] [nvarchar](36) NOT NULL,
	[Comision] [decimal](18, 2) NOT NULL,
	[ComisionBanco] [decimal](18, 2) NULL,
	[Observaciones] [nvarchar](max) NULL,
	[IdRegistroIngreso] [nvarchar](36) NOT NULL,
	[IdRegistroIngresoComision] [nvarchar](36) NOT NULL,
	[IdRegistroIngresoComisionBanco] [nvarchar](36) NULL,
	[IdRegistroDepositoBanco] [nvarchar](36) NULL,
	[IdBanco] [nvarchar](36) NULL,
	[IdSucursalDestino] [nvarchar](36) NULL,
 CONSTRAINT [PK_SolicitudDepositoBanco] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudDepositoBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudTransferencia]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudTransferencia](
	[IdSolicitudTransferencia] [nvarchar](36) NOT NULL,
	[IdCuentaOrigen] [nvarchar](36) NOT NULL,
	[IdCuentaDestino] [nvarchar](36) NULL,
	[IdClienteBeneficiario] [nvarchar](36) NOT NULL,
	[IdClienteSolicitante] [nvarchar](36) NOT NULL,
	[Numero] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Observaciones] [nvarchar](max) NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Id_Sucursal] [nvarchar](36) NOT NULL,
	[IdRegistroTransferencia] [nvarchar](36) NULL,
	[Comision] [decimal](18, 2) NULL,
	[NombreBanco] [nvarchar](300) NULL,
	[NroCuentaBancoDni] [nvarchar](300) NULL,
	[ComisionBanco] [decimal](18, 2) NULL,
	[Servicio] [nvarchar](max) NULL,
	[IdSucursalDestino] [nvarchar](36) NOT NULL,
	[IdRegistroIngreso] [nvarchar](36) NOT NULL,
	[IdRegistroIngresoComision] [nvarchar](36) NOT NULL,
	[IdRegistroIngresoComisionBanco] [nvarchar](36) NULL,
	[Intercambio] [bit] NULL,
	[IntercambioContrasena] [varchar](20) NULL,
	[ColumnaUsuario] [nvarchar](max) NULL,
 CONSTRAINT [PK_SolicitudTransferencia] PRIMARY KEY CLUSTERED 
(
	[IdSolicitudTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudTransferenciaInterna]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudTransferenciaInterna](
	[Id_SolicitudTransferenciaInterna] [nvarchar](36) NOT NULL,
	[IdCuentaOrigen] [nvarchar](36) NOT NULL,
	[IdCuentaDestino] [nvarchar](36) NOT NULL,
	[IdUsuarioOrigen] [nvarchar](36) NOT NULL,
	[IdUsuarioDestino] [nvarchar](36) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Observacion] [nvarchar](max) NULL,
	[Numero] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[IdRegistroTransferenciaInterna] [nvarchar](36) NULL,
 CONSTRAINT [PK__Solicitu__58F1C47B547183A8] PRIMARY KEY CLUSTERED 
(
	[Id_SolicitudTransferenciaInterna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[Id_Sucursal] [nvarchar](36) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Serie] [nvarchar](10) NOT NULL,
	[Direccion] [nvarchar](max) NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[Id_Transaccion] [nvarchar](36) NOT NULL,
	[MontoMovimiento] [decimal](18, 2) NOT NULL,
	[FechaHoraRegistro] [datetime] NOT NULL,
	[Observaciones] [nvarchar](500) NULL,
	[FechaHoraAnulacion] [datetime] NULL,
	[MotivoAnulacion] [nvarchar](500) NULL,
	[TipoRegistro] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
	[Id_Cuenta] [nvarchar](36) NOT NULL,
	[IdRegistroIngreso] [nvarchar](36) NULL,
	[IdRegistroSalida] [nvarchar](36) NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[Id_Transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_Usuario] [nvarchar](36) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Id_Rol] [nvarchar](36) NOT NULL,
	[LastLogin] [datetime] NULL,
	[Habilitado] [bit] NOT NULL,
	[Id_Sucursal] [nvarchar](36) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioRol]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRol](
	[Id_Rol] [nvarchar](36) NOT NULL,
	[Denominacion] [nvarchar](max) NOT NULL,
	[TipoRol] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioRol] PRIMARY KEY CLUSTERED 
(
	[Id_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Caja]  WITH CHECK ADD  CONSTRAINT [FK_Caja_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[Caja] CHECK CONSTRAINT [FK_Caja_Usuario]
GO
ALTER TABLE [dbo].[CajaCuenta]  WITH CHECK ADD  CONSTRAINT [FK_CajaCuenta_Caja] FOREIGN KEY([Id_Caja])
REFERENCES [dbo].[Caja] ([Id_Caja])
GO
ALTER TABLE [dbo].[CajaCuenta] CHECK CONSTRAINT [FK_CajaCuenta_Caja]
GO
ALTER TABLE [dbo].[CajaCuenta]  WITH CHECK ADD  CONSTRAINT [FK_CajaCuenta_Cuenta] FOREIGN KEY([Id_Cuenta])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[CajaCuenta] CHECK CONSTRAINT [FK_CajaCuenta_Cuenta]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Banco] FOREIGN KEY([IdBanco])
REFERENCES [dbo].[Banco] ([IdBanco])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Banco]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Sucursal]
GO
ALTER TABLE [dbo].[RegistroDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_RegistroDepositoBanco_RegistroSalida] FOREIGN KEY([IdRegistroSalida])
REFERENCES [dbo].[RegistroSalida] ([IdRegistroSalida])
GO
ALTER TABLE [dbo].[RegistroDepositoBanco] CHECK CONSTRAINT [FK_RegistroDepositoBanco_RegistroSalida]
GO
ALTER TABLE [dbo].[RegistroDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_RegistroDepositoBanco_RegistroSalidaComisionBanco] FOREIGN KEY([IdRegistroSalidaComisionBanco])
REFERENCES [dbo].[RegistroSalida] ([IdRegistroSalida])
GO
ALTER TABLE [dbo].[RegistroDepositoBanco] CHECK CONSTRAINT [FK_RegistroDepositoBanco_RegistroSalidaComisionBanco]
GO
ALTER TABLE [dbo].[RegistroTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_RegistroTransferencia_RegistroIngreso] FOREIGN KEY([IdRegistroIngreso])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[RegistroTransferencia] CHECK CONSTRAINT [FK_RegistroTransferencia_RegistroIngreso]
GO
ALTER TABLE [dbo].[RegistroTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_RegistroTransferencia_RegistroIngresoComision] FOREIGN KEY([IdRegistroIngresoComision])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[RegistroTransferencia] CHECK CONSTRAINT [FK_RegistroTransferencia_RegistroIngresoComision]
GO
ALTER TABLE [dbo].[RegistroTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_RegistroTransferencia_RegistroSalida] FOREIGN KEY([IdRegistroSalida])
REFERENCES [dbo].[RegistroSalida] ([IdRegistroSalida])
GO
ALTER TABLE [dbo].[RegistroTransferencia] CHECK CONSTRAINT [FK_RegistroTransferencia_RegistroSalida]
GO
ALTER TABLE [dbo].[RegistroTransferenciaInterna]  WITH CHECK ADD FOREIGN KEY([IdRegistroIngreso])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[RegistroTransferenciaInterna]  WITH CHECK ADD FOREIGN KEY([IdRegistroEgreso])
REFERENCES [dbo].[RegistroSalida] ([IdRegistroSalida])
GO
ALTER TABLE [dbo].[ReglaComision]  WITH CHECK ADD  CONSTRAINT [FK_ReglaComision_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[ReglaComision] CHECK CONSTRAINT [FK_ReglaComision_Sucursal]
GO
ALTER TABLE [dbo].[RolAcceso]  WITH CHECK ADD  CONSTRAINT [FK_RolAcceso_Acceso] FOREIGN KEY([Id_Acceso])
REFERENCES [dbo].[Acceso] ([Id_Acceso])
GO
ALTER TABLE [dbo].[RolAcceso] CHECK CONSTRAINT [FK_RolAcceso_Acceso]
GO
ALTER TABLE [dbo].[RolAcceso]  WITH CHECK ADD  CONSTRAINT [FK_RolAcceso_UsuarioRol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[UsuarioRol] ([Id_Rol])
GO
ALTER TABLE [dbo].[RolAcceso] CHECK CONSTRAINT [FK_RolAcceso_UsuarioRol]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_Banco] FOREIGN KEY([IdBanco])
REFERENCES [dbo].[Banco] ([IdBanco])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_Banco]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_ClienteBeneficiario] FOREIGN KEY([IdClienteBeneficiario])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_ClienteBeneficiario]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_ClienteSolicitante] FOREIGN KEY([IdClienteSolicitante])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_ClienteSolicitante]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_CuentaGenera] FOREIGN KEY([IdCuentaGenera])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_CuentaGenera]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_RegistroDepositoBanco] FOREIGN KEY([IdRegistroDepositoBanco])
REFERENCES [dbo].[RegistroDepositoBanco] ([IdRegistroDepositoBanco])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_RegistroDepositoBanco]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngreso] FOREIGN KEY([IdRegistroIngreso])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngreso]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngresoComision] FOREIGN KEY([IdRegistroIngresoComision])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngresoComision]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngresoComisionBanco] FOREIGN KEY([IdRegistroIngresoComisionBanco])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_RegistroIngresoComisionBanco]
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudDepositoBanco_Sucursal] FOREIGN KEY([IdSucursalDestino])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[SolicitudDepositoBanco] CHECK CONSTRAINT [FK_SolicitudDepositoBanco_Sucursal]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_ClienteBeneficiario] FOREIGN KEY([IdClienteBeneficiario])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_ClienteBeneficiario]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_ClienteSolicitante] FOREIGN KEY([IdClienteSolicitante])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_ClienteSolicitante]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_CuentaDestino] FOREIGN KEY([IdCuentaDestino])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_CuentaDestino]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_CuentaOrigen] FOREIGN KEY([IdCuentaOrigen])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_CuentaOrigen]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_RegistroIngreso] FOREIGN KEY([IdRegistroIngreso])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_RegistroIngreso]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_RegistroIngresoComision] FOREIGN KEY([IdRegistroIngresoComision])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_RegistroIngresoComision]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_RegistroIngresoComisionBanco] FOREIGN KEY([IdRegistroIngresoComisionBanco])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_RegistroIngresoComisionBanco]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_RegistroTransferencia] FOREIGN KEY([IdRegistroTransferencia])
REFERENCES [dbo].[RegistroTransferencia] ([IdRegistroTransferencia])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_RegistroTransferencia]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_Sucursal]
GO
ALTER TABLE [dbo].[SolicitudTransferencia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudTransferencia_SucursalDestino] FOREIGN KEY([IdSucursalDestino])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[SolicitudTransferencia] CHECK CONSTRAINT [FK_SolicitudTransferencia_SucursalDestino]
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdCue__06CD04F7] FOREIGN KEY([IdCuentaOrigen])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna] CHECK CONSTRAINT [FK__Solicitud__IdCue__06CD04F7]
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdCue__07C12930] FOREIGN KEY([IdCuentaDestino])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna] CHECK CONSTRAINT [FK__Solicitud__IdCue__07C12930]
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdReg__08B54D69] FOREIGN KEY([IdRegistroTransferenciaInterna])
REFERENCES [dbo].[RegistroTransferenciaInterna] ([Id_RegistroTransferenciaInterna])
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna] CHECK CONSTRAINT [FK__Solicitud__IdReg__08B54D69]
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdUsu__09A971A2] FOREIGN KEY([IdUsuarioOrigen])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna] CHECK CONSTRAINT [FK__Solicitud__IdUsu__09A971A2]
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna]  WITH CHECK ADD  CONSTRAINT [FK__Solicitud__IdUsu__0A9D95DB] FOREIGN KEY([IdUsuarioDestino])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[SolicitudTransferenciaInterna] CHECK CONSTRAINT [FK__Solicitud__IdUsu__0A9D95DB]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Cuenta] FOREIGN KEY([Id_Cuenta])
REFERENCES [dbo].[Cuenta] ([Id_Cuenta])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Cuenta]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_RegistroIngreso] FOREIGN KEY([IdRegistroIngreso])
REFERENCES [dbo].[RegistroIngreso] ([IdRegistroIngreso])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_RegistroIngreso]
GO
ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_RegistroSalida] FOREIGN KEY([IdRegistroSalida])
REFERENCES [dbo].[RegistroSalida] ([IdRegistroSalida])
GO
ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_RegistroSalida]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Sucursal] FOREIGN KEY([Id_Sucursal])
REFERENCES [dbo].[Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Sucursal]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_UsuarioRol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[UsuarioRol] ([Id_Rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_UsuarioRol]
GO
/****** Object:  StoredProcedure [dbo].[CalcularSaldoCuenta]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 09/08/2023
-- Description:	Calcular Stock Cuenta
-- =============================================
CREATE PROCEDURE [dbo].[CalcularSaldoCuenta]
	@idCuenta nvarchar(36)
AS
BEGIN
	
	Declare @totalIngresos decimal(18,2);
	Declare @totalSalidas decimal(18,2);
	
	select @totalIngresos = SUM(T.MontoMovimiento)
     from  [dbo].[Transaccion] T 
	 join [dbo].[RegistroIngreso] RI on T.IdRegistroIngreso = RI.IdRegistroIngreso
	 where T.TipoRegistro = 1 and T.Estado = 1 and T.Id_Cuenta = @idCuenta

	 select @totalSalidas = SUM(T.MontoMovimiento)
     from  [dbo].[Transaccion] T 
	 join [dbo].[RegistroSalida] RI on T.IdRegistroSalida = RI.IdRegistroSalida
	 where T.TipoRegistro = 2 and T.Estado = 1 and T.Id_Cuenta = @idCuenta

	 select SaldoCuenta = ISNULL(@totalIngresos,0) - ISNULL(@totalSalidas,0);
END
GO
/****** Object:  StoredProcedure [dbo].[ListaClientesPorFiltroPaginacion]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ListaClientesPorFiltroPaginacion] 
	@NumeroDocumento nvarchar(50),
	@NombreRazonSocial nvarchar(100),
	@totalRegPorPagina int,
	@numeroPagina int,
	@totalRegistros int OUT
AS

-- EXEC [dbo].[ListaClientesPorFiltroPaginacion] '0', NULL, 3, 3, NULL
BEGIN
	DECLARE @FirstRec int, @LastRec int;

	SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
	SELECT @LastRec = (@numeroPagina * @totalRegPorPagina + 1);
	PRINT @FirstRec
	select @totalRegistros = count(*) from [dbo].[Cliente]
	where [NroDocumento] like '%'+ ISNULL(@NumeroDocumento, '')+'%' and [Nombre_RazonSocial] like '%'+ ISNULL(@NombreRazonSocial, '')+'%'; 

	WITH TempResult as
	(
	SELECT ROW_NUMBER() OVER(ORDER BY [NroDocumento] DESC) as RowNum, [IdCliente], [NroDocumento], [Nombre_RazonSocial], [ApPaterno], [ApMaterno], [Direccion], [TelefonoCelular], [Email], [TipoDocIdentidad], [Genero], [FechaNacimiento] from [dbo].[Cliente]
	where [NroDocumento] like '%'+ ISNULL(@NumeroDocumento, '')+'%' and [Nombre_RazonSocial] like '%'+ ISNULL(@NombreRazonSocial, '')+'%'
	)
	SELECT top (@LastRec-1) *
	FROM TempResult
	WHERE RowNum > @FirstRec 
	AND RowNum < @LastRec
END

GO
/****** Object:  StoredProcedure [dbo].[ListarConfiguracionCuentas]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 03/08/2023
-- Description:	Listar Configuracion Cuentas
-- =============================================
CREATE PROCEDURE [dbo].[ListarConfiguracionCuentas] 

AS
BEGIN
	
	select U.Login, NombreCaja = C.Nombre, CU.NombreCuenta, CU.Moneda, CU.TipoCuenta, CC.[CuentaPrincipalUsuario] 
	from [dbo].[Usuario] U join [dbo].[Caja] C on U.Id_Usuario = C.Id_Usuario
	join [dbo].[CajaCuenta] CC on CC.Id_Caja = C.Id_Caja
	join [dbo].[Cuenta] CU on CU.Id_Cuenta = CC.Id_Cuenta

END
GO
/****** Object:  StoredProcedure [dbo].[ListarCtasAhorroCorrientePorUsuario]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 15/11/2023
-- Description:	Listar Cuentas Ahorro Corriente Por Usuario
-- =============================================
CREATE PROCEDURE [dbo].[ListarCtasAhorroCorrientePorUsuario]
	@idUsuario nvarchar(36)
AS
BEGIN
	
	select CT.[Id_Cuenta], [NombreCuenta] 
		from [dbo].[Cuenta] CT (nolock)
		JOIN [dbo].[CajaCuenta] CC (nolock) ON CT.Id_Cuenta = CC.Id_Cuenta
		JOIN [dbo].[Caja] CJ (nolock) ON CJ.Id_Caja = CC.Id_Caja
		WHERE CJ.Id_Usuario = @idUsuario AND CT.TipoCuenta IN (2, 3)

END
GO
/****** Object:  StoredProcedure [dbo].[ListarCuentas]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 02/08/2023
-- Description:	Listar Cuentas
-- =============================================
CREATE PROCEDURE [dbo].[ListarCuentas]
	
AS
BEGIN
	
	select [Id_Cuenta], [NombreCuenta], [NumeroCuenta], [Moneda], [FechaRegistro], C.[Descripcion], [TipoCuenta], C.[Estado], [CuentaPrincipalSucursal], S.Id_Sucursal, S.Nombre
		from [dbo].[Cuenta] C join [dbo].[Sucursal] S on C.Id_Sucursal = S.Id_Sucursal

END
GO
/****** Object:  StoredProcedure [dbo].[ListarCuentasPorUsuario]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[ListarCuentasPorUsuario]
    @idUsuario nvarchar(36),
	@idSucursal nvarchar(36)
AS
-- EXEC [dbo].[ListarCuentasPorUsuario] 'dfece6a6-d652-4bfa-9639-e9bf9b3c8b84', 'be743aff-3546-4468-aa64-5dbc88b3b031'
BEGIN
	
	SELECT C.[Id_Cuenta], 
		   [NombreCuenta],
		   CJ.Id_Usuario,
		   C.Id_Sucursal
	FROM [dbo].[Cuenta] C 
	JOIN [dbo].[CajaCuenta] CC on CC.Id_Cuenta= C.Id_Cuenta
	JOIN [dbo].[Caja] CJ on CJ.Id_Caja = CC.Id_Caja
	WHERE (CJ.Id_Usuario IS NULL OR CJ.Id_Usuario = @idUsuario) 
		  and (C.Id_Sucursal IS NULL OR C.Id_Sucursal=@idSucursal)
END
GO
/****** Object:  StoredProcedure [dbo].[ListarDepositosPorFiltroPaginacion]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 13/11/2023
-- Description:	Listar Depositos Por Filtro Paginacion
-- =============================================
CREATE PROCEDURE [dbo].[ListarDepositosPorFiltroPaginacion]
	-- Add the parameters for the stored procedure here
	@fechaInicio DateTime2,
    @fechaFin DateTime2,
    @idUsuario nvarchar(36),
    @totalRegPorPagina int,
    @numeroPagina int,
    @totalRegistros int OUT,
	@totalDepositos decimal(18,2) out,
	@totalComisiones decimal(18,2) out,
	@totalComisionesBanco decimal(18,2) out
AS
BEGIN
	    -- Determine el primer registro y el último registro para la página actual
    DECLARE @FirstRec int, @LastRec int;

    SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
    SELECT @LastRec = (@numeroPagina * @totalRegPorPagina);

	-----------------------------TOTAL REGISTROS---------------------------
	
	SELECT @totalRegistros = COUNT(*) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND (
					@idUsuario = '0'
					OR @idUsuario IS NULL
					OR CAJ.Id_Usuario = @idUsuario
				);

	------------------------------TOTAL DEPOSITOS--------------------------
	SELECT @totalDepositos = ISNULL(SUM(SD.Monto), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND (
					@idUsuario = '0'
					OR @idUsuario IS NULL
					OR CAJ.Id_Usuario = @idUsuario
				);

	------------------------------TOTAL COMISIONES--------------------------
	SELECT @totalComisiones = ISNULL(SUM(SD.Comision), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND (
					@idUsuario = '0'
					OR @idUsuario IS NULL
					OR CAJ.Id_Usuario = @idUsuario
				);

	------------------------------TOTAL COMISIONES BANCOS--------------------------
	SELECT @totalComisionesBanco = ISNULL(SUM(SD.ComisionBanco), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND (
					@idUsuario = '0'
					OR @idUsuario IS NULL
					OR CAJ.Id_Usuario = @idUsuario
				);

	WITH TransferenciasPaginadas AS (
	SELECT
		ROW_NUMBER() OVER (ORDER BY SD.Estado ASC, SD.FechaRegistroSolicitud DESC) AS RowNum,
		[IdSolicitudDepositoBanco], [FechaRegistroSolicitud], 
		NroDocBeneficiario = CB.NroDocumento,
		Beneficiario = CONCAT(CB.Nombre_RazonSocial, ' ', CB.ApPaterno, ' ', CB.ApMaterno),
		TelefonoBeneficiario = CB.TelefonoCelular,
		NroDocSolicitante = CS.NroDocumento,
		Solicitante = CONCAT(CS.Nombre_RazonSocial, ' ', CS.ApPaterno, ' ', CS.ApMaterno),
		TelefonoSolicitante = CS.TelefonoCelular,
		TipoOperacion = ISNULL(SD.[TipoOperacion], 0), [Monto], [Comision], [ComisionBanco], [NombreBancoSolDeposito], [NroCuenta], 
		CreadoPor = CONCAT(U.Nombres, ' ', U.Apellidos), SD.[Estado], SD.Observaciones, SD.Moneda,
		NroOperacion = ISNULL(R.NumeroOperacion, 0),
		HoraOperacion = ISNULL(R.FechaRegistro, GETDATE()),
		IDCuenta = CUO.Id_Cuenta
		
		from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		LEFT JOIN [dbo].[RegistroDepositoBanco] R ON SD.IdRegistroDepositoBanco = R.IdRegistroDepositoBanco
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND (
					@idUsuario = '0'
					OR @idUsuario IS NULL
					OR CAJ.Id_Usuario = @idUsuario
				)
	)
	SELECT
        ST.[IdSolicitudDepositoBanco],
        ST.[FechaRegistroSolicitud],
		ST.NroDocBeneficiario,
        ST.Beneficiario,
		ST.TelefonoBeneficiario,
		ST.NroDocSolicitante,
        ST.Solicitante,
		ST.TelefonoSolicitante,
		ST.[TipoOperacion],
        ST.[Monto], 
		ST.[Comision],
		ST.[ComisionBanco],
		ST.[NombreBancoSolDeposito], 
		ST.[NroCuenta],
		ST.CreadoPor, 
		ST.[Estado],
		ST.Observaciones,
		ST.Moneda,
		ST.NroOperacion,
		ST.HoraOperacion,
		ST.IDCuenta
    FROM
        TransferenciasPaginadas ST
    WHERE
        ST.RowNum > @FirstRec
        AND ST.RowNum <= @LastRec
    ORDER BY
        ST.RowNum, ST.Estado ASC;

END
GO
/****** Object:  StoredProcedure [dbo].[ListarFlujoCajaCuenta]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 27/07/2023
-- Description:	Listar Flujo Caja Cuenta
-- =============================================
CREATE PROCEDURE [dbo].[ListarFlujoCajaCuenta]
	@IdCuenta nvarchar(36)
AS
BEGIN
	
	select [Id_Transaccion], [FechaHoraRegistro], [TipoRegistro], [Observaciones], [MontoMovimiento], [Moneda], T.[Id_Cuenta]
	from [dbo].[Transaccion] T (nolock) join [dbo].[Cuenta] C (nolock) on T.Id_Cuenta = C.Id_Cuenta
	
END
GO
/****** Object:  StoredProcedure [dbo].[ListarKardexCuenta]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 06/08/2023
-- Description:	Listar Kardex Cuenta
-- =============================================
CREATE PROCEDURE [dbo].[ListarKardexCuenta]
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idCuenta nvarchar(36)
AS
BEGIN
	
CREATE TABLE #KardexTemp (
	Id_Transaccion nvarchar(36),
    FechaHoraRegistro DateTime2,
    Observaciones nvarchar(max),
    SucOrigen nvarchar(max),
    CtaOrigen nvarchar(max),
    SucDestino nvarchar(max),
    CtaDestino nvarchar(max),
    Entrada decimal(18, 2),
    Salida decimal(18, 2),
    Saldo decimal(18, 2)
);

-- Recuperar Ingresos
INSERT INTO #KardexTemp (Id_Transaccion, FechaHoraRegistro, Observaciones, SucOrigen, CtaOrigen, SucDestino, CtaDestino, Entrada, Salida, Saldo)
SELECT T.Id_Transaccion, [FechaHoraRegistro], T.[Observaciones], 
       COALESCE(SO.Nombre, SI.Nombre) AS SucOrigen, 
       COALESCE(CO.NombreCuenta, CI.NombreCuenta) AS CtaOrigen, 
       COALESCE(SD.Nombre, SDI.Nombre) AS SucDestino, 
       COALESCE(CD.NombreCuenta, CDI.NombreCuenta) AS CtaDestino, 
       [MontoMovimiento], 0.0, 0.0
	FROM [dbo].[Transaccion] T (nolock)
	JOIN [dbo].[RegistroIngreso] RI (nolock) ON T.IdRegistroIngreso = RI.IdRegistroIngreso
	LEFT JOIN [dbo].[RegistroTransferencia] RT (nolock) ON RT.IdRegistroIngreso = RI.IdRegistroIngreso
	LEFT JOIN [dbo].[SolicitudTransferencia] ST (nolock) ON ST.IdRegistroTransferencia = RT.IdRegistroTransferencia
	LEFT JOIN [dbo].[Cuenta] CO (nolock) ON CO.Id_Cuenta = ST.IdCuentaOrigen
	LEFT JOIN [dbo].[Sucursal] SO (nolock) ON SO.Id_Sucursal = CO.Id_Sucursal
	LEFT JOIN [dbo].[Cuenta] CD (nolock) ON CD.Id_Cuenta = ST.IdCuentaDestino
	LEFT JOIN [dbo].[Sucursal] SD (nolock) ON SD.Id_Sucursal = CD.Id_Sucursal
	LEFT JOIN [dbo].[RegistroTransferenciaInterna] RTI (nolock) ON RTI.IdRegistroIngreso = RI.IdRegistroIngreso
	LEFT JOIN [dbo].[SolicitudTransferenciaInterna] STI (nolock) ON STI.IdRegistroTransferenciaInterna = RTI.Id_RegistroTransferenciaInterna
	LEFT JOIN [dbo].[Cuenta] CI (nolock) ON CI.Id_Cuenta = STI.IdCuentaOrigen
	LEFT JOIN [dbo].[Sucursal] SI (nolock) ON SI.Id_Sucursal = CI.Id_Sucursal
	LEFT JOIN [dbo].[Cuenta] CDI (nolock) ON CDI.Id_Cuenta = STI.IdCuentaDestino
	LEFT JOIN [dbo].[Sucursal] SDI (nolock) ON SDI.Id_Sucursal = CDI.Id_Sucursal
	WHERE T.TipoRegistro = 1 AND T.Estado = 1 AND T.Id_Cuenta = @idCuenta;

-- Recuperar Salidas
INSERT INTO #KardexTemp (Id_Transaccion, FechaHoraRegistro, Observaciones, SucOrigen, CtaOrigen, SucDestino, CtaDestino, Entrada, Salida, Saldo)
SELECT T.Id_Transaccion, [FechaHoraRegistro], T.[Observaciones], 
       COALESCE(SO.Nombre, SI.Nombre) AS SucOrigen, 
       COALESCE(CO.NombreCuenta, CI.NombreCuenta) AS CtaOrigen, 
       COALESCE(SD.Nombre, SDI.Nombre) AS SucDestino, 
       COALESCE(CD.NombreCuenta, CDI.NombreCuenta) AS CtaDestino, 
       0.0, [MontoMovimiento], 0.0
		FROM [dbo].[Transaccion] T (nolock)
		JOIN [dbo].[RegistroSalida] RS (nolock) ON T.IdRegistroSalida = RS.IdRegistroSalida
		LEFT JOIN [dbo].[RegistroTransferencia] RT (nolock) ON RT.IdRegistroSalida = RS.IdRegistroSalida
		LEFT JOIN [dbo].[SolicitudTransferencia] ST (nolock) ON ST.IdRegistroTransferencia = RT.IdRegistroTransferencia
		LEFT JOIN [dbo].[Cuenta] CO (nolock) ON CO.Id_Cuenta = ST.IdCuentaOrigen
		LEFT JOIN [dbo].[Sucursal] SO (nolock) ON SO.Id_Sucursal = CO.Id_Sucursal
		LEFT JOIN [dbo].[Cuenta] CD (nolock) ON CD.Id_Cuenta = ST.IdCuentaDestino
		LEFT JOIN [dbo].[Sucursal] SD (nolock) ON SD.Id_Sucursal = CD.Id_Sucursal
		LEFT JOIN [dbo].[RegistroTransferenciaInterna] RTI (nolock) ON RTI.IdRegistroEgreso = RS.IdRegistroSalida
		LEFT JOIN [dbo].[SolicitudTransferenciaInterna] STI (nolock) ON STI.IdRegistroTransferenciaInterna = RTI.Id_RegistroTransferenciaInterna
		LEFT JOIN [dbo].[Cuenta] CI (nolock) ON CI.Id_Cuenta = STI.IdCuentaOrigen
		LEFT JOIN [dbo].[Sucursal] SI (nolock) ON SI.Id_Sucursal = CI.Id_Sucursal
		LEFT JOIN [dbo].[Cuenta] CDI (nolock) ON CDI.Id_Cuenta = STI.IdCuentaDestino
		LEFT JOIN [dbo].[Sucursal] SDI (nolock) ON SDI.Id_Sucursal = CDI.Id_Sucursal
		WHERE T.TipoRegistro = 2 AND T.Estado = 1 AND T.Id_Cuenta = @idCuenta;


		DECLARE @idTransaccion AS nvarchar(36)
		DECLARE @ingresoMonto as decimal(18,2);
		DECLARE @salidaMonto as decimal(18,2);
		DECLARE @saldoMonto as decimal(18,2);
		set @saldoMonto = 0;

		DECLARE TransInfo CURSOR FOR SELECT Id_Transaccion, Entrada, Salida FROM #KardexTemp order by FechaHoraRegistro asc, Observaciones desc

		OPEN TransInfo
		FETCH NEXT FROM TransInfo INTO @idTransaccion, @ingresoMonto, @salidaMonto

		WHILE @@fetch_status = 0
		BEGIN
		    
			set @saldoMonto = @saldoMonto + @ingresoMonto - @salidaMonto;
			update #KardexTemp set Saldo = @saldoMonto where Id_Transaccion = @idTransaccion;

	    FETCH NEXT FROM TransInfo INTO @idTransaccion, @ingresoMonto, @salidaMonto
		END

		CLOSE TransInfo
		DEALLOCATE TransInfo
    
-- 
SELECT *
FROM #KardexTemp
WHERE FechaHoraRegistro >= CONVERT(date, @fechaInicio) AND FechaHoraRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
ORDER BY FechaHoraRegistro asc, Observaciones desc;

DROP TABLE #KardexTemp;

END
GO
/****** Object:  StoredProcedure [dbo].[ListarSolDepositosRecibidosPorFiltroPag]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 15/11/2023
-- Description:	Listar Solicitudes Depositos Recibidos Por filtro paginacion
-- =============================================
CREATE PROCEDURE [dbo].[ListarSolDepositosRecibidosPorFiltroPag]
	@fechaInicio DateTime2,
    @fechaFin DateTime2,
    @idSucursal nvarchar(36),
	@estado int,

    @totalRegPorPagina int,
    @numeroPagina int,
    @totalRegistros int OUT,
	@totalDepositos decimal(18,2) out,
	@totalComisiones decimal(18,2) out,
	@totalComisionesBanco decimal(18,2) out

AS
BEGIN
	
	-- Determine el primer registro y el último registro para la página actual
    DECLARE @FirstRec int, @LastRec int;

    SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
    SELECT @LastRec = (@numeroPagina * @totalRegPorPagina);

	-----------------------------TOTAL REGISTROS---------------------------
	
	SELECT @totalRegistros = COUNT(*) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND SD.[IdSucursalDestino] = @idSucursal and SD.Estado = @estado;;

	------------------------------TOTAL DEPOSITOS--------------------------
	SELECT @totalDepositos = ISNULL(SUM(SD.Monto), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND SD.[IdSucursalDestino] = @idSucursal and SD.Estado = @estado;

	------------------------------TOTAL COMISIONES--------------------------
	SELECT @totalComisiones = ISNULL(SUM(SD.Comision), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND SD.[IdSucursalDestino] = @idSucursal and SD.Estado = @estado;

	------------------------------TOTAL COMISIONES BANCOS--------------------------
	SELECT @totalComisionesBanco = ISNULL(SUM(SD.ComisionBanco), 0) from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND SD.[IdSucursalDestino] = @idSucursal and SD.Estado = @estado;

	WITH TransferenciasPaginadas AS (
	SELECT
		ROW_NUMBER() OVER (ORDER BY SD.Estado ASC, SD.FechaRegistroSolicitud DESC) AS RowNum,
		[IdSolicitudDepositoBanco], [FechaRegistroSolicitud], 
		NroDocBeneficiario = CB.NroDocumento,
		Beneficiario = CONCAT(CB.Nombre_RazonSocial, ' ', CB.ApPaterno, ' ', CB.ApMaterno),
		TelefonoBeneficiario = CB.TelefonoCelular,
		NroDocSolicitante = CS.NroDocumento,
		Solicitante = CONCAT(CS.Nombre_RazonSocial, ' ', CS.ApPaterno, ' ', CS.ApMaterno),
		TelefonoSolicitante = CS.TelefonoCelular,
		TipoOperacion = ISNULL(SD.[TipoOperacion], 0), [Monto], [Comision], [ComisionBanco], [NombreBancoSolDeposito], [NroCuenta], 
		CreadoPor = CONCAT(U.Nombres, ' ', U.Apellidos), SD.[Estado], SD.Observaciones, SD.Moneda
		from [dbo].[SolicitudDepositoBanco] SD (nolock) 
		join [dbo].[Cliente] CB on SD.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS (nolock) on SD.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON SD.IdCuentaGenera = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		WHERE
				SD.FechaRegistroSolicitud >= CONVERT(date, @fechaInicio)
				AND SD.FechaRegistroSolicitud < DATEADD(d, 1, CONVERT(date, @fechaFin))            
				AND SD.[IdSucursalDestino] = @idSucursal and SD.Estado = @estado
	)
	SELECT
        ST.[IdSolicitudDepositoBanco],
        ST.[FechaRegistroSolicitud],
		ST.NroDocBeneficiario,
        ST.Beneficiario,
		ST.TelefonoBeneficiario,
		ST.NroDocSolicitante,
        ST.Solicitante,
		ST.TelefonoSolicitante,
		ST.[TipoOperacion],
        ST.[Monto], 
		ST.[Comision],
		ST.[ComisionBanco],
		ST.[NombreBancoSolDeposito], 
		ST.[NroCuenta],
		ST.CreadoPor, 
		ST.[Estado],
		ST.Observaciones,
		ST.Moneda
    FROM
        TransferenciasPaginadas ST
    WHERE
        ST.RowNum > @FirstRec
        AND ST.RowNum <= @LastRec
    ORDER BY
        ST.RowNum, ST.Estado ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarTransferenciasInternasPorFiltroFechasSucursal]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 22/08/2023
-- Description:	Listar Transferencias Internas Por Filtro Fechas Sucursal
-- =============================================
CREATE PROCEDURE [dbo].[ListarTransferenciasInternasPorFiltroFechasSucursal]
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idSucursal nvarchar(36),
	@idUsuario nvarchar(36)
AS
BEGIN
	select [Id_SolicitudTransferenciaInterna], T.[FechaRegistro], [Observacion], UsuarioOrigen = UO.Login, SucOrigen = SO.Nombre, 
			CtaOrigen = CO.NombreCuenta, UsuarioDestino = UD.Login, SucDestino = SD.Nombre, CtaDestino = CD.NombreCuenta,
			Moneda = CO.Moneda,T.Monto, T.Estado
	from [dbo].[SolicitudTransferenciaInterna] T 
	join [dbo].[Usuario] UO on T.IdUsuarioOrigen = UO.Id_Usuario
	join [dbo].[Sucursal] SO on UO.Id_Sucursal = SO.Id_Sucursal
	join [dbo].[Usuario] UD on T.IdUsuarioDestino = UD.Id_Usuario
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = UD.Id_Sucursal
	
	join [dbo].[Cuenta] CO on CO.Id_Cuenta = T.IdCuentaOrigen
	join [dbo].[Cuenta] CD on CD.Id_Cuenta = T.IdCuentaDestino
    
	where T.FechaRegistro >= CONVERT(date, @fechaInicio) and T.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	--and 1 = case when @idSucursal = '0' or @idSucursal is null then 1
		--		 else case when SO.Id_Sucursal = @idSucursal then 1 else 0 end end
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when UO.Id_Usuario = @idUsuario then 1 else 0 end end

	order by Estado asc, FechaRegistro desc
END
GO
/****** Object:  StoredProcedure [dbo].[ListarTransferenciasInternasRecibidas]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 22/08/2023
-- Description:	Listar Transferencias Internas Recibidas
-- =============================================
CREATE PROCEDURE [dbo].[ListarTransferenciasInternasRecibidas]
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idUsuario nvarchar(36)
AS
BEGIN

	select [Id_SolicitudTransferenciaInterna], T.[FechaRegistro], [Observacion], UsuarioOrigen = UO.Login, SucOrigen = SO.Nombre, 
			CtaOrigen = CO.NombreCuenta, UsuarioDestino = UD.Login,  SucDestino = SD.Nombre, CtaDestino = CD.NombreCuenta,
			Moneda = CO.Moneda,T.Monto, T.Estado

	from [dbo].[SolicitudTransferenciaInterna] T 
	join [dbo].[Usuario] UO on T.IdUsuarioOrigen = UO.Id_Usuario
	join [dbo].[Sucursal] SO on UO.Id_Sucursal = SO.Id_Sucursal
	join [dbo].[Usuario] UD on T.IdUsuarioDestino = UD.Id_Usuario
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = UD.Id_Sucursal	
	join [dbo].[Cuenta] CO on CO.Id_Cuenta = T.IdCuentaOrigen
	join [dbo].[Cuenta] CD on CD.Id_Cuenta = T.IdCuentaDestino
	
	where T.FechaRegistro >= CONVERT(date, @fechaInicio) and T.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and UD.Id_Usuario = @idUsuario

	order by Estado asc, FechaRegistro desc
END
GO
/****** Object:  StoredProcedure [dbo].[ListarTransferenciasPorFiltroFechasSucursal]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 04/08/2023
-- Description:	Listar Transferencias Por Filtro Fechas Sucursal
-- =============================================

CREATE PROCEDURE [dbo].[ListarTransferenciasPorFiltroFechasSucursal]
	@fechaInicio DateTime2,
    @fechaFin DateTime2,
    @idSucursal nvarchar(36),
    @idUsuario nvarchar(36),
    @totalRegPorPagina int,
    @numeroPagina int,
    @totalRegistros int OUT,
	@totalTransferencias decimal(18,2) out,
	@totalComisiones decimal(18,2) out,
	@totalComisionesBanco decimal(18,2) out
AS
BEGIN
    -- Determine el primer registro y el último registro para la página actual
    DECLARE @FirstRec int, @LastRec int;

    SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
    SELECT @LastRec = (@numeroPagina * @totalRegPorPagina);

    -- Calcula el total de registros que coinciden con el filtro
    SELECT @totalRegistros = COUNT(*) FROM [dbo].[SolicitudTransferencia] ST
    JOIN [dbo].[Cliente] CB ON ST.IdClienteBeneficiario = CB.IdCliente
    JOIN [dbo].[Cliente] CS ON ST.IdClienteSolicitante = CS.IdCliente
    JOIN [dbo].[Cuenta] CUO ON ST.IdCuentaOrigen = CUO.Id_Cuenta
    JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
    JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
    JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
    JOIN [dbo].[Sucursal] SO ON SO.Id_Sucursal = CUO.Id_Sucursal
    JOIN [dbo].[Sucursal] SD ON SD.Id_Sucursal = ST.IdSucursalDestino
    LEFT JOIN [dbo].[Cuenta] CUD ON ST.IdCuentaDestino = CUD.Id_Cuenta
    WHERE ST.FechaRegistro >= CONVERT(date, @fechaInicio)
    AND ST.FechaRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
    AND (
        @idSucursal = '0'
        OR @idSucursal IS NULL
        OR ST.Id_Sucursal = @idSucursal
    )
    AND (
        @idUsuario = '0'
        OR @idUsuario IS NULL
        OR CAJ.Id_Usuario = @idUsuario
    );

	---------------------------------------------------------------------------

	    -- Calcula el total de registros que coinciden con el filtro
    SELECT @totalTransferencias = ISNULL(SUM(ST.Monto), 0) FROM [dbo].[SolicitudTransferencia] ST
    JOIN [dbo].[Cliente] CB ON ST.IdClienteBeneficiario = CB.IdCliente
    JOIN [dbo].[Cliente] CS ON ST.IdClienteSolicitante = CS.IdCliente
    JOIN [dbo].[Cuenta] CUO ON ST.IdCuentaOrigen = CUO.Id_Cuenta
    JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
    JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
    JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
    JOIN [dbo].[Sucursal] SO ON SO.Id_Sucursal = CUO.Id_Sucursal
    JOIN [dbo].[Sucursal] SD ON SD.Id_Sucursal = ST.IdSucursalDestino
    LEFT JOIN [dbo].[Cuenta] CUD ON ST.IdCuentaDestino = CUD.Id_Cuenta
    WHERE ST.FechaRegistro >= CONVERT(date, @fechaInicio)
    AND ST.FechaRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
    AND (
        @idSucursal = '0'
        OR @idSucursal IS NULL
        OR ST.Id_Sucursal = @idSucursal
    )
    AND (
        @idUsuario = '0'
        OR @idUsuario IS NULL
        OR CAJ.Id_Usuario = @idUsuario
    ) and ST.Estado in (0, 1);;

	------------------------------------------------------------------------------
	    -- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisiones = ISNULL(SUM(ST.[Comision]), 0) FROM [dbo].[SolicitudTransferencia] ST
    JOIN [dbo].[Cliente] CB ON ST.IdClienteBeneficiario = CB.IdCliente
    JOIN [dbo].[Cliente] CS ON ST.IdClienteSolicitante = CS.IdCliente
    JOIN [dbo].[Cuenta] CUO ON ST.IdCuentaOrigen = CUO.Id_Cuenta
    JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
    JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
    JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
    JOIN [dbo].[Sucursal] SO ON SO.Id_Sucursal = CUO.Id_Sucursal
    JOIN [dbo].[Sucursal] SD ON SD.Id_Sucursal = ST.IdSucursalDestino
    LEFT JOIN [dbo].[Cuenta] CUD ON ST.IdCuentaDestino = CUD.Id_Cuenta
    WHERE ST.FechaRegistro >= CONVERT(date, @fechaInicio)
    AND ST.FechaRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
    AND (
        @idSucursal = '0'
        OR @idSucursal IS NULL
        OR ST.Id_Sucursal = @idSucursal
    )
    AND (
        @idUsuario = '0'
        OR @idUsuario IS NULL
        OR CAJ.Id_Usuario = @idUsuario
    ) and ST.Estado in (0, 1);

		------------------------------------------------------------------------------
	    -- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisionesBanco = ISNULL(SUM(ST.ComisionBanco), 0) FROM [dbo].[SolicitudTransferencia] ST
    JOIN [dbo].[Cliente] CB ON ST.IdClienteBeneficiario = CB.IdCliente
    JOIN [dbo].[Cliente] CS ON ST.IdClienteSolicitante = CS.IdCliente
    JOIN [dbo].[Cuenta] CUO ON ST.IdCuentaOrigen = CUO.Id_Cuenta
    JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
    JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
    JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
    JOIN [dbo].[Sucursal] SO ON SO.Id_Sucursal = CUO.Id_Sucursal
    JOIN [dbo].[Sucursal] SD ON SD.Id_Sucursal = ST.IdSucursalDestino
    LEFT JOIN [dbo].[Cuenta] CUD ON ST.IdCuentaDestino = CUD.Id_Cuenta
    WHERE ST.FechaRegistro >= CONVERT(date, @fechaInicio)
    AND ST.FechaRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
    AND (
        @idSucursal = '0'
        OR @idSucursal IS NULL
        OR ST.Id_Sucursal = @idSucursal
    )
    AND (
        @idUsuario = '0'
        OR @idUsuario IS NULL
        OR CAJ.Id_Usuario = @idUsuario
    ) and ST.Estado in (0, 1);

    -- Realiza la consulta paginada
    WITH TransferenciasPaginadas AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY ST.Estado ASC, ST.FechaRegistro DESC) AS RowNum,
            ST.IdSolicitudTransferencia,
            ST.FechaRegistro,
            DniBeneficiario = CB.NroDocumento,
            Beneficiario = CONCAT(CB.Nombre_RazonSocial, ' ', CB.ApPaterno, ' ', CB.ApMaterno),
			TelefonoBeneficiario = CB.TelefonoCelular,
            DniSolicitante = CS.NroDocumento, 
			Solicitante = CONCAT(CS.Nombre_RazonSocial, ' ', CS.ApPaterno, ' ', CS.ApMaterno),
			TelefonoSolicitante = CS.TelefonoCelular,
			SucOrigen = SO.Nombre, 
			SucDestino = SD.Nombre,
			CuentaDestino = ISNULL(CUD.NombreCuenta, ''), 
			Moneda = ISNULL(CUO.Moneda, ''), 
			ST.Monto, 
			ST.[Comision],
			ST.Observaciones, 
			ST.Estado, 
			ST.NombreBanco, 
			ST.NroCuentaBancoDni, 
			ST.ComisionBanco, 
			ST.Servicio,
			Enviador = CONCAT(U.Nombres, ' ', U.Apellidos), 
			PagadoPor = (select top 1 CONCAT(U.Nombres, ' ', U.Apellidos) from Usuario u join Caja c on u.Id_Usuario = c.Id_Usuario join CajaCuenta cc on cc.Id_Caja = c.Id_Caja where cc.Id_Cuenta = CUD.Id_Cuenta ),
			ST.Intercambio,ST.IntercambioContrasena
        FROM [dbo].[SolicitudTransferencia] ST
        JOIN [dbo].[Cliente] CB ON ST.IdClienteBeneficiario = CB.IdCliente
        JOIN [dbo].[Cliente] CS ON ST.IdClienteSolicitante = CS.IdCliente
		JOIN [dbo].[Cuenta] CUO ON ST.IdCuentaOrigen = CUO.Id_Cuenta
		JOIN [dbo].[CajaCuenta] CCT ON CCT.Id_Cuenta = CUO.Id_Cuenta AND CCT.Estado = 1
		JOIN [dbo].[Caja] CAJ ON CAJ.Id_Caja = CCT.Id_Caja AND CAJ.Estado = 1
		JOIN [dbo].[Usuario] U ON CAJ.Id_Usuario = U.Id_Usuario
		JOIN [dbo].[Sucursal] SO ON SO.Id_Sucursal = CUO.Id_Sucursal
		JOIN [dbo].[Sucursal] SD ON SD.Id_Sucursal = ST.IdSucursalDestino
		LEFT JOIN [dbo].[Cuenta] CUD ON ST.IdCuentaDestino = CUD.Id_Cuenta
        WHERE
            ST.FechaRegistro >= CONVERT(date, @fechaInicio)
            AND ST.FechaRegistro < DATEADD(d, 1, CONVERT(date, @fechaFin))
            AND (
                @idSucursal = '0'
                OR @idSucursal IS NULL
                OR ST.Id_Sucursal = @idSucursal
            )
            AND (
                @idUsuario = '0'
                OR @idUsuario IS NULL
                OR CAJ.Id_Usuario = @idUsuario
            )
    )

    SELECT
		@totalRegistros AS TotalRegistros,
        ST.IdSolicitudTransferencia,
        ST.FechaRegistro,
        ST.DniBeneficiario,
        ST.Beneficiario,
		ST.TelefonoBeneficiario,
        ST.DniSolicitante, 
		ST.Solicitante,
		ST.TelefonoSolicitante,
		ST.SucOrigen, 
		ST.SucDestino,
		ST.CuentaDestino, 
		ST.Moneda, 
		ST.Monto, 
		ST.Comision,
		ST.Observaciones, 
		ST.Estado, 
		ST.NombreBanco, 
		ST.NroCuentaBancoDni, 
		ST.ComisionBanco, 
		ST.Servicio,
		ST.Enviador, 
		ST.PagadoPor,
		ST.Intercambio,
		ST.IntercambioContrasena
    FROM
        TransferenciasPaginadas ST
    WHERE
        ST.RowNum > @FirstRec
        AND ST.RowNum <= @LastRec
    ORDER BY
        ST.RowNum, ST.Estado ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarTransferenciasRecibidas]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 04/08/2023
-- Description:	Listar Transferencias Recibidas
-- =============================================
CREATE PROCEDURE [dbo].[ListarTransferenciasRecibidas] 
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idSucursal nvarchar(36),
	@estado int,
	@columnaUsuario nvarchar(36),

	@totalRegPorPagina int,
    @numeroPagina int,
    @totalRegistros int OUT,
	@totalTransferencias decimal(18,2) out,
	@totalComisiones decimal(18,2) out,
	@totalComisionesBanco decimal(18,2) out
AS
-- exec [dbo].[ListarTransferenciasRecibidas] '20231105', '20231106', '36ad4a42-f5f9-4242-9a94-d3a95625037d', '0', 'e88c8438-35bb-4094-adf5-6dac65620862', 100, 1, NULL, NULL, NULL, NULL
-- SELECT * FROM Usuario where id_usuario='e88c8438-35bb-4094-adf5-6dac65620862'
-- SELECT * FROM [dbo].[SolicitudTransferencia] WHERE FechaRegistro >= '20231106'
BEGIN

	-- Determine el primer registro y el último registro para la página actual
    DECLARE @FirstRec int, @LastRec int;

    SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
    SELECT @LastRec = (@numeroPagina * @totalRegPorPagina);

	-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalRegistros = COUNT(*) from [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario
	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	left join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
    where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and SD.Id_Sucursal = @idSucursal and ST.Estado = @estado
	AND (ST.ColumnaUsuario IS NULL OR ST.ColumnaUsuario=@columnaUsuario);

	----------------------------------------------------------------
		-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalTransferencias = ISNULL(SUM(ST.Monto), 0) from [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario
	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	left join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
    where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and SD.Id_Sucursal = @idSucursal and ST.Estado = @estado
	AND (ST.ColumnaUsuario IS NULL OR ST.ColumnaUsuario=@columnaUsuario);
	-----------------------------------------------------------------
		-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisiones = ISNULL(SUM(ST.[Comision]), 0) from [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario
	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	left join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
    where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and SD.Id_Sucursal = @idSucursal and ST.Estado = @estado
	AND (ST.ColumnaUsuario IS NULL OR ST.ColumnaUsuario=@columnaUsuario);

		-----------------------------------------------------------------
		-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisionesBanco = ISNULL(SUM(ST.[ComisionBanco]), 0) from [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario
	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	left join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
    where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and SD.Id_Sucursal = @idSucursal and ST.Estado = @estado
	AND (ST.ColumnaUsuario IS NULL OR ST.ColumnaUsuario=@columnaUsuario);


	-- Realiza la consulta paginada
    WITH TransferenciasPaginadas AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY ST.Estado ASC, ST.FechaRegistro DESC) AS RowNum,
            ST.IdSolicitudTransferencia,
            ST.FechaRegistro,
            DniBeneficiario = CB.NroDocumento,
            Beneficiario = CONCAT(CB.Nombre_RazonSocial, ' ', CB.ApPaterno, ' ', CB.ApMaterno),
			TelefonoBeneficiario = CB.TelefonoCelular,
            DniSolicitante = CS.NroDocumento, 
			Solicitante = CONCAT(CS.Nombre_RazonSocial, ' ', CS.ApPaterno, ' ', CS.ApMaterno),
			TelefonoSolicitante = CS.TelefonoCelular,
			SucOrigen = SO.Nombre, 
			SucDestino = SD.Nombre,
			CuentaDestino = ISNULL(CUD.NombreCuenta, ''), 
			Moneda = ISNULL(CUO.Moneda, ''), 
			ST.Monto, 
			ST.[Comision],
			ST.Observaciones, 
			ST.Estado, 
			ST.NombreBanco, 
			ST.NroCuentaBancoDni, 
			ST.ComisionBanco, 
			ST.Servicio,
			Enviador = CONCAT(U.Nombres, ' ', U.Apellidos), 
			PagadoPor = (select top 1 CONCAT(U.Nombres, ' ', U.Apellidos) from Usuario u join Caja c on u.Id_Usuario = c.Id_Usuario join CajaCuenta cc on cc.Id_Caja = c.Id_Caja where cc.Id_Cuenta = CUD.Id_Cuenta ),
			ST.Intercambio,ST.IntercambioContrasena
        FROM [dbo].[SolicitudTransferencia] ST
        join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
		join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
		join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
		join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
		join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario
		join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
		join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
		left join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
        where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
		and SD.Id_Sucursal = @idSucursal and ST.Estado = @estado
		AND (ST.ColumnaUsuario IS NULL OR ST.ColumnaUsuario=@columnaUsuario)
    )


    SELECT
		@totalRegistros AS TotalRegistros,
        ST.IdSolicitudTransferencia,
        ST.FechaRegistro,
        ST.DniBeneficiario,
        ST.Beneficiario,
		ST.TelefonoBeneficiario,
        ST.DniSolicitante, 
		ST.Solicitante,
		ST.TelefonoSolicitante,
		ST.SucOrigen, 
		ST.SucDestino,
		ST.CuentaDestino, 
		ST.Moneda, 
		ST.Monto, 
		ST.Comision,
		ST.Observaciones, 
		ST.Estado, 
		ST.NombreBanco, 
		ST.NroCuentaBancoDni, 
		ST.ComisionBanco, 
		ST.Servicio,
		ST.Enviador, 
		ST.PagadoPor,
		ST.Intercambio,
		ST.IntercambioContrasena
    FROM
        TransferenciasPaginadas ST
    WHERE
        ST.RowNum > @FirstRec
        AND ST.RowNum <= @LastRec
    ORDER BY
        ST.RowNum, ST.Estado ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarTransferenciasRecibidasPagadasPorUsuario]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 24/08/2023
-- Description:	Listar Transferencias Recibidas
-- =============================================
CREATE PROCEDURE [dbo].[ListarTransferenciasRecibidasPagadasPorUsuario]
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idUsuario nvarchar(36),
	@totalRegPorPagina int,
    @numeroPagina int,
    @totalRegistros int OUT,
	@totalTransferencias decimal(18,2) out,
	@totalComisiones decimal(18,2) out,
	@totalComisionesBanco decimal(18,2) out
AS
BEGIN

	-- Determine el primer registro y el último registro para la página actual
    DECLARE @FirstRec int, @LastRec int;

    SELECT @FirstRec = (@numeroPagina - 1) * @totalRegPorPagina;
    SELECT @LastRec = (@numeroPagina * @totalRegPorPagina);

	-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalRegistros = COUNT(*) FROM [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta

	where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and ST.Estado = 1	
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when (select top 1 cd.Id_Usuario from Caja cd join CajaCuenta ccd on cd.Id_Caja = ccd.Id_Caja where ccd.Id_Cuenta=CUD.Id_Cuenta) = @idUsuario then 1 else 0 end end;
	-------------------------------------------------------------------

		-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalTransferencias = ISNULL(SUM(ST.Monto), 0) FROM [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta

	where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and ST.Estado = 1	
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when (select top 1 cd.Id_Usuario from Caja cd join CajaCuenta ccd on cd.Id_Caja = ccd.Id_Caja where ccd.Id_Cuenta=CUD.Id_Cuenta) = @idUsuario then 1 else 0 end end;

	------------------------------------------------------------------------
			-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisiones = ISNULL(SUM(ST.[Comision]), 0) FROM [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta

	where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and ST.Estado = 1	
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when (select top 1 cd.Id_Usuario from Caja cd join CajaCuenta ccd on cd.Id_Caja = ccd.Id_Caja where ccd.Id_Cuenta=CUD.Id_Cuenta) = @idUsuario then 1 else 0 end end;

	------------------------------------------------------------------------
			-- Calcula el total de registros que coinciden con el filtro
    SELECT @totalComisionesBanco = ISNULL(SUM(ST.[ComisionBanco]), 0) FROM [dbo].[SolicitudTransferencia] ST
    join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta

	where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and ST.Estado = 1	
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when (select top 1 cd.Id_Usuario from Caja cd join CajaCuenta ccd on cd.Id_Caja = ccd.Id_Caja where ccd.Id_Cuenta=CUD.Id_Cuenta) = @idUsuario then 1 else 0 end end;


	-- Realiza la consulta paginada
    WITH TransferenciasPaginadas AS (
        SELECT
            ROW_NUMBER() OVER (ORDER BY ST.Estado ASC, ST.FechaRegistro DESC) AS RowNum,
            ST.IdSolicitudTransferencia,
            ST.FechaRegistro,
            DniBeneficiario = CB.NroDocumento,
            Beneficiario = CONCAT(CB.Nombre_RazonSocial, ' ', CB.ApPaterno, ' ', CB.ApMaterno),
			TelefonoBeneficiario = CB.TelefonoCelular,
            DniSolicitante = CS.NroDocumento, 
			Solicitante = CONCAT(CS.Nombre_RazonSocial, ' ', CS.ApPaterno, ' ', CS.ApMaterno),
			TelefonoSolicitante = CS.TelefonoCelular,
			SucOrigen = SO.Nombre, 
			SucDestino = SD.Nombre,
			CuentaDestino = ISNULL(CUD.NombreCuenta, ''), 
			Moneda = ISNULL(CUO.Moneda, ''), 
			ST.Monto, 
			ST.[Comision],
			ST.Observaciones, 
			ST.Estado, 
			ST.NombreBanco, 
			ST.NroCuentaBancoDni, 
			ST.ComisionBanco, 
			ST.Servicio,
			Enviador = CONCAT(U.Nombres, ' ', U.Apellidos), 
			PagadoPor = (select top 1 CONCAT(U.Nombres, ' ', U.Apellidos) from Usuario u join Caja c on u.Id_Usuario = c.Id_Usuario join CajaCuenta cc on cc.Id_Caja = c.Id_Caja where cc.Id_Cuenta = CUD.Id_Cuenta ),
			ST.Intercambio,ST.IntercambioContrasena
        FROM [dbo].[SolicitudTransferencia] ST
        join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
		join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
		join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
		join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
		join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
		join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

		join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
		join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
		join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
        where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and ST.Estado = 1	
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when (select top 1 cd.Id_Usuario from Caja cd join CajaCuenta ccd on cd.Id_Caja = ccd.Id_Caja where ccd.Id_Cuenta=CUD.Id_Cuenta) = @idUsuario then 1 else 0 end end

    )



	SELECT
		@totalRegistros AS TotalRegistros,
        ST.IdSolicitudTransferencia,
        ST.FechaRegistro,
        ST.DniBeneficiario,
        ST.Beneficiario,
		ST.TelefonoBeneficiario,
        ST.DniSolicitante, 
		ST.Solicitante,
		ST.TelefonoSolicitante,
		ST.SucOrigen, 
		ST.SucDestino,
		ST.CuentaDestino, 
		ST.Moneda, 
		ST.Monto, 
		ST.Comision,
		ST.Observaciones, 
		ST.Estado, 
		ST.NombreBanco, 
		ST.NroCuentaBancoDni, 
		ST.ComisionBanco, 
		ST.Servicio,
		ST.Enviador, 
		ST.PagadoPor,
		ST.Intercambio,
		ST.IntercambioContrasena
    FROM
        TransferenciasPaginadas ST
    WHERE
        ST.RowNum > @FirstRec
        AND ST.RowNum <= @LastRec
    ORDER BY
        ST.RowNum, ST.Estado ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[ListarUsuariosRegistrados]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 01/08/2023
-- Description:	Obtener Lista Usuarios Registrados
-- =============================================
CREATE PROCEDURE [dbo].[ListarUsuariosRegistrados]
	
AS
BEGIN
	
	select [Id_Usuario], [Login], [Nombres], [Password], [Apellidos], [Telefono], U.[Direccion], Rol = [Denominacion], NombreSucursal = S.Nombre, [Habilitado]
	from [dbo].[Usuario] U join [dbo].[UsuarioRol] UR on U.Id_Rol = UR.Id_Rol
	join [dbo].[Sucursal] S on S.Id_Sucursal = U.Id_Sucursal

END
GO
/****** Object:  StoredProcedure [dbo].[MostrarConsolidadoPorFiltroFechasSucursal]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MostrarConsolidadoPorFiltroFechasSucursal]
	@fechaInicio DateTime2,
	@fechaFin DateTime2,
	@idSucursal nvarchar(36),
	@idUsuario nvarchar(36)
AS
BEGIN
	select ComisionesTotal = sum(ST.Comision), MontoTotal = sum(ST.Monto)
	from [dbo].[SolicitudTransferencia] ST 
	join [dbo].[Cliente] CB on ST.IdClienteBeneficiario = CB.IdCliente
	join [dbo].[Cliente] CS on ST.IdClienteSolicitante = CS.IdCliente
	join [dbo].[Cuenta] CUO on ST.IdCuentaOrigen = CUO.Id_Cuenta
	join [dbo].[CajaCuenta] CCT on CCT.Id_Cuenta = CUO.Id_Cuenta and CCT.Estado = 1
	join [dbo].[Caja] CAJ on CAJ.Id_Caja = CCT.Id_Caja and CAJ.Estado = 1
	join [dbo].[Usuario] U on CAJ.Id_Usuario = U.Id_Usuario

	join [dbo].[Sucursal] SO on SO.Id_Sucursal = CUO.Id_Sucursal
	join [dbo].[Sucursal] SD on SD.Id_Sucursal = ST.IdSucursalDestino
	LEFT join [dbo].[Cuenta] CUD on ST.IdCuentaDestino = CUD.Id_Cuenta
	
	where ST.FechaRegistro >= CONVERT(date, @fechaInicio) and ST.FechaRegistro < DATEADD(d, 1, CONVERT(date,@fechaFin))
	and 1 = case when @idSucursal = '0' or @idSucursal is null then 1
				 else case when ST.Id_Sucursal = @idSucursal then 1 else 0 end end
	and 1 = case when @idUsuario = '0' or @idUsuario is null then 1
				 else case when CAJ.Id_Usuario = @idUsuario then 1 else 0 end end
END
GO
/****** Object:  StoredProcedure [dbo].[NumeroConsecutivoSolicitudTransferencia]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ronald Mijail Duenas Duenas
-- Create date: 04/08/2023
-- Description:	Devolver Numero Consecutivo Solicitud Transferencia
-- =============================================
CREATE PROCEDURE [dbo].[NumeroConsecutivoSolicitudTransferencia]
	@idSucursal varchar(36)
AS
BEGIN
	select top 1 [Numero] from [dbo].[SolicitudTransferencia] ST join [dbo].[Sucursal] S on ST.Id_Sucursal = S.Id_Sucursal
	where S.[Id_Sucursal] = @idSucursal 
	order by [FechaRegistro] desc 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCuentaPrincipalbyUsuarioMoneda]    Script Date: 30/11/2023 13:11:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerCuentaPrincipalbyUsuarioMoneda]
    @p_IdUsuario NVARCHAR(36),
    @p_Moneda NVARCHAR(50)
AS
BEGIN
    SELECT U.Id_Usuario, CU.Moneda, CC.Id_Cuenta
    FROM Usuario U
    INNER JOIN Caja C ON U.Id_Usuario = C.Id_Usuario
    INNER JOIN CajaCuenta CC ON C.Id_Caja = CC.Id_Caja
    INNER JOIN Cuenta CU ON CC.Id_Cuenta = CU.Id_Cuenta
    AND CC.FechaRegistro = (
        SELECT TOP 1 FechaRegistro
		FROM CajaCuenta
		WHERE Id_Caja = (select Id_Caja from Caja where Id_Usuario = @p_IdUsuario)
		ORDER BY CuentaPrincipalUsuario DESC, FechaRegistro ASC
    )
    AND U.Id_Usuario = @p_IdUsuario
    AND CU.Moneda = @p_Moneda
END;
GO
