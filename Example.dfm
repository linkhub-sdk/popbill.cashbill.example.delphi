object frmExample: TfrmExample
  Left = 693
  Top = 198
  Width = 725
  Height = 681
  Caption = '팝빌 현금영수증 SDK '
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
    Caption = '사업자번호 :'
  end
  object Label2: TLabel
    Left = 244
    Top = 22
    Width = 66
    Height = 13
    Caption = '팝빌아이디 :'
  end
  object GroupBox7: TGroupBox
    Left = 24
    Top = 184
    Width = 659
    Height = 433
    Caption = '현금영수증 관련 기능'
    TabOrder = 36
    object Label3: TLabel
      Left = 112
      Top = 30
      Width = 120
      Height = 13
      Caption = '문서관리번호(MgtKey) :'
    end
    object GroupBox8: TGroupBox
      Left = 12
      Top = 224
      Width = 132
      Height = 155
      Caption = '문서 정보'
      TabOrder = 0
    end
    object GroupBox9: TGroupBox
      Left = 157
      Top = 223
      Width = 131
      Height = 156
      Caption = '부가 서비스'
      TabOrder = 1
    end
    object GroupBox10: TGroupBox
      Left = 300
      Top = 223
      Width = 209
      Height = 193
      Caption = 'URL 관련'
      TabOrder = 2
    end
    object GroupBox11: TGroupBox
      Left = 520
      Top = 223
      Width = 128
      Height = 130
      Caption = '기타 URL'
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox
    Left = 205
    Top = 238
    Width = 257
    Height = 158
    Caption = '현금영수증 처리 프로세스'
    TabOrder = 20
  end
  object GroupBox4: TGroupBox
    Left = 23
    Top = 49
    Width = 658
    Height = 125
    Caption = '팝빌 기본 API'
    TabOrder = 11
    object GroupBox6: TGroupBox
      Left = 485
      Top = 16
      Width = 163
      Height = 97
      Caption = '기타'
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 323
    Top = 66
    Width = 179
    Height = 95
    Caption = '파트너 관련'
    TabOrder = 10
  end
  object GroupBox2: TGroupBox
    Left = 170
    Top = 67
    Width = 145
    Height = 93
    Caption = '포인트 관련'
    TabOrder = 9
  end
  object GroupBox1: TGroupBox
    Left = 33
    Top = 67
    Width = 127
    Height = 91
    Caption = '회원정보'
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
    Caption = '회원 가입'
    TabOrder = 2
    OnClick = btnJoinMemberClick
  end
  object btnGetPopbillURL_LOGIN: TButton
    Left = 517
    Top = 87
    Width = 141
    Height = 25
    Caption = '팝빌 로그인 URL'
    TabOrder = 3
    OnClick = btnGetPopbillURL_LOGINClick
  end
  object btnGetBalance: TButton
    Left = 43
    Top = 122
    Width = 107
    Height = 25
    Caption = '잔여포인트 확인'
    TabOrder = 4
    OnClick = btnGetBalanceClick
  end
  object btnUnitCost: TButton
    Left = 183
    Top = 93
    Width = 121
    Height = 25
    Caption = '발행 단가 확인'
    TabOrder = 5
    OnClick = btnUnitCostClick
  end
  object btnGetPopbillURL_CHRG: TButton
    Left = 517
    Top = 119
    Width = 141
    Height = 25
    Caption = '포인트 충전 팝업 URL'
    TabOrder = 6
    OnClick = btnGetPopbillURL_CHRGClick
  end
  object btnGetPartnerBalance: TButton
    Left = 331
    Top = 88
    Width = 158
    Height = 25
    Caption = '파트너 잔여포인트 확인'
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
    Caption = '관리번호 사용여부 확인'
    TabOrder = 13
    OnClick = btnCheckMgtkeyInUseClick
  end
  object btnGetInfo: TButton
    Left = 46
    Top = 429
    Width = 113
    Height = 25
    Caption = '문서 정보'
    TabOrder = 21
    OnClick = btnGetInfoClick
  end
  object btnGetInfos: TButton
    Left = 46
    Top = 461
    Width = 113
    Height = 25
    Caption = '문서 정보(대량)'
    TabOrder = 22
    OnClick = btnGetInfosClick
  end
  object btnGetLogs: TButton
    Left = 46
    Top = 493
    Width = 113
    Height = 25
    Caption = '문서 이력'
    TabOrder = 23
    OnClick = btnGetLogsClick
  end
  object btnGetDetailInfo: TButton
    Left = 46
    Top = 525
    Width = 113
    Height = 25
    Caption = '문서 상세 정보'
    TabOrder = 24
    OnClick = btnGetDetailInfoClick
  end
  object btnSendEmail: TButton
    Left = 190
    Top = 430
    Width = 113
    Height = 25
    Caption = '이메일 전송'
    TabOrder = 25
    OnClick = btnSendEmailClick
  end
  object btnSendSMS: TButton
    Left = 190
    Top = 462
    Width = 113
    Height = 25
    Caption = '문자 전송'
    TabOrder = 26
    OnClick = btnSendSMSClick
  end
  object btnSendFAX: TButton
    Left = 190
    Top = 494
    Width = 113
    Height = 25
    Caption = '팩스 전송'
    TabOrder = 27
    OnClick = btnSendFAXClick
  end
  object btnGetPopUpURL: TButton
    Left = 335
    Top = 432
    Width = 187
    Height = 25
    Caption = '문서 내용보기 팝업 URL'
    TabOrder = 28
    OnClick = btnGetPopUpURLClick
  end
  object btnGetPrintURL: TButton
    Left = 335
    Top = 464
    Width = 187
    Height = 25
    Caption = '인쇄 팝업 URL'
    TabOrder = 29
    OnClick = btnGetPrintURLClick
  end
  object btnGetEPrintURL: TButton
    Left = 335
    Top = 496
    Width = 187
    Height = 25
    Caption = '공급받는자 인쇄 팝업 URL'
    TabOrder = 30
    OnClick = btnGetEPrintURLClick
  end
  object btnGetMassPrintURL: TButton
    Left = 335
    Top = 528
    Width = 187
    Height = 25
    Caption = '다량 인쇄 팝업 URL'
    TabOrder = 31
    OnClick = btnGetMassPrintURLClick
  end
  object btnGetMailURL: TButton
    Left = 335
    Top = 560
    Width = 187
    Height = 25
    Caption = '이메일(공급받는자) 링크 URL'
    TabOrder = 32
    OnClick = btnGetMailURLClick
  end
  object btnGetURL_WRITE: TButton
    Left = 551
    Top = 496
    Width = 113
    Height = 25
    Caption = '매출 작성'
    TabOrder = 33
    OnClick = btnGetURL_WRITEClick
  end
  object btnGetURL_TBOX: TButton
    Left = 551
    Top = 432
    Width = 113
    Height = 25
    Caption = '임시 문서함'
    TabOrder = 34
    OnClick = btnGetURL_TBOXClick
  end
  object btnGetURL_PBOX: TButton
    Left = 551
    Top = 464
    Width = 113
    Height = 25
    Caption = '발행 문서함'
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
    Caption = '발행취소'
    TabOrder = 18
    OnClick = btnCancelIssueClick
  end
  object btnDelete: TButton
    Left = 373
    Top = 355
    Width = 60
    Height = 27
    Caption = '삭제'
    TabOrder = 19
    OnClick = btnDeleteClick
  end
  object btnIssue: TButton
    Left = 276
    Top = 315
    Width = 69
    Height = 25
    Caption = '발행'
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
      Caption = '임시저장'
    end
  end
  object btnRegister: TButton
    Left = 306
    Top = 267
    Width = 55
    Height = 26
    Caption = '등록'
    TabOrder = 14
    OnClick = btnRegisterClick
  end
  object btnUpdate: TButton
    Left = 369
    Top = 267
    Width = 55
    Height = 26
    Caption = '수정'
    TabOrder = 15
    OnClick = btnUpdateClick
  end
end
