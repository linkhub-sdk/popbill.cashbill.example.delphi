object frmExample: TfrmExample
  Left = 637
  Top = 176
  Width = 819
  Height = 792
  Caption = '팝빌 현금영수증 SDK '
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
    Caption = '팝빌회원 사업자번호 :'
  end
  object Label2: TLabel
    Left = 292
    Top = 22
    Width = 109
    Height = 13
    AutoSize = False
    Caption = '팝빌회원 아이디 :'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 248
    Width = 705
    Height = 481
    Caption = '현금영수증 관련 기능'
    TabOrder = 32
    object Label3: TLabel
      Left = 114
      Top = 22
      Width = 120
      Height = 13
      Caption = '문서관리번호(MgtKey) :'
    end
    object GroupBox8: TGroupBox
      Left = 36
      Top = 240
      Width = 132
      Height = 185
      Caption = '문서 정보'
      TabOrder = 0
      object btnSearch: TButton
        Left = 10
        Top = 149
        Width = 113
        Height = 25
        Caption = '문서 목록조회'
        TabOrder = 0
        OnClick = btnSearchClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 181
      Top = 239
      Width = 131
      Height = 156
      Caption = '부가 서비스'
      TabOrder = 1
    end
    object GroupBox10: TGroupBox
      Left = 324
      Top = 239
      Width = 209
      Height = 193
      Caption = 'URL 관련'
      TabOrder = 2
    end
    object GroupBox11: TGroupBox
      Left = 544
      Top = 239
      Width = 133
      Height = 130
      Caption = '기타 URL'
      TabOrder = 3
    end
    object GroupBox14: TGroupBox
      Left = 104
      Top = 56
      Width = 217
      Height = 153
      Caption = '즉시발행 프로세스 '
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
          Caption = '즉시발행'
          TabOrder = 0
          OnClick = btnRegistIssueClick
        end
      end
      object btnCancelIssue_ri: TButton
        Left = 24
        Top = 104
        Width = 75
        Height = 25
        Caption = '발행취소'
        TabOrder = 1
        OnClick = btnCancelIssue_riClick
      end
      object btnDelete_ri: TButton
        Left = 128
        Top = 104
        Width = 57
        Height = 25
        Caption = '삭제'
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
    Caption = '임시저장-발행 프로세스'
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
    Caption = '팝빌 기본 API'
    TabOrder = 7
    object GroupBox6: TGroupBox
      Left = 301
      Top = 16
      Width = 163
      Height = 157
      Caption = '팝빌 기본 URL'
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 480
      Top = 16
      Width = 145
      Height = 156
      Caption = '담당자 관련'
      TabOrder = 1
      object btnRegistContact: TButton
        Left = 11
        Top = 24
        Width = 124
        Height = 25
        Caption = '담당자 추가'
        TabOrder = 0
        OnClick = btnRegistContactClick
      end
      object btnListContact: TButton
        Left = 11
        Top = 56
        Width = 124
        Height = 25
        Caption = '담당자 목록 확인'
        TabOrder = 1
        OnClick = btnListContactClick
      end
      object btnUpdateContact: TButton
        Left = 11
        Top = 88
        Width = 124
        Height = 25
        Caption = '담당자 정보 수정'
        TabOrder = 2
        OnClick = btnUpdateContactClick
      end
    end
    object GroupBox13: TGroupBox
      Left = 632
      Top = 16
      Width = 121
      Height = 156
      Caption = '회사정보 관련'
      TabOrder = 2
      object btnGetCorpInfo: TButton
        Left = 12
        Top = 24
        Width = 100
        Height = 25
        Caption = '회사정보 조회'
        TabOrder = 0
        OnClick = btnGetCorpInfoClick
      end
      object btnUpdateCorpInfo: TButton
        Left = 12
        Top = 56
        Width = 100
        Height = 25
        Caption = '회사정보 수정'
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
    Caption = '포인트 관련'
    TabOrder = 6
    object btnGetBalance: TButton
      Left = 12
      Top = 55
      Width = 123
      Height = 25
      Caption = '잔여포인트 확인'
      TabOrder = 0
      OnClick = btnGetBalanceClick
    end
    object btnGetPartnerBalance: TButton
      Left = 12
      Top = 88
      Width = 123
      Height = 25
      Caption = '파트너포인트 확인'
      TabOrder = 1
      OnClick = btnGetPartnerBalanceClick
    end
    object btnGetUnitCost: TButton
      Left = 12
      Top = 120
      Width = 124
      Height = 25
      Caption = '발행 단가 확인'
      TabOrder = 2
      OnClick = btnGetUnitCostClick
    end
    object btnGetChargeInfo: TButton
      Left = 12
      Top = 22
      Width = 125
      Height = 25
      Caption = '과금정보 확인'
      TabOrder = 3
      OnClick = btnGetChargeInfoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 154
    Caption = '회원정보'
    TabOrder = 5
    object btnCheckID: TButton
      Left = 8
      Top = 56
      Width = 105
      Height = 25
      Caption = 'ID 중복 확인'
      TabOrder = 0
      OnClick = btnCheckIDClick
    end
    object btnCheckIsMember: TButton
      Left = 8
      Top = 24
      Width = 105
      Height = 25
      Caption = '가입여부 확인'
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
    Caption = '회원 가입'
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetPopbillURL_LOGIN: TButton
    Left = 333
    Top = 87
    Width = 141
    Height = 25
    Caption = '팝빌 로그인 URL'
    TabOrder = 3
    OnClick = btnGetPopbillURL_LOGINClick
  end
  object btnGetPopbillURL_CHRG: TButton
    Left = 333
    Top = 119
    Width = 141
    Height = 25
    Caption = '포인트 충전 팝업 URL'
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
    Caption = '관리번호 사용여부 확인'
    TabOrder = 9
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnGetInfo: TButton
    Left = 70
    Top = 509
    Width = 113
    Height = 25
    Caption = '문서 정보'
    TabOrder = 17
    OnClick = btnGetInfoClick
  end
  object btnGetInfos: TButton
    Left = 70
    Top = 541
    Width = 113
    Height = 25
    Caption = '문서 정보(대량)'
    TabOrder = 18
    OnClick = btnGetInfosClick
  end
  object btnGetLogs: TButton
    Left = 70
    Top = 573
    Width = 113
    Height = 25
    Caption = '문서 이력'
    TabOrder = 19
    OnClick = btnGetLogsClick
  end
  object btnGetDetailInfo: TButton
    Left = 70
    Top = 605
    Width = 113
    Height = 25
    Caption = '문서 상세 정보'
    TabOrder = 20
    OnClick = btnGetDetailInfoClick
  end
  object btnSendEmail: TButton
    Left = 214
    Top = 510
    Width = 113
    Height = 25
    Caption = '이메일 전송'
    TabOrder = 21
    OnClick = btnSendEmailClick
  end
  object btnSendSMS: TButton
    Left = 214
    Top = 542
    Width = 113
    Height = 25
    Caption = '문자 전송'
    TabOrder = 22
    OnClick = btnSendSMSClick
  end
  object btnSendFAX: TButton
    Left = 214
    Top = 574
    Width = 113
    Height = 25
    Caption = '팩스 전송'
    TabOrder = 23
    OnClick = btnSendFAXClick
  end
  object btnGetPopUpURL: TButton
    Left = 359
    Top = 512
    Width = 187
    Height = 25
    Caption = '문서 내용보기 팝업 URL'
    TabOrder = 24
    OnClick = btnGetPopUpURLClick
  end
  object btnGetPrintURL: TButton
    Left = 359
    Top = 544
    Width = 187
    Height = 25
    Caption = '인쇄 팝업 URL'
    TabOrder = 25
    OnClick = btnGetPrintURLClick
  end
  object btnGetEPrintURL: TButton
    Left = 359
    Top = 576
    Width = 187
    Height = 25
    Caption = '공급받는자 인쇄 팝업 URL'
    TabOrder = 26
    OnClick = btnGetEPrintURLClick
  end
  object btnGetMassPrintURL: TButton
    Left = 359
    Top = 608
    Width = 187
    Height = 25
    Caption = '다량 인쇄 팝업 URL'
    TabOrder = 27
    OnClick = btnGetMassPrintURLClick
  end
  object btnGetMailURL: TButton
    Left = 359
    Top = 640
    Width = 187
    Height = 25
    Caption = '이메일(공급받는자) 링크 URL'
    TabOrder = 28
    OnClick = btnGetMailURLClick
  end
  object btnGetURL_WRITE: TButton
    Left = 575
    Top = 576
    Width = 117
    Height = 25
    Caption = '매출 작성'
    TabOrder = 29
    OnClick = btnGetURL_WRITEClick
  end
  object btnGetURL_TBOX: TButton
    Left = 575
    Top = 512
    Width = 117
    Height = 25
    Caption = '임시 문서함'
    TabOrder = 30
    OnClick = btnGetURL_TBOXClick
  end
  object btnGetURL_PBOX: TButton
    Left = 575
    Top = 544
    Width = 117
    Height = 25
    Caption = '발행 문서함'
    TabOrder = 31
    OnClick = btnGetURL_PBOXClick
  end
  object btnCancelIssue: TButton
    Left = 452
    Top = 419
    Width = 69
    Height = 25
    Caption = '발행취소'
    TabOrder = 14
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 549
    Top = 419
    Width = 60
    Height = 27
    Caption = '삭제'
    TabOrder = 15
    OnClick = btnDeleteClick
  end
  object btnIssue: TButton
    Left = 452
    Top = 379
    Width = 69
    Height = 25
    Caption = '발행'
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
      Caption = '임시저장'
    end
  end
  object btnRegister: TButton
    Left = 482
    Top = 331
    Width = 55
    Height = 26
    Caption = '등록'
    TabOrder = 10
    OnClick = btnRegisterClick
  end
  object btnUpdate: TButton
    Left = 545
    Top = 331
    Width = 55
    Height = 26
    Caption = '수정'
    TabOrder = 11
    OnClick = btnUpdateClick
  end
end
