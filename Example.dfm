object frmExample: TfrmExample
  Left = 206
  Top = 192
  Caption = #54045#48716' '#54788#44552#50689#49688#51613' API SDK Delphi Example'
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
    Caption = #54045#48716#54924#50896' '#49324#50629#51088#48264#54840' :'
  end
  object Label2: TLabel
    Left = 292
    Top = 22
    Width = 109
    Height = 13
    AutoSize = False
    Caption = #54045#48716#54924#50896' '#50500#51060#46356' :'
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
    Top = 232
    Width = 1073
    Height = 496
    Caption = #54788#44552#50689#49688#51613' '#44288#47144' '#44592#45733
    TabOrder = 12
    object Label3: TLabel
      Left = 10
      Top = 30
      Width = 92
      Height = 13
      Caption = #47928#49436#48264#54840'(MgtKey) :'
    end
    object Label4: TLabel
      Left = 16
      Top = 240
      Width = 321
      Height = 13
      AutoSize = False
      Caption = #44397#49464#52397' '#51204#49569#51060' '#50756#47308#46108' '#54788#44552#50689#49688#51613#51012' '#52712#49548#54616#44592' '#50948#54644#49436#45716
    end
    object Label5: TLabel
      Left = 16
      Top = 256
      Width = 353
      Height = 13
      AutoSize = False
      Caption = #50896#48376' '#54788#44552#50689#49688#51613#50640' '#45824#54620' '#39#52712#49548#54788#44552#50689#49688#51613#39#51012' '#48156#54665#54644#50556' '#54633#45768#45796'.'
    end
    object GroupBox8: TGroupBox
      Left = 12
      Top = 289
      Width = 154
      Height = 191
      Caption = #47928#49436' '#51221#48372
      TabOrder = 0
      object btnSearch: TButton
        Left = 9
        Top = 117
        Width = 137
        Height = 25
        Caption = #47785#47197' '#51312#54924
        TabOrder = 0
        OnClick = btnSearchClick
      end
      object btnGetInfo: TButton
        Left = 9
        Top = 24
        Width = 137
        Height = 25
        Caption = #49345#53468' '#54869#51064
        TabOrder = 1
        OnClick = btnGetInfoClick
      end
      object btnGetInfos: TButton
        Left = 9
        Top = 55
        Width = 137
        Height = 25
        Caption = #49345#53468' '#45824#47049' '#54869#51064
        TabOrder = 2
        OnClick = btnGetInfosClick
      end
      object btnGetDetailInfo: TButton
        Left = 9
        Top = 86
        Width = 137
        Height = 25
        Caption = #49345#49464#51221#48372' '#54869#51064
        TabOrder = 3
        OnClick = btnGetDetailInfoClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 173
      Top = 289
      Width = 324
      Height = 191
      Caption = #48512#44032' '#44592#45733
      TabOrder = 1
      object btnSendEmail: TButton
        Left = 9
        Top = 24
        Width = 152
        Height = 25
        Caption = #51060#47700#51068' '#51204#49569
        TabOrder = 0
        OnClick = btnSendEmailClick
      end
      object btnSendSMS: TButton
        Left = 9
        Top = 55
        Width = 152
        Height = 25
        Caption = #47928#51088' '#51204#49569
        TabOrder = 1
        OnClick = btnSendSMSClick
      end
      object btnSendFAX: TButton
        Left = 9
        Top = 87
        Width = 152
        Height = 25
        Caption = #54057#49828' '#51204#49569
        TabOrder = 2
        OnClick = btnSendFAXClick
      end
      object btnListEmailConfig: TButton
        Left = 9
        Top = 118
        Width = 152
        Height = 25
        Caption = #50508#47548#47700#51068' '#51204#49569#47785#47197' '#51312#54924
        TabOrder = 3
        OnClick = btnListEmailConfigClick
      end
      object btnUpdateEmailConfig: TButton
        Left = 9
        Top = 149
        Width = 152
        Height = 25
        Caption = #50508#47548#47700#51068' '#51204#49569#49444#51221' '#49688#51221
        TabOrder = 4
        OnClick = btnUpdateEmailConfigClick
      end
      object btnAssignMgtKey: TButton
        Left = 168
        Top = 24
        Width = 145
        Height = 25
        Caption = #47928#49436#48264#54840' '#54624#45817
        TabOrder = 5
        OnClick = btnAssignMgtKeyClick
      end
    end
    object GroupBox10: TGroupBox
      Left = 503
      Top = 289
      Width = 402
      Height = 191
      Caption = 'URL '#44288#47144
      TabOrder = 2
      object btnGetPopUpURL: TButton
        Left = 9
        Top = 24
        Width = 179
        Height = 25
        Caption = #54788#44552#50689#49688#51613' '#48372#44592' URL'
        TabOrder = 0
        OnClick = btnGetPopUpURLClick
      end
      object btnGetPrintURL: TButton
        Left = 9
        Top = 87
        Width = 179
        Height = 25
        Caption = #44277#44553#51088' '#51064#49604' URL'
        TabOrder = 1
        OnClick = btnGetPrintURLClick
      end
      object btnGetEPrintURL: TButton
        Left = 9
        Top = 119
        Width = 179
        Height = 25
        Caption = #44277#44553#48155#45716#51088' '#51064#49604' URL'
        TabOrder = 2
        OnClick = btnGetEPrintURLClick
      end
      object btnGetMassPrintURL: TButton
        Left = 9
        Top = 150
        Width = 179
        Height = 25
        Caption = #54788#44552#50689#49688#51613' '#45824#47049' '#51064#49604' URL'
        TabOrder = 3
        OnClick = btnGetMassPrintURLClick
      end
      object btnGetMailURL: TButton
        Left = 201
        Top = 53
        Width = 192
        Height = 25
        Caption = #54788#44552#50689#49688#51613' '#47700#51068#47553#53356' URL'
        TabOrder = 4
        OnClick = btnGetMailURLClick
      end
      object Button1: TButton
        Left = 200
        Top = 24
        Width = 193
        Height = 25
        Caption = #54788#44552#50689#49688#51613' PDF '#45796#50868#47196#46300' URL'
        TabOrder = 5
        OnClick = Button1Click
      end
      object btnGetViewURL: TButton
        Left = 9
        Top = 56
        Width = 179
        Height = 25
        Caption = #54788#44552#50689#49688#51613' '#48372#44592' URL ('#48260#53948'x)'
        TabOrder = 6
        OnClick = btnGetViewURLClick
      end
    end
    object GroupBox11: TGroupBox
      Left = 912
      Top = 289
      Width = 129
      Height = 191
      Caption = #44592#53440' URL'
      TabOrder = 3
      object btnGetURL_TBOX: TButton
        Left = 9
        Top = 24
        Width = 110
        Height = 25
        Caption = #51076#49884' '#47928#49436#54632
        TabOrder = 0
        OnClick = btnGetURL_TBOXClick
      end
      object btnGetURL_PBOX: TButton
        Left = 9
        Top = 55
        Width = 110
        Height = 25
        Caption = #48156#54665' '#47928#49436#54632
        TabOrder = 1
        OnClick = btnGetURL_PBOXClick
      end
      object btnGetURL_WRITE: TButton
        Left = 9
        Top = 87
        Width = 110
        Height = 25
        Caption = #47588#52636' '#51089#49457
        TabOrder = 2
        OnClick = btnGetURL_WRITEClick
      end
    end
    object GroupBox14: TGroupBox
      Left = 16
      Top = 70
      Width = 217
      Height = 155
      Caption = #51593#49884#48156#54665' '#54532#47196#49464#49828' '
      TabOrder = 4
      object Shape1: TShape
        Left = 63
        Top = 55
        Width = 1
        Height = 57
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
          Caption = #51593#49884#48156#54665
          TabOrder = 0
          OnClick = btnRegistIssueClick
        end
      end
      object btnDelete_ri: TButton
        Left = 35
        Top = 104
        Width = 57
        Height = 25
        Caption = #49325#51228
        TabOrder = 1
        OnClick = btnDelete_riClick
      end
    end
    object GroupBox16: TGroupBox
      Left = 543
      Top = 70
      Width = 168
      Height = 155
      Caption = #52488#45824#47049' '#48156#54665
      TabOrder = 5
      object Label6: TLabel
        Left = 13
        Top = 22
        Width = 116
        Height = 13
        Caption = #51228#52636#50500#51060#46356'(SubmitID)  : '
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
        Caption = #52488#45824#47049' '#48156#54665' '#51217#49688
        TabOrder = 1
        OnClick = btnBulkSubmitClick
      end
      object Button2: TButton
        Left = 12
        Top = 97
        Width = 142
        Height = 25
        Caption = #52488#45824#47049' '#51217#49688#44208#44284' '#54869#51064
        TabOrder = 2
        OnClick = btnGetBulkResultClick
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 269
    Top = 302
    Width = 273
    Height = 155
    Caption = #52712#49548#54788#44552#50689#49688#51613' '#51593#49884#48156#54665' '#54532#47196#49464#49828
    Color = clBtnFace
    ParentColor = False
    TabOrder = 11
    object Shape2: TShape
      Left = 64
      Top = 55
      Width = 1
      Height = 74
    end
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 49
    Width = 1074
    Height = 176
    Caption = #54045#48716' '#44592#48376' API'
    TabOrder = 6
    object GroupBox6: TGroupBox
      Left = 613
      Top = 19
      Width = 163
      Height = 125
      Caption = #54045#48716' '#44592#48376' URL'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 784
      Top = 19
      Width = 145
      Height = 150
      Caption = #45812#45817#51088' '#44288#47144
      TabOrder = 1
      object btnRegistContact: TButton
        Left = 11
        Top = 24
        Width = 124
        Height = 25
        Caption = #45812#45817#51088' '#52628#44032
        TabOrder = 0
        OnClick = btnRegistContactClick
      end
      object btnListContact: TButton
        Left = 11
        Top = 88
        Width = 124
        Height = 25
        Caption = #45812#45817#51088' '#47785#47197' '#54869#51064
        TabOrder = 1
        OnClick = btnListContactClick
      end
      object btnUpdateContact: TButton
        Left = 11
        Top = 120
        Width = 124
        Height = 25
        Caption = #45812#45817#51088' '#51221#48372' '#49688#51221
        TabOrder = 2
        OnClick = btnUpdateContactClick
      end
      object btnGetContactInfo: TButton
        Left = 11
        Top = 56
        Width = 124
        Height = 25
        Caption = #45812#45817#51088' '#51221#48372' '#54869#51064
        TabOrder = 3
        OnClick = btnGetContactInfoClick
      end
    end
    object GroupBox13: TGroupBox
      Left = 936
      Top = 19
      Width = 121
      Height = 125
      Caption = #54924#49324#51221#48372' '#44288#47144
      TabOrder = 2
      object btnGetCorpInfo: TButton
        Left = 12
        Top = 24
        Width = 100
        Height = 25
        Caption = #54924#49324#51221#48372' '#51312#54924
        TabOrder = 0
        OnClick = btnGetCorpInfoClick
      end
      object btnUpdateCorpInfo: TButton
        Left = 12
        Top = 56
        Width = 100
        Height = 25
        Caption = #54924#49324#51221#48372' '#49688#51221
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
    Caption = #54252#51064#53944' '#44288#47144
    TabOrder = 5
    object btnGetUnitCost: TButton
      Left = 12
      Top = 56
      Width = 124
      Height = 25
      Caption = #48156#54665' '#45800#44032' '#54869#51064
      TabOrder = 0
      OnClick = btnGetUnitCostClick
    end
    object btnGetChargeInfo: TButton
      Left = 12
      Top = 22
      Width = 125
      Height = 25
      Caption = #44284#44552#51221#48372' '#54869#51064
      TabOrder = 1
      OnClick = btnGetChargeInfoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 125
    Caption = #54924#50896#51221#48372
    TabOrder = 4
    object btnCheckID: TButton
      Left = 8
      Top = 56
      Width = 113
      Height = 25
      Caption = #50500#51060#46356' '#51473#48373' '#54869#51064
      TabOrder = 0
      OnClick = btnCheckIDClick
    end
    object btnCheckIsMember: TButton
      Left = 8
      Top = 24
      Width = 113
      Height = 25
      Caption = #44032#51077#50668#48512' '#54869#51064
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
    Caption = #54924#50896' '#44032#51077
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetAccessURL: TButton
    Left = 645
    Top = 95
    Width = 141
    Height = 25
    Caption = #54045#48716' '#47196#44536#51064' URL'
    TabOrder = 3
    OnClick = btnGetAccessURLClick
  end
  object txtMgtKey: TEdit
    Left = 136
    Top = 259
    Width = 149
    Height = 21
    ImeName = 'Microsoft IME 2010'
    TabOrder = 7
  end
  object btnCheckMgtkeyInUse: TButton
    Left = 300
    Top = 256
    Width = 161
    Height = 25
    Caption = #47928#49436#48264#54840' '#49324#50857#50668#48512' '#54869#51064
    TabOrder = 8
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnDelete: TButton
    Left = 303
    Top = 411
    Width = 60
    Height = 25
    Caption = #49325#51228
    TabOrder = 10
    OnClick = btnDeleteClick
  end
  object Panel1: TPanel
    Left = 280
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
      Caption = #51593#49884#48156#54665
      TabOrder = 0
      OnClick = btnRevokeRegistIssueClick
    end
    object btnRevokeRegistIssue_part: TButton
      Left = 112
      Top = 8
      Width = 123
      Height = 25
      Caption = #48512#48516#52712#49548' '#51593#49884#48156#54665
      TabOrder = 1
      OnClick = btnRevokeRegistIssue_partClick
    end
  end
  object GroupBox12: TGroupBox
    Left = 320
    Top = 68
    Width = 153
    Height = 149
    Caption = #50672#46041#44284#44552' '#54252#51064#53944
    TabOrder = 13
    object btnGetBalance: TButton
      Left = 11
      Top = 23
      Width = 134
      Height = 25
      Caption = #51092#50668#54252#51064#53944' '#54869#51064
      TabOrder = 0
      OnClick = btnGetBalanceClick
    end
    object btnGetChargeURL: TButton
      Left = 11
      Top = 55
      Width = 134
      Height = 25
      Caption = #54252#51064#53944' '#52649#51204' URL'
      TabOrder = 1
      OnClick = btnGetChargeURLClick
    end
    object btnGetPaymentURL: TButton
      Left = 11
      Top = 88
      Width = 134
      Height = 25
      Caption = #54252#51064#53944' '#44208#51228#45236#50669' URL'
      TabOrder = 2
      OnClick = btnGetPaymentURLClick
    end
    object btnGetUseHistoryURL: TButton
      Left = 11
      Top = 120
      Width = 134
      Height = 25
      Caption = #54252#51064#53944' '#49324#50857#45236#50669' URL'
      TabOrder = 3
      OnClick = btnGetUseHistoryURLClick
    end
  end
  object GroupBox15: TGroupBox
    Left = 480
    Top = 68
    Width = 146
    Height = 125
    Caption = #54028#53944#45320#44284#44552' '#54252#51064#53944
    TabOrder = 14
    object btnGetPartnerBalance: TButton
      Left = 9
      Top = 24
      Width = 128
      Height = 25
      Caption = #54028#53944#45320#54252#51064#53944' '#54869#51064
      TabOrder = 0
      OnClick = btnGetPartnerBalanceClick
    end
    object btnGetPartnerURL_CHRG: TButton
      Left = 9
      Top = 56
      Width = 129
      Height = 25
      Caption = #54252#51064#53944' '#52649#51204' URL'
      TabOrder = 1
      OnClick = btnGetPartnerURL_CHRGClick
    end
  end
  object txtURL: TEdit
    Left = 704
    Top = 16
    Width = 377
    Height = 21
    ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
    TabOrder = 15
  end
end
