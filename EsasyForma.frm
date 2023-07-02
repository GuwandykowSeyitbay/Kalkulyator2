VERSION 5.00
Begin VB.Form EsasyForma 
   Caption         =   "Kalkulyator 2"
   ClientHeight    =   3885
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   4860
   Icon            =   "EsasyForma.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3885
   ScaleWidth      =   4860
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "C (Arassala)"
      Height          =   495
      Left            =   3720
      TabIndex        =   9
      Top             =   840
      Width           =   975
   End
   Begin VB.CommandButton Command5 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   1800
      TabIndex        =   5
      Top             =   2880
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   2760
      TabIndex        =   4
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   840
      TabIndex        =   3
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   1800
      TabIndex        =   2
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   690
      Left            =   1800
      TabIndex        =   1
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox BS 
      Alignment       =   1  'Right Justify
      BeginProperty Font 
         Name            =   "Small Fonts"
         Size            =   20.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   720
      TabIndex        =   0
      Text            =   "0"
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label BS2 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Left            =   2400
      TabIndex        =   8
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label GAKB 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   1920
      TabIndex        =   7
      Top             =   480
      Width           =   375
   End
   Begin VB.Label BS1 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Left            =   720
      TabIndex        =   6
      Top             =   480
      Width           =   1095
   End
   Begin VB.Menu mnuFayl 
      Caption         =   "&Fayl"
      Begin VB.Menu mnuFaylCyk 
         Caption         =   "&Cyk"
      End
   End
   Begin VB.Menu mnuKomek 
      Caption         =   "&Komek"
      Begin VB.Menu mnuKomekPB 
         Caption         =   "&Programma Barada"
      End
   End
End
Attribute VB_Name = "EsasyForma"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim A As Long
Dim B As Long
Dim C As Long
C = BS.Text
BS1.Caption = C
GAKB.Caption = "+"
End Sub

Private Sub Command2_Click()
Dim AA As String
Dim BB As Long
Dim CC As Long
BS2.Caption = BS.Text
AA = GAKB.Caption
BB = BS1.Caption
CC = BS2.Caption
If AA = "+" Then
AA = BB + CC
BS.Text = AA
End If
If AA = "-" Then
AA = BB - CC
BS.Text = AA
End If
If AA = "x" Then
AA = BB * CC
BS.Text = AA
End If
If AA = "/" Then
AA = BB / CC
BS.Text = AA
End If
End Sub

Private Sub Command3_Click()
Dim A As Long
Dim B As Long
Dim C As Long
C = BS.Text
BS1.Caption = C
GAKB.Caption = "x"
End Sub

Private Sub Command4_Click()
Dim A As Long
Dim B As Long
Dim C As Long
C = BS.Text
BS1.Caption = C
GAKB.Caption = "/"
End Sub

Private Sub Command5_Click()
Dim A As Long
Dim B As Long
Dim C As Long
C = BS.Text
BS1.Caption = C
GAKB.Caption = "-"
End Sub

Private Sub Command6_Click()
BS.Text = ""
BS1.Caption = "0"
BS2.Caption = "0"
GAKB.Caption = ""
End Sub

Private Sub mnuFaylCyk_Click()
End
End Sub

Private Sub mnuKomekPB_Click()
PBForma.Show
End Sub
