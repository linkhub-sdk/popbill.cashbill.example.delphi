object frmExample: TfrmExample
  Left = 637
  Top = 176
  Width = 819
  Height = 792
  Caption = '�˺� ���ݿ����� SDK '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 22
    Width = 133
    Height = 13
    AutoSize = False
    Caption = '�˺�ȸ�� ����ڹ�ȣ :'
  end
  object Label2: TLabel
    Left = 292
    Top = 22
    Width = 109
    Height = 13
    AutoSize = False
    Caption = '�˺�ȸ�� ���̵� :'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 248
    Width = 705
    Height = 481
    Caption = '���ݿ����� ���� ���'
    TabOrder = 32
    object Label3: TLabel
      Left = 114
      Top = 22
      Width = 120
      Height = 13
      Caption = '����������ȣ(MgtKey) :'
    end
    object GroupBox8: TGroupBox
      Left = 36
      Top = 240
      Width = 132
      Height = 185
      Caption = '���� ����'
      TabOrder = 0
      object btnSearch: TButton
        Left = 10
        Top = 149
        Width = 113
        Height = 25
        Caption = '���� �����ȸ'
        TabOrder = 0
        OnClick = btnSearchClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 181
      Top = 239
      Width = 131
      Height = 156
      Caption = '�ΰ� ����'
      TabOrder = 1
    end
    object GroupBox10: TGroupBox
      Left = 324
      Top = 239
      Width = 209
      Height = 193
      Caption = 'URL ����'
      TabOrder = 2
    end
    object GroupBox11: TGroupBox
      Left = 544
      Top = 239
      Width = 133
      Height = 130
      Caption = '��Ÿ URL'
      TabOrder = 3
    end
    object GroupBox14: TGroupBox
      Left = 104
      Top = 56
      Width = 217
      Height = 153
      Caption = '��ù��� ���μ��� '
      TabOrder = 4
      object Shape1: TShape
        Left = 63
        Top = 55
        Width = 1
        Height = 57
      end
      object Shape3: TShape
        Left = 80
        Top = 115
        Width = 65
        Height = 1
      end
      object Panel2: TPanel
        Left = 11
        Top = 24
        Width = 182
        Height = 41
        Color = clActiveBorder
        TabOrder = 0
        object btnRegistIssue: TButton
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = '��ù���'
          TabOrder = 0
          OnClick = btnRegistIssueClick
        end
      end
      object btnCancelIssue_ri: TButton
        Left = 24
        Top = 104
        Width = 75
        Height = 25
        Caption = '�������'
        TabOrder = 1
        OnClick = btnCancelIssue_riClick
      end
      object btnDelete_ri: TButton
        Left = 128
        Top = 104
        Width = 57
        Height = 25
        Caption = '����'
        TabOrder = 2
        OnClick = btnDelete_riClick
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 381
    Top = 302
    Width = 257
    Height = 158
    Caption = '�ӽ�����-���� ���μ���'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 16
    object Shape2: TShape
      Left = 104
      Top = 55
      Width = 1
      Height = 74
    end
    object Shape4: TShape
      Left = 120
      Top = 128
      Width = 65
      Height = 1
    end
    object Shape5: TShape
      Left = 200
      Top = 55
      Width = 1
      Height = 74
    end
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 49
    Width = 763
    Height = 184
    Caption = '�˺� �⺻ API'
    TabOrder = 7
    object GroupBox6: TGroupBox
      Left = 301
      Top = 16
      Width = 163
      Height = 157
      Caption = '�˺� �⺻ URL'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 480
      Top = 16
      Width = 145
      Height = 156
      Caption = '����� ����'
      TabOrder = 1
      object btnRegistContact: TButton
        Left = 11
        Top = 24
        Width = 124
        Height = 25
        Caption = '����� �߰�'
        TabOrder = 0
        OnClick = btnRegistContactClick
      end
      object btnListContact: TButton
        Left = 11
        Top = 56
        Width = 124
        Height = 25
        Caption = '����� ��� Ȯ��'
        TabOrder = 1
        OnClick = btnListContactClick
      end
      object btnUpdateContact: TButton
        Left = 11
        Top = 88
        Width = 124
        Height = 25
        Caption = '����� ���� ����'
        TabOrder = 2
        OnClick = btnUpdateContactClick
      end
    end
    object GroupBox13: TGroupBox
      Left = 632
      Top = 16
      Width = 121
      Height = 156
      Caption = 'ȸ������ ����'
      TabOrder = 2
      object btnGetCorpInfo: TButton
        Left = 12
        Top = 24
        Width = 100
        Height = 25
        Caption = 'ȸ������ ��ȸ'
        TabOrder = 0
        OnClick = btnGetCorpInfoClick
      end
      object btnUpdateCorpInfo: TButton
        Left = 12
        Top = 56
        Width = 100
        Height = 25
        Caption = 'ȸ������ ����'
        TabOrder = 1
        OnClick = btnUpdateCorpInfoClick
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 170
    Top = 67
    Width = 145
    Height = 155
    Caption = '����Ʈ ����'
    TabOrder = 6
    object btnGetBalance: TButton
      Left = 12
      Top = 55
      Width = 123
      Height = 25
      Caption = '�ܿ�����Ʈ Ȯ��'
      TabOrder = 0
      OnClick = btnGetBalanceClick
    end
    object btnGetPartnerBalance: TButton
      Left = 12
      Top = 88
      Width = 123
      Height = 25
      Caption = '��Ʈ������Ʈ Ȯ��'
      TabOrder = 1
      OnClick = btnGetPartnerBalanceClick
    end
    object btnGetUnitCost: TButton
      Left = 12
      Top = 120
      Width = 124
      Height = 25
      Caption = '���� �ܰ� Ȯ��'
      TabOrder = 2
      OnClick = btnGetUnitCostClick
    end
    object btnGetChargeInfo: TButton
      Left = 12
      Top = 22
      Width = 125
      Height = 25
      Caption = '�������� Ȯ��'
      TabOrder = 3
      OnClick = btnGetChargeInfoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 154
    Caption = 'ȸ������'
    TabOrder = 5
    object btnCheckID: TButton
      Left = 8
      Top = 56
      Width = 105
      Height = 25
      Caption = 'ID �ߺ� Ȯ��'
      TabOrder = 0
      OnClick = btnCheckIDClick
    end
    object btnCheckIsMember: TButton
      Left = 8
      Top = 24
      Width = 105
      Height = 25
      Caption = '���Կ��� Ȯ��'
      TabOrder = 1
      OnClick = btnCheckIsMemberClick
    end
  end
  object txtCorpNum: TEdit
    Left = 160
    Top = 18
    Width = 105
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 0
    Text = '1234567890'
  end
  object txtUserID: TEdit
    Left = 400
    Top = 18
    Width = 105
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 1
    Text = 'testkorea'
  end
  object btnJoinMember: TButton
    Left = 41
    Top = 155
    Width = 105
    Height = 25
    Caption = 'ȸ�� ����'
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetPopbillURL_LOGIN: TButton
    Left = 333
    Top = 87
    Width = 141
    Height = 25
    Caption = '�˺� �α��� URL'
    TabOrder = 3
    OnClick = btnGetPopbillURL_LOGINClick
  end
  object btnGetPopbillURL_CHRG: TButton
    Left = 333
    Top = 119
    Width = 141
    Height = 25
    Caption = '����Ʈ ���� �˾� URL'
    TabOrder = 4
    OnClick = btnGetPopbillURL_CHRGClick
  end
  object txtMgtKey: TEdit
    Left = 268
    Top = 267
    Width = 149
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 8
  end
  object btnCheckMgtkeyInUse: TButton
    Left = 428
    Top = 266
    Width = 161
    Height = 25
    Caption = '������ȣ ��뿩�� Ȯ��'
    TabOrder = 9
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnGetInfo: TButton
    Left = 70
    Top = 509
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 17
    OnClick = btnGetInfoClick
  end
  object btnGetInfos: TButton
    Left = 70
    Top = 541
    Width = 113
    Height = 25
    Caption = '���� ����(�뷮)'
    TabOrder = 18
    OnClick = btnGetInfosClick
  end
  object btnGetLogs: TButton
    Left = 70
    Top = 573
    Width = 113
    Height = 25
    Caption = '���� �̷�'
    TabOrder = 19
    OnClick = btnGetLogsClick
  end
  object btnGetDetailInfo: TButton
    Left = 70
    Top = 605
    Width = 113
    Height = 25
    Caption = '���� �� ����'
    TabOrder = 20
    OnClick = btnGetDetailInfoClick
  end
  object btnSendEmail: TButton
    Left = 214
    Top = 510
    Width = 113
    Height = 25
    Caption = '�̸��� ����'
    TabOrder = 21
    OnClick = btnSendEmailClick
  end
  object btnSendSMS: TButton
    Left = 214
    Top = 542
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 22
    OnClick = btnSendSMSClick
  end
  object btnSendFAX: TButton
    Left = 214
    Top = 574
    Width = 113
    Height = 25
    Caption = '�ѽ� ����'
    TabOrder = 23
    OnClick = btnSendFAXClick
  end
  object btnGetPopUpURL: TButton
    Left = 359
    Top = 512
    Width = 187
    Height = 25
    Caption = '���� ���뺸�� �˾� URL'
    TabOrder = 24
    OnClick = btnGetPopUpURLClick
  end
  object btnGetPrintURL: TButton
    Left = 359
    Top = 544
    Width = 187
    Height = 25
    Caption = '�μ� �˾� URL'
    TabOrder = 25
    OnClick = btnGetPrintURLClick
  end
  object btnGetEPrintURL: TButton
    Left = 359
    Top = 576
    Width = 187
    Height = 25
    Caption = '���޹޴��� �μ� �˾� URL'
    TabOrder = 26
    OnClick = btnGetEPrintURLClick
  end
  object btnGetMassPrintURL: TButton
    Left = 359
    Top = 608
    Width = 187
    Height = 25
    Caption = '�ٷ� �μ� �˾� URL'
    TabOrder = 27
    OnClick = btnGetMassPrintURLClick
  end
  object btnGetMailURL: TButton
    Left = 359
    Top = 640
    Width = 187
    Height = 25
    Caption = '�̸���(���޹޴���) ��ũ URL'
    TabOrder = 28
    OnClick = btnGetMailURLClick
  end
  object btnGetURL_WRITE: TButton
    Left = 575
    Top = 576
    Width = 117
    Height = 25
    Caption = '���� �ۼ�'
    TabOrder = 29
    OnClick = btnGetURL_WRITEClick
  end
  object btnGetURL_TBOX: TButton
    Left = 575
    Top = 512
    Width = 117
    Height = 25
    Caption = '�ӽ� ������'
    TabOrder = 30
    OnClick = btnGetURL_TBOXClick
  end
  object btnGetURL_PBOX: TButton
    Left = 575
    Top = 544
    Width = 117
    Height = 25
    Caption = '���� ������'
    TabOrder = 31
    OnClick = btnGetURL_PBOXClick
  end
  object btnCancelIssue: TButton
    Left = 452
    Top = 419
    Width = 69
    Height = 25
    Caption = '�������'
    TabOrder = 14
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 549
    Top = 419
    Width = 60
    Height = 27
    Caption = '����'
    TabOrder = 15
    OnClick = btnDeleteClick
  end
  object btnIssue: TButton
    Left = 452
    Top = 379
    Width = 69
    Height = 25
    Caption = '����'
    TabOrder = 13
    OnClick = btnIssueClick
  end
  object Panel1: TPanel
    Left = 396
    Top = 323
    Width = 222
    Height = 41
    Color = clActiveBorder
    TabOrder = 12
    object Label4: TLabel
      Left = 16
      Top = 13
      Width = 57
      Height = 13
      AutoSize = False
      Caption = '�ӽ�����'
    end
  end
  object btnRegister: TButton
    Left = 482
    Top = 331
    Width = 55
    Height = 26
    Caption = '���'
    TabOrder = 10
    OnClick = btnRegisterClick
  end
  object btnUpdate: TButton
    Left = 545
    Top = 331
    Width = 55
    Height = 26
    Caption = '����'
    TabOrder = 11
    OnClick = btnUpdateClick
  end
end
