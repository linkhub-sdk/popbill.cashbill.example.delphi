object frmExample: TfrmExample
  Left = 693
  Top = 198
  Width = 725
  Height = 681
  Caption = '�˺� ���ݿ����� SDK '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 22
    Width = 66
    Height = 13
    Caption = '����ڹ�ȣ :'
  end
  object Label2: TLabel
    Left = 244
    Top = 22
    Width = 66
    Height = 13
    Caption = '�˺����̵� :'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 184
    Width = 659
    Height = 433
    Caption = '���ݿ����� ���� ���'
    TabOrder = 36
    object Label3: TLabel
      Left = 112
      Top = 30
      Width = 120
      Height = 13
      Caption = '����������ȣ(MgtKey) :'
    end
    object GroupBox8: TGroupBox
      Left = 12
      Top = 224
      Width = 132
      Height = 155
      Caption = '���� ����'
      TabOrder = 0
    end
    object GroupBox9: TGroupBox
      Left = 157
      Top = 223
      Width = 131
      Height = 156
      Caption = '�ΰ� ����'
      TabOrder = 1
    end
    object GroupBox10: TGroupBox
      Left = 300
      Top = 223
      Width = 209
      Height = 193
      Caption = 'URL ����'
      TabOrder = 2
    end
    object GroupBox11: TGroupBox
      Left = 520
      Top = 223
      Width = 128
      Height = 130
      Caption = '��Ÿ URL'
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox
    Left = 205
    Top = 238
    Width = 257
    Height = 158
    Caption = '���ݿ����� ó�� ���μ���'
    TabOrder = 20
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 49
    Width = 658
    Height = 125
    Caption = '�˺� �⺻ API'
    TabOrder = 11
    object GroupBox6: TGroupBox
      Left = 485
      Top = 16
      Width = 163
      Height = 97
      Caption = '��Ÿ'
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 323
    Top = 66
    Width = 179
    Height = 95
    Caption = '��Ʈ�� ����'
    TabOrder = 10
  end
  object GroupBox2: TGroupBox
    Left = 170
    Top = 67
    Width = 145
    Height = 93
    Caption = '����Ʈ ����'
    TabOrder = 9
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 91
    Caption = 'ȸ������'
    TabOrder = 8
  end
  object txtCorpNum: TEdit
    Left = 104
    Top = 18
    Width = 105
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
    Text = '1234567890'
  end
  object txtUserID: TEdit
    Left = 320
    Top = 18
    Width = 105
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
    Text = 'testkorea'
  end
  object btnJoinMember: TButton
    Left = 43
    Top = 88
    Width = 108
    Height = 25
    Caption = 'ȸ�� ����'
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetPopbillURL_LOGIN: TButton
    Left = 517
    Top = 87
    Width = 141
    Height = 25
    Caption = '�˺� �α��� URL'
    TabOrder = 3
    OnClick = btnGetPopbillURL_LOGINClick
  end
  object btnGetBalance: TButton
    Left = 43
    Top = 122
    Width = 107
    Height = 25
    Caption = '�ܿ�����Ʈ Ȯ��'
    TabOrder = 4
    OnClick = btnGetBalanceClick
  end
  object btnUnitCost: TButton
    Left = 183
    Top = 93
    Width = 121
    Height = 25
    Caption = '���� �ܰ� Ȯ��'
    TabOrder = 5
    OnClick = btnUnitCostClick
  end
  object btnGetPopbillURL_CHRG: TButton
    Left = 517
    Top = 119
    Width = 141
    Height = 25
    Caption = '����Ʈ ���� �˾� URL'
    TabOrder = 6
    OnClick = btnGetPopbillURL_CHRGClick
  end
  object btnGetPartnerBalance: TButton
    Left = 331
    Top = 88
    Width = 158
    Height = 25
    Caption = '��Ʈ�� �ܿ�����Ʈ Ȯ��'
    TabOrder = 7
    OnClick = btnGetPartnerBalanceClick
  end
  object txtMgtKey: TEdit
    Left = 268
    Top = 203
    Width = 149
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 12
  end
  object btnCheckMgtkeyInUse: TButton
    Left = 428
    Top = 202
    Width = 161
    Height = 25
    Caption = '������ȣ ��뿩�� Ȯ��'
    TabOrder = 13
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnGetInfo: TButton
    Left = 46
    Top = 429
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 21
    OnClick = btnGetInfoClick
  end
  object btnGetInfos: TButton
    Left = 46
    Top = 461
    Width = 113
    Height = 25
    Caption = '���� ����(�뷮)'
    TabOrder = 22
    OnClick = btnGetInfosClick
  end
  object btnGetLogs: TButton
    Left = 46
    Top = 493
    Width = 113
    Height = 25
    Caption = '���� �̷�'
    TabOrder = 23
    OnClick = btnGetLogsClick
  end
  object btnGetDetailInfo: TButton
    Left = 46
    Top = 525
    Width = 113
    Height = 25
    Caption = '���� �� ����'
    TabOrder = 24
    OnClick = btnGetDetailInfoClick
  end
  object btnSendEmail: TButton
    Left = 190
    Top = 430
    Width = 113
    Height = 25
    Caption = '�̸��� ����'
    TabOrder = 25
    OnClick = btnSendEmailClick
  end
  object btnSendSMS: TButton
    Left = 190
    Top = 462
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 26
    OnClick = btnSendSMSClick
  end
  object btnSendFAX: TButton
    Left = 190
    Top = 494
    Width = 113
    Height = 25
    Caption = '�ѽ� ����'
    TabOrder = 27
    OnClick = btnSendFAXClick
  end
  object btnGetPopUpURL: TButton
    Left = 335
    Top = 432
    Width = 187
    Height = 25
    Caption = '���� ���뺸�� �˾� URL'
    TabOrder = 28
    OnClick = btnGetPopUpURLClick
  end
  object btnGetPrintURL: TButton
    Left = 335
    Top = 464
    Width = 187
    Height = 25
    Caption = '�μ� �˾� URL'
    TabOrder = 29
    OnClick = btnGetPrintURLClick
  end
  object btnGetEPrintURL: TButton
    Left = 335
    Top = 496
    Width = 187
    Height = 25
    Caption = '���޹޴��� �μ� �˾� URL'
    TabOrder = 30
    OnClick = btnGetEPrintURLClick
  end
  object btnGetMassPrintURL: TButton
    Left = 335
    Top = 528
    Width = 187
    Height = 25
    Caption = '�ٷ� �μ� �˾� URL'
    TabOrder = 31
    OnClick = btnGetMassPrintURLClick
  end
  object btnGetMailURL: TButton
    Left = 335
    Top = 560
    Width = 187
    Height = 25
    Caption = '�̸���(���޹޴���) ��ũ URL'
    TabOrder = 32
    OnClick = btnGetMailURLClick
  end
  object btnGetURL_WRITE: TButton
    Left = 551
    Top = 496
    Width = 113
    Height = 25
    Caption = '���� �ۼ�'
    TabOrder = 33
    OnClick = btnGetURL_WRITEClick
  end
  object btnGetURL_TBOX: TButton
    Left = 551
    Top = 432
    Width = 113
    Height = 25
    Caption = '�ӽ� ������'
    TabOrder = 34
    OnClick = btnGetURL_TBOXClick
  end
  object btnGetURL_PBOX: TButton
    Left = 551
    Top = 464
    Width = 113
    Height = 25
    Caption = '���� ������'
    TabOrder = 35
    OnClick = btnGetURL_PBOXClick
  end
  object GroupBox12: TGroupBox
    Left = 312
    Top = 264
    Width = 89
    Height = 105
    Caption = 'GroupBox12'
    TabOrder = 37
  end
  object btnCancelIssue: TButton
    Left = 276
    Top = 355
    Width = 69
    Height = 25
    Caption = '�������'
    TabOrder = 18
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 373
    Top = 355
    Width = 60
    Height = 27
    Caption = '����'
    TabOrder = 19
    OnClick = btnDeleteClick
  end
  object btnIssue: TButton
    Left = 276
    Top = 315
    Width = 69
    Height = 25
    Caption = '����'
    TabOrder = 17
    OnClick = btnIssueClick
  end
  object Panel1: TPanel
    Left = 220
    Top = 259
    Width = 222
    Height = 41
    Color = clActiveBorder
    TabOrder = 16
    object Label4: TLabel
      Left = 16
      Top = 13
      Width = 48
      Height = 13
      Caption = '�ӽ�����'
    end
  end
  object btnRegister: TButton
    Left = 306
    Top = 267
    Width = 55
    Height = 26
    Caption = '���'
    TabOrder = 14
    OnClick = btnRegisterClick
  end
  object btnUpdate: TButton
    Left = 369
    Top = 267
    Width = 55
    Height = 26
    Caption = '����'
    TabOrder = 15
    OnClick = btnUpdateClick
  end
end
