object frmExample: TfrmExample
  Left = 265
  Top = 114
  AutoScroll = False
  Caption = '�˺� ���ݿ����� API SDK Delphi Example'
  ClientHeight = 729
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
  object Label7: TLabel
    Left = 660
    Top = 22
    Width = 52
    Height = 13
    AutoSize = False
    Caption = 'URL:'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 224
    Width = 1073
    Height = 496
    Caption = '���ݿ����� ���� ���'
    TabOrder = 13
    object Label3: TLabel
      Left = 138
      Top = 38
      Width = 96
      Height = 13
      Caption = '������ȣ(MgtKey) :'
    end
    object Label4: TLabel
      Left = 120
      Top = 240
      Width = 321
      Height = 13
      AutoSize = False
      Caption = '����û ������ �Ϸ�� ���ݿ������� ����ϱ� ���ؼ���'
    end
    object Label5: TLabel
      Left = 120
      Top = 256
      Width = 353
      Height = 13
      AutoSize = False
      Caption = '���� ���ݿ������� ���� '#39'������ݿ�����'#39'�� �����ؾ� �մϴ�.'
    end
    object GroupBox8: TGroupBox
      Left = 12
      Top = 289
      Width = 154
      Height = 191
      Caption = '���� ����'
      TabOrder = 0
      object btnSearch: TButton
        Left = 9
        Top = 117
        Width = 137
        Height = 25
        Caption = '��� ��ȸ'
        TabOrder = 0
        OnClick = btnSearchClick
      end
      object btnGetInfo: TButton
        Left = 9
        Top = 24
        Width = 137
        Height = 25
        Caption = '���� Ȯ��'
        TabOrder = 1
        OnClick = btnGetInfoClick
      end
      object btnGetInfos: TButton
        Left = 9
        Top = 55
        Width = 137
        Height = 25
        Caption = '���� �뷮 Ȯ��'
        TabOrder = 2
        OnClick = btnGetInfosClick
      end
      object btnGetLogs: TButton
        Left = 9
        Top = 151
        Width = 137
        Height = 25
        Caption = '���� �����̷� Ȯ��'
        TabOrder = 3
        OnClick = btnGetLogsClick
      end
      object btnGetDetailInfo: TButton
        Left = 9
        Top = 86
        Width = 137
        Height = 25
        Caption = '������ Ȯ��'
        TabOrder = 4
        OnClick = btnGetDetailInfoClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 173
      Top = 289
      Width = 324
      Height = 191
      Caption = '�ΰ� ���'
      TabOrder = 1
      object btnSendEmail: TButton
        Left = 9
        Top = 24
        Width = 152
        Height = 25
        Caption = '�̸��� ����'
        TabOrder = 0
        OnClick = btnSendEmailClick
      end
      object btnSendSMS: TButton
        Left = 9
        Top = 55
        Width = 152
        Height = 25
        Caption = '���� ����'
        TabOrder = 1
        OnClick = btnSendSMSClick
      end
      object btnSendFAX: TButton
        Left = 9
        Top = 87
        Width = 152
        Height = 25
        Caption = '�ѽ� ����'
        TabOrder = 2
        OnClick = btnSendFAXClick
      end
      object btnListEmailConfig: TButton
        Left = 9
        Top = 118
        Width = 152
        Height = 25
        Caption = '�˸����� ���۸�� ��ȸ'
        TabOrder = 3
        OnClick = btnListEmailConfigClick
      end
      object btnUpdateEmailConfig: TButton
        Left = 9
        Top = 149
        Width = 152
        Height = 25
        Caption = '�˸����� ���ۼ��� ����'
        TabOrder = 4
        OnClick = btnUpdateEmailConfigClick
      end
      object btnAssignMgtKey: TButton
        Left = 168
        Top = 24
        Width = 145
        Height = 25
        Caption = '������ȣ �Ҵ�'
        TabOrder = 5
        OnClick = btnAssignMgtKeyClick
      end
    end
    object GroupBox10: TGroupBox
      Left = 503
      Top = 289
      Width = 402
      Height = 191
      Caption = 'URL ����'
      TabOrder = 2
      object btnGetPopUpURL: TButton
        Left = 9
        Top = 24
        Width = 179
        Height = 25
        Caption = '���ݿ����� ���� URL'
        TabOrder = 0
        OnClick = btnGetPopUpURLClick
      end
      object btnGetPrintURL: TButton
        Left = 9
        Top = 87
        Width = 179
        Height = 25
        Caption = '������ �μ� URL'
        TabOrder = 1
        OnClick = btnGetPrintURLClick
      end
      object btnGetEPrintURL: TButton
        Left = 9
        Top = 119
        Width = 179
        Height = 25
        Caption = '���޹޴��� �μ� URL'
        TabOrder = 2
        OnClick = btnGetEPrintURLClick
      end
      object btnGetMassPrintURL: TButton
        Left = 9
        Top = 150
        Width = 179
        Height = 25
        Caption = '���ݿ����� �뷮 �μ� URL'
        TabOrder = 3
        OnClick = btnGetMassPrintURLClick
      end
      object btnGetMailURL: TButton
        Left = 201
        Top = 53
        Width = 192
        Height = 25
        Caption = '���ݿ����� ���ϸ�ũ URL'
        TabOrder = 4
        OnClick = btnGetMailURLClick
      end
      object Button1: TButton
        Left = 200
        Top = 24
        Width = 193
        Height = 25
        Caption = '���ݿ����� PDF �ٿ�ε� URL'
        TabOrder = 5
        OnClick = Button1Click
      end
      object btnGetViewURL: TButton
        Left = 9
        Top = 56
        Width = 179
        Height = 25
        Caption = '���ݿ����� ���� URL (��ưx)'
        TabOrder = 6
        OnClick = btnGetViewURLClick
      end
    end
    object GroupBox11: TGroupBox
      Left = 912
      Top = 289
      Width = 129
      Height = 191
      Caption = '��Ÿ URL'
      TabOrder = 3
      object btnGetURL_TBOX: TButton
        Left = 9
        Top = 24
        Width = 110
        Height = 25
        Caption = '�ӽ� ������'
        TabOrder = 0
        OnClick = btnGetURL_TBOXClick
      end
      object btnGetURL_PBOX: TButton
        Left = 9
        Top = 55
        Width = 110
        Height = 25
        Caption = '���� ������'
        TabOrder = 1
        OnClick = btnGetURL_PBOXClick
      end
      object btnGetURL_WRITE: TButton
        Left = 9
        Top = 87
        Width = 110
        Height = 25
        Caption = '���� �ۼ�'
        TabOrder = 2
        OnClick = btnGetURL_WRITEClick
      end
    end
    object GroupBox14: TGroupBox
      Left = 120
      Top = 78
      Width = 217
      Height = 155
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
    object GroupBox16: TGroupBox
      Left = 663
      Top = 78
      Width = 168
      Height = 155
      Caption = '�ʴ뷮 ����'
      TabOrder = 5
      object Label6: TLabel
        Left = 13
        Top = 22
        Width = 121
        Height = 13
        Caption = '������̵�(SubmitID)  : '
      end
      object txtSubmitID: TEdit
        Left = 13
        Top = 39
        Width = 142
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object btnBulkSubmit: TButton
        Left = 12
        Top = 66
        Width = 142
        Height = 25
        Caption = '�ʴ뷮 ���� ����'
        TabOrder = 1
        OnClick = btnBulkSubmitClick
      end
      object Button2: TButton
        Left = 12
        Top = 97
        Width = 142
        Height = 25
        Caption = '�ʴ뷮 ������� Ȯ��'
        TabOrder = 2
        OnClick = btnGetBulkResultClick
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 389
    Top = 302
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
    Height = 176
    Caption = '�˺� �⺻ API'
    TabOrder = 6
    object GroupBox6: TGroupBox
      Left = 613
      Top = 19
      Width = 163
      Height = 125
      Caption = '�˺� �⺻ URL'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 784
      Top = 19
      Width = 145
      Height = 150
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
        Top = 88
        Width = 124
        Height = 25
        Caption = '����� ��� Ȯ��'
        TabOrder = 1
        OnClick = btnListContactClick
      end
      object btnUpdateContact: TButton
        Left = 11
        Top = 120
        Width = 124
        Height = 25
        Caption = '����� ���� ����'
        TabOrder = 2
        OnClick = btnUpdateContactClick
      end
      object btnGetContactInfo: TButton
        Left = 11
        Top = 56
        Width = 124
        Height = 25
        Caption = '����� ���� Ȯ��'
        TabOrder = 3
        OnClick = btnGetContactInfoClick
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
    Height = 125
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
      Width = 113
      Height = 25
      Caption = '���̵� �ߺ� Ȯ��'
      TabOrder = 0
      OnClick = btnCheckIDClick
    end
    object btnCheckIsMember: TButton
      Left = 8
      Top = 24
      Width = 113
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
    Width = 112
    Height = 25
    Caption = 'ȸ�� ����'
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetAccessURL: TButton
    Left = 645
    Top = 95
    Width = 141
    Height = 25
    Caption = '�˺� �α��� URL'
    TabOrder = 3
    OnClick = btnGetAccessURLClick
  end
  object txtMgtKey: TEdit
    Left = 268
    Top = 259
    Width = 149
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 7
  end
  object btnCheckMgtkeyInUse: TButton
    Left = 428
    Top = 258
    Width = 161
    Height = 25
    Caption = '������ȣ ��뿩�� Ȯ��'
    TabOrder = 8
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnCancelIssue: TButton
    Left = 412
    Top = 411
    Width = 77
    Height = 25
    Caption = '�������'
    TabOrder = 10
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 525
    Top = 411
    Width = 60
    Height = 25
    Caption = '����'
    TabOrder = 11
    OnClick = btnDeleteClick
  end
  object Panel1: TPanel
    Left = 400
    Top = 328
    Width = 249
    Height = 41
    Color = clActiveBorder
    TabOrder = 9
    object btnRevokeRegistIssue: TButton
      Left = 16
      Top = 7
      Width = 75
      Height = 25
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
    Left = 320
    Top = 68
    Width = 153
    Height = 149
    Caption = '�������� ����Ʈ'
    TabOrder = 14
    object btnGetBalance: TButton
      Left = 11
      Top = 23
      Width = 134
      Height = 25
      Caption = '�ܿ�����Ʈ Ȯ��'
      TabOrder = 0
      OnClick = btnGetBalanceClick
    end
    object btnGetChargeURL: TButton
      Left = 11
      Top = 55
      Width = 134
      Height = 25
      Caption = '����Ʈ ���� URL'
      TabOrder = 1
      OnClick = btnGetChargeURLClick
    end
    object btnGetPaymentURL: TButton
      Left = 11
      Top = 88
      Width = 134
      Height = 25
      Caption = '����Ʈ �������� URL'
      TabOrder = 2
      OnClick = btnGetPaymentURLClick
    end
    object btnGetUseHistoryURL: TButton
      Left = 11
      Top = 120
      Width = 134
      Height = 25
      Caption = '����Ʈ ��볻�� URL'
      TabOrder = 3
      OnClick = btnGetUseHistoryURLClick
    end
  end
  object GroupBox15: TGroupBox
    Left = 480
    Top = 68
    Width = 146
    Height = 125
    Caption = '��Ʈ�ʰ��� ����Ʈ'
    TabOrder = 15
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
      Height = 25
      Caption = '����Ʈ ���� URL'
      TabOrder = 1
      OnClick = btnGetPartnerURL_CHRGClick
    end
  end
  object txtURL: TEdit
    Left = 704
    Top = 16
    Width = 377
    Height = 21
    ImeName = '�ѱ��� �Է� �ý��� (IME 2000)'
    TabOrder = 16
  end
end
