VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Discador Open DialUp - Status: Desconectado"
   ClientHeight    =   3660
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4605
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3660
   ScaleWidth      =   4605
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSCommLib.MSComm MSComm1 
      Left            =   120
      Top             =   2280
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.TextBox telephone 
      Height          =   375
      Left            =   1320
      TabIndex        =   4
      Top             =   1800
      Width           =   2175
   End
   Begin VB.TextBox userPass 
      Height          =   405
      Left            =   720
      TabIndex        =   3
      Top             =   960
      Width           =   3615
   End
   Begin VB.TextBox userTxt 
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   240
      Width           =   3615
   End
   Begin VB.CommandButton btnDesconectar 
      Caption         =   "Desconectar"
      Enabled         =   0   'False
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   3000
      Width           =   1695
   End
   Begin VB.CommandButton btnConectar 
      Caption         =   "Conectar"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label Label3 
      Caption         =   "Telefone"
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Senha"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   960
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Usuario"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub sapiSleep Lib "kernel32" Alias "Sleep" (ByVal dwMilliseconds As Long)

Private Sub Atraso(milissegundos As Long)
    sapiSleep milissegundos
End Sub



Private Sub btnConectar_Click()
    ' Inicializa o objeto MSComm
    MSComm1.CommPort = 1 ' Número da porta COM (exemplo: COM1)
    MSComm1.Settings = "9600, N, 8, 1"
    MSComm1.PortOpen = True

    ' Aguarda um momento para estabilizar a conexão
    Atraso 2000 ' Aguarde 2 segundos

    ' Envia comando AT para o modem
    MSComm1.Output = "AT" & vbCrLf

    ' Aguarda a resposta do modem
    Atraso 1000 ' Aguarde 1 segundo para resposta

    ' Verifica se o modem respondeu corretamente
    If InStr(MSComm1.Input, "OK") Then
        ' Comando AT foi aceito
        ' Inicia a conexão discada
        Dim numero_telefone As String
        Dim username As String
        Dim password As String

        numero_telefone = telephone.Text ' Número de telefone do seu provedor de internet
        username = userTxt.Text ' Nome de usuário
        password = userPass.Text ' Senha

        ' Envia comando AT para discar
        MSComm1.Output = "ATD" & numero_telefone & vbCrLf

        ' Aguarda a conexão ser estabelecida
        Atraso 10000 ' Aguarde 10 segundos (ajuste conforme necessário)
        
        ' MSComm1.Output = "AT+CGDCONT=1,""IP"",""" & username & """,""" & password & """" & vbCrLf ' Comando para inserir o nome de usuário e senha
        ' Atraso 1000
        
        MSComm1.Output = "AT+CGAUTH=1,1,""" & username & """,""" & password & """" & vbCrLf ' Substitua <username> e <password> pelos valores corretos
        Atraso 1000 ' Aguarde um tempo
        
        btnConectar.Enabled = False ' Desativa o botão "Conectar"
        btnDesconectar.Enabled = True ' Ativa o botão "Desconectar"
        
        Form1.Caption = "Discador Open DialUp - Status: Conectado"
        
    End If
End Sub

Private Sub btnDesconectar_Click()
    ' Envia comando AT para desconectar
    MSComm1.Output = "ATH" & vbCrLf

    ' Aguarda a desconexão
    Atraso 5000 ' Aguarde 5 segundos (ajuste conforme necessário)

    ' Fecha a porta serial
    MSComm1.PortOpen = False
    
    btnConectar.Enabled = True ' Ativa o botão "Conectar"
    btnDesconectar.Enabled = False ' Desativa o botão "Desconectar"
    
    Form1.Caption = "Discador Open DialUp - Status: Desconectado"
End Sub

