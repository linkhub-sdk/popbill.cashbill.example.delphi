object frmExample: TfrmExample
  Left = 269
  Top = 149
  AutoScroll = False
  Caption = '�˺� ���ݿ����� API SDK Delphi Example'
  ClientHeight = 740
  ClientWidth = 1115
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
    Top = 224
    Width = 737
    Height = 481
    Caption = '���ݿ����� ���� ���'
    TabOrder = 28
    object Label3: TLabel
      Left = 114
      Top = 22
      Width = 120
      Height = 13
      Caption = '����������ȣ(MgtKey) :'
    end
    object Label4: TLabel
      Left = 344
      Top = 48
      Width = 321
      Height = 13
      AutoSize = False
      Caption = '����û ������ �Ϸ�� ���ݿ������� ����ϱ� ���ؼ���'
    end
    object Label5: TLabel
      Left = 344
      Top = 64
      Width = 353
      Height = 13
      Caption = '���� ���ݿ������� ���� '#39'������ݿ�����'#39'�� �����ؾ� �մϴ�.'
    end
    object GroupBox8: TGroupBox
      Left = 36
      Top = 256
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
      Top = 255
      Width = 131
      Height = 156
      Caption = '�ΰ� ����'
      TabOrder = 1
    end
    object GroupBox10: TGroupBox
      Left = 324
      Top = 255
      Width = 209
      Height = 193
      Caption = 'URL ����'
      TabOrder = 2
    end
    object GroupBox11: TGroupBox
      Left = 544
      Top = 255
      Width = 133
      Height = 130
      Caption = '��Ÿ URL'
      TabOrder = 3
    end
    object GroupBox14: TGroupBox
      Left = 104
      Top = 88
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
    Left = 389
    Top = 310
    Width = 273
    Height = 155
    Caption = '������ݿ����� ��ù��� ���μ���'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 12
    object Shape2: TShape
      Left = 64
      Top = 55
      Width = 1
      Height = 74
    end
    object Shape4: TShape
      Left = 96
      Top = 120
      Width = 65
      Height = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 49
    Width = 1074
    Height = 160
    Caption = '�˺� �⺻ API'
    TabOrder = 6
    object GroupBox6: TGroupBox
      Left = 613
      Top = 19
      Width = 163
      Height = 126
      Caption = '�˺� �⺻ URL'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 784
      Top = 19
      Width = 145
      Height = 125
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
      Left = 936
      Top = 19
      Width = 121
      Height = 125
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
    Height = 126
    Caption = '����Ʈ ����'
    TabOrder = 5
    object btnGetUnitCost: TButton
      Left = 12
      Top = 56
      Width = 124
      Height = 25
      Caption = '���� �ܰ� Ȯ��'
      TabOrder = 0
      OnClick = btnGetUnitCostClick
    end
    object btnGetChargeInfo: TButton
      Left = 12
      Top = 22
      Width = 125
      Height = 25
      Caption = '�������� Ȯ��'
      TabOrder = 1
      OnClick = btnGetChargeInfoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 125
    Caption = 'ȸ������'
    TabOrder = 4
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
    Left = 645
    Top = 95
    Width = 141
    Height = 25
    Caption = '�˺� �α��� URL'
    TabOrder = 3
    OnClick = btnGetPopbillURL_LOGINClick
  end
  object txtMgtKey: TEdit
    Left = 268
    Top = 243
    Width = 149
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 7
  end
  object btnCheckMgtkeyInUse: TButton
    Left = 428
    Top = 242
    Width = 161
    Height = 25
    Caption = '������ȣ ��뿩�� Ȯ��'
    TabOrder = 8
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnGetInfo: TButton
    Left = 70
    Top = 501
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 13
    OnClick = btnGetInfoClick
  end
  object btnGetInfos: TButton
    Left = 70
    Top = 533
    Width = 113
    Height = 25
    Caption = '���� ����(�뷮)'
    TabOrder = 14
    OnClick = btnGetInfosClick
  end
  object btnGetLogs: TButton
    Left = 70
    Top = 565
    Width = 113
    Height = 25
    Caption = '���� �̷�'
    TabOrder = 15
    OnClick = btnGetLogsClick
  end
  object btnGetDetailInfo: TButton
    Left = 70
    Top = 597
    Width = 113
    Height = 25
    Caption = '���� �� ����'
    TabOrder = 16
    OnClick = btnGetDetailInfoClick
  end
  object btnSendEmail: TButton
    Left = 214
    Top = 502
    Width = 113
    Height = 25
    Caption = '�̸��� ����'
    TabOrder = 17
    OnClick = btnSendEmailClick
  end
  object btnSendSMS: TButton
    Left = 214
    Top = 534
    Width = 113
    Height = 25
    Caption = '���� ����'
    TabOrder = 18
    OnClick = btnSendSMSClick
  end
  object btnSendFAX: TButton
    Left = 214
    Top = 566
    Width = 113
    Height = 25
    Caption = '�ѽ� ����'
    TabOrder = 19
    OnClick = btnSendFAXClick
  end
  object btnGetPopUpURL: TButton
    Left = 359
    Top = 504
    Width = 187
    Height = 25
    Caption = '���� ���뺸�� �˾� URL'
    TabOrder = 20
    OnClick = btnGetPopUpURLClick
  end
  object btnGetPrintURL: TButton
    Left = 359
    Top = 536
    Width = 187
    Height = 25
    Caption = '�μ� �˾� URL'
    TabOrder = 21
    OnClick = btnGetPrintURLClick
  end
  object btnGetEPrintURL: TButton
    Left = 359
    Top = 568
    Width = 187
    Height = 25
    Caption = '���޹޴��� �μ� �˾� URL'
    TabOrder = 22
    OnClick = btnGetEPrintURLClick
  end
  object btnGetMassPrintURL: TButton
    Left = 359
    Top = 600
    Width = 187
    Height = 25
    Caption = '�ٷ� �μ� �˾� URL'
    TabOrder = 23
    OnClick = btnGetMassPrintURLClick
  end
  object btnGetMailURL: TButton
    Left = 359
    Top = 632
    Width = 187
    Height = 25
    Caption = '�̸���(���޹޴���) ��ũ URL'
    TabOrder = 24
    OnClick = btnGetMailURLClick
  end
  object btnGetURL_WRITE: TButton
    Left = 575
    Top = 568
    Width = 117
    Height = 25
    Caption = '���� �ۼ�'
    TabOrder = 25
    OnClick = btnGetURL_WRITEClick
  end
  object btnGetURL_TBOX: TButton
    Left = 575
    Top = 504
    Width = 117
    Height = 25
    Caption = '�ӽ� ������'
    TabOrder = 26
    OnClick = btnGetURL_TBOXClick
  end
  object btnGetURL_PBOX: TButton
    Left = 575
    Top = 536
    Width = 117
    Height = 25
    Caption = '���� ������'
    TabOrder = 27
    OnClick = btnGetURL_PBOXClick
  end
  object btnCancelIssue: TButton
    Left = 412
    Top = 419
    Width = 77
    Height = 25
    Caption = '�������'
    TabOrder = 10
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 517
    Top = 419
    Width = 60
    Height = 27
    Caption = '����'
    TabOrder = 11
    OnClick = btnDeleteClick
  end
  object Panel1: TPanel
    Left = 400
    Top = 336
    Width = 249
    Height = 40
    Color = clActiveBorder
    TabOrder = 9
    object btnRevokeRegistIssue: TButton
      Left = 16
      Top = 7
      Width = 75
      Height = 26
      Caption = '��ù���'
      TabOrder = 0
      OnClick = btnRevokeRegistIssueClick
    end
    object btnRevokeRegistIssue_part: TButton
      Left = 112
      Top = 8
      Width = 123
      Height = 25
      Caption = '�κ���� ��ù���'
      TabOrder = 1
      OnClick = btnRevokeRegistIssue_partClick
    end
  end
  object GroupBox12: TGroupBox
    Left = 328
    Top = 68
    Width = 139
    Height = 124
    Caption = '�������� ����Ʈ'
    TabOrder = 29
    object btnGetBalance: TButton
      Left = 12
      Top = 23
      Width = 116
      Height = 25
      Caption = '�ܿ�����Ʈ Ȯ��'
      TabOrder = 0
      OnClick = btnGetBalanceClick
    end
    object btnGetPopbillURL_CHRG: TButton
      Left = 12
      Top = 55
      Width = 115
      Height = 25
      Caption = '����Ʈ ���� URL'
      TabOrder = 1
      OnClick = btnGetPopbillURL_CHRGClick
    end
  end
  object GroupBox15: TGroupBox
    Left = 480
    Top = 68
    Width = 146
    Height = 124
    Caption = '��Ʈ�ʰ��� ����Ʈ'
    TabOrder = 30
    object btnGetPartnerBalance: TButton
      Left = 9
      Top = 24
      Width = 128
      Height = 25
      Caption = '��Ʈ������Ʈ Ȯ��'
      TabOrder = 0
      OnClick = btnGetPartnerBalanceClick
    end
    object btnGetPartnerURL_CHRG: TButton
      Left = 9
      Top = 56
      Width = 129
      Height = 26
      Caption = '����Ʈ ���� URL'
      TabOrder = 1
      OnClick = btnGetPartnerURL_CHRGClick
    end
  end
end
