{******************************************************************************}
{ 팝빌 현금영수증 API Delphi SDK Example                                       }
{                                                                              }
{ - 델파이 SDK 적용방법 안내 : http://blog.linkhub.co.kr/572                   }
{ - 업데이트 일자 : 2018-09-26                                                 }
{ - 연동 기술지원 연락처 : 1600-9854 / 070-4304-2991                           }
{ - 연동 기술지원 이메일 : code@linkhub.co.kr                                  }
{                                                                              }
{ <테스트 연동개발 준비사항>                                                   }
{ (1) 32, 35번 라인에 선언된 링크아이디(LinkID)와 비밀키(SecretKey)를          }
{    링크허브 가입시 메일로 발급받은 인증정보로 수정                           }
{ (2) 팝빌 개발용 사이트(test.popbill.com)에 연동회원으로 가입                 }
{                                                                              }
{******************************************************************************}

unit Example;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TypInfo, Popbill, PopbillCashbill, ExtCtrls;

const
        {**********************************************************************}
        { - 인증정보(링크아이디, 비밀키)는 파트너의 연동회원을 식별하는        }
        {   인증에 사용되므로 유출되지 않도록 주의하시기 바랍니다              }
        { - 상업용 전환이후에도 인증정보는 변경되지 않습니다.                  }
        {**********************************************************************}
        
        //링크아이디
        LinkID = 'TESTER';

        //파트너 통신용 비밀키
        SecretKey = 'SwWxqU+0TErBXy/9TVjIPEnI0VTUMMSQZtJf3Ed8q3I=';
type
  TfrmExample = class(TForm)
    txtCorpNum: TEdit;
    txtUserID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnJoinMember: TButton;
    btnGetPopbillURL_LOGIN: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    txtMgtKey: TEdit;
    btnCheckMgtkeyInUse: TButton;
    Panel1: TPanel;
    btnCancelIssue: TButton;
    btnDelete: TButton;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label3: TLabel;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    btnCheckID: TButton;
    btnCheckIsMember: TButton;
    GroupBox3: TGroupBox;
    btnRegistContact: TButton;
    btnListContact: TButton;
    btnUpdateContact: TButton;
    GroupBox13: TGroupBox;
    btnGetCorpInfo: TButton;
    btnUpdateCorpInfo: TButton;
    GroupBox14: TGroupBox;
    Panel2: TPanel;
    btnRegistIssue: TButton;
    btnCancelIssue_ri: TButton;
    btnDelete_ri: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    btnGetUnitCost: TButton;
    btnSearch: TButton;
    btnGetChargeInfo: TButton;
    Label4: TLabel;
    Label5: TLabel;
    btnRevokeRegistIssue: TButton;
    GroupBox12: TGroupBox;
    GroupBox15: TGroupBox;
    btnGetBalance: TButton;
    btnGetPopbillURL_CHRG: TButton;
    btnGetPartnerBalance: TButton;
    btnGetPartnerURL_CHRG: TButton;
    btnRevokeRegistIssue_part: TButton;
    btnGetURL_TBOX: TButton;
    btnGetURL_PBOX: TButton;
    btnGetURL_WRITE: TButton;
    btnGetPopUpURL: TButton;
    btnGetPrintURL: TButton;
    btnGetEPrintURL: TButton;
    btnGetMassPrintURL: TButton;
    btnGetMailURL: TButton;
    btnSendEmail: TButton;
    btnSendSMS: TButton;
    btnSendFAX: TButton;
    btnGetInfo: TButton;
    btnGetInfos: TButton;
    btnGetLogs: TButton;
    btnGetDetailInfo: TButton;
    btnListEmailConfig: TButton;
    btnUpdateEmailConfig: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender:TObject; var Action:TCloseAction);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnJoinMemberClick(Sender: TObject);
    procedure btnGetPopbillURL_LOGINClick(Sender: TObject);
    procedure btnGetBalanceClick(Sender: TObject);
    procedure btnUnitCostClick(Sender: TObject);
    procedure btnGetPopbillURL_CHRGClick(Sender: TObject);
    procedure btnGetPartnerBalanceClick(Sender: TObject);
    procedure btnCheckMgtkeyInUseClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnIssueClick(Sender: TObject);
    procedure btnCancelIssueClick(Sender: TObject);
    procedure btnGetInfoClick(Sender: TObject);
    procedure btnGetURL_TBOXClick(Sender: TObject);
    procedure btnGetURL_PBOXClick(Sender: TObject);
    procedure btnGetURL_WRITEClick(Sender: TObject);
    procedure btnGetPopUpURLClick(Sender: TObject);
    procedure btnGetPrintURLClick(Sender: TObject);
    procedure btnGetEPrintURLClick(Sender: TObject);
    procedure btnGetMassPrintURLClick(Sender: TObject);
    procedure btnGetMailURLClick(Sender: TObject);
    procedure btnSendFAXClick(Sender: TObject);
    procedure btnSendSMSClick(Sender: TObject);
    procedure btnSendEmailClick(Sender: TObject);
    procedure btnGetDetailInfoClick(Sender: TObject);
    procedure btnGetLogsClick(Sender: TObject);
    procedure btnGetInfosClick(Sender: TObject);
    procedure btnCheckIDClick(Sender: TObject);
    procedure btnRegistContactClick(Sender: TObject);
    procedure btnUpdateContactClick(Sender: TObject);
    procedure btnCancelIssue_riClick(Sender: TObject);
    procedure btnDelete_riClick(Sender: TObject);
    procedure btnRegistIssueClick(Sender: TObject);
    procedure btnGetCorpInfoClick(Sender: TObject);
    procedure btnUpdateCorpInfoClick(Sender: TObject);
    procedure btnListContactClick(Sender: TObject);
    procedure btnCheckIsMemberClick(Sender: TObject);
    procedure btnGetUnitCostClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnGetChargeInfoClick(Sender: TObject);
    procedure btnRevokeRegistIssueClick(Sender: TObject);
    procedure btnGetPartnerURL_CHRGClick(Sender: TObject);
    procedure btnRevokeRegistIssue_partClick(Sender: TObject);
    procedure btnListEmailConfigClick(Sender: TObject);
    procedure btnUpdateEmailConfigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExample: TfrmExample;
  cashbillService : TCashbillService;
implementation

{$R *.DFM}
procedure TfrmExample.FormCreate(Sender: TObject);
begin
        cashbillService := TCashbillService.Create(LinkID,SecretKey);
        
        //연동환경 설정값, true(개발용), false(상업용)
        cashbillService.IsTest := true;

        //Exception 처리 설정값 true(기본값)
        cashbillService.IsThrowException := true;
end;

procedure TfrmExample.FormClose(Sender: TObject; var Action:TCloseAction);
begin
        cashbillService.Free;
        Action := caFree;
end;

Function BoolToStr(b:Boolean):String;
begin 
    if b = true then BoolToStr:='True'; 
    if b = false then BoolToStr:='False'; 
end;

procedure TfrmExample.btnGetPopbillURL_LOGINClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        {    팝빌(www.popbill.com)에 로그인된 팝업 URL을 반환합니다.           }
        {    URL 보안정책에 따라 반환된 URL은 30초의 유효시간을 갖습니다.      }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, 'LOGIN');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;


procedure TfrmExample.btnDeleteClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1건의 현금영수증을 삭제합니다                                        }
        { - 현금영수증이 삭제된 경우에만 문서관리번호(mgtKey)를 재사용 할 수   }
        {   있습니다.                                                          }
        { - 삭제가능한 문서 상태 : [임시저장], [발행취소]                      }
        {**********************************************************************}

        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnRegisterClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { 현금영수증 1건을 [임시저장] 합니다.                                  }
        { - 현금영수증 임시저장(Register API) 호출후에는 발행(Issue API)을     }
        {   호출해야만 국세청에 전송됩니다.                                    }
        { - 임시저장과 발행을 한번의 호출로 처리하는 즉시발행(RegistIssue API) }
        {   프로세스를 권장합니다.                                             }
        { - 발행일 기준 오후 5시 이전에 발행된 현금영수증은 익일 오후 2시에    }
        {   국세청 전송결과를 확인할 수 있습니다.                              }
        { - 국세청 전송 정책에 대한 사항은  "[현금영수증 API 연동매뉴얼] >     }
        {   1.4. 국세청 전송 정책" 을 참조하시기 바랍니다.                     }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [취소거래시 필수] 원본 현금영수증 국세청승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        cashbill.orgConfirmNum := '';

        // [취소거래시 필수] 원본 현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        cashbill.orgTradeDate := '';

        // [필수] 문서형태, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [필수] 거래구분, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // 거래유형, [일반, 도서공연, 대중교통] 중 기재
        cashbill.tradeOpt := '일반';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 거래금액
        cashbill.totalAmount := '11000';

        // [필수] 공급가액
        cashbill.supplycost := '10000';

        // [필수] 부가세
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 가맹점 사업자번호, '-' 제외 10자리
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // 가맹점 상호
        cashbill.franchiseCorpName := '발행자상호';

        // 가맹점 대표자 성명
        cashbill.franchiseCEOName := '발행자 대표자';

        // 가맹점 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 가맹점 전화번호
        cashbill.franchiseTEL := '07043042991';

        // [필수] 식별번호
        // 거래구분(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래구분(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '01043245117';

        // 주문자명
        cashbill.customerName := '고객명';

        // 주문상품명
        cashbill.itemName := '상품명';

        // 주문번호
        cashbill.orderNumber := '주문번호';

        // 주문자 이메일
        cashbill.email := 'test@test.com';

        // 주문자 휴대폰
        cashbill.hp := '010-111-222';

        // 주문자 팩스
        cashbill.fax := '777-444-333';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        try
                response := cashbillService.Register(txtCorpNum.text, cashbill);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;


procedure TfrmExample.btnJoinMemberClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinForm;
begin
        {**********************************************************************}
        {    파트너의 연동회원으로 회원가입을 요청합니다.                      }
        {    아이디 중복확인은 btnCheckIDClick 프로시저를 참조하시기 바랍니다. }
        {**********************************************************************}

        // 링크 아이디
        joinInfo.LinkID := LinkID;

        // 사업자번호 '-' 제외, 10자리
        joinInfo.CorpNum := '1231212312';

        // 대표자성명, 최대 30자
        joinInfo.CEOName := '대표자성명';

        // 상호명, 최대 70자
        joinInfo.CorpName := '상호';

        // 주소, 최대 300자
        joinInfo.Addr := '주소';

        // 업태, 최대 40자
        joinInfo.BizType := '업태';

        // 종목, 최대 40자
        joinInfo.BizClass := '종목';

        // 아이디, 6자이상 20자 미만 
        joinInfo.ID     := 'userid';

        // 비밀번호, 6자이상 20자 미만
        joinInfo.PWD    := 'pwd_must_be_long_enough';

        // 담당자명, 최대 30자
        joinInfo.ContactName := '담당자명';

        // 담당자 연락처, 최대 20자
        joinInfo.ContactTEL :='02-999-9999';

        // 담당자 휴대폰번호, 최대 20자
        joinInfo.ContactHP := '010-1234-5678';

        // 담당자 팩스번호, 최대 20자
        joinInfo.ContactFAX := '02-999-9998';

        // 담당자 메일 주소, 최대 70자
        joinInfo.ContactEmail := 'test@test.com';

        try
                response := cashbillService.JoinMember(joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;




function IfThen(condition :bool; trueVal :String ; falseVal : String) : string;
begin
    if condition then result := trueVal else result := falseVal;
end;

procedure TfrmExample.btnUpdateCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { 연동회원의 회사정보를 수정합니다.                                    }
        {**********************************************************************}
        
        corpInfo := TCorpInfo.Create;

        // 대표자명, 최대 30자
        corpInfo.ceoname := '대표자명';

        // 상호, 상호 최대 70자
        corpInfo.corpName := '팝빌_수정';

        // 업태, 최대 40자
        corpInfo.bizType := '업태';

        // 종목, 최대 40자
        corpInfo.bizClass := '업종';

        // 주소, 최대 300자
        corpInfo.addr := '서울특별시 강남구 영동대로 517';

        try
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text, corpInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnGetBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { 연동회원의 잔여포인트를 확인합니다.                                  }
        { - 과금방식이 연동과금이 아닌 파트너과금인 경우 파트너 잔여포인트     }
        {    확인(GetPartnerBalance API) 기능 이용하시기 바랍니다              }
        {**********************************************************************}

        try
                balance := cashbillService.GetBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('잔여포인트 : ' + FloatToStr(balance));
end;

procedure TfrmExample.btnUnitCostClick(Sender: TObject);
var
        unitcost : Single;
begin
        try
                unitcost := cashbillService.GetUnitCost(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('현금영수증 발행단가 : '+ FloatToStr(unitcost));

end;

procedure TfrmExample.btnGetPopbillURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { 연동회원 포인트 충전 URL을 반환합니다.                               }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        ShowMessage('ResultURL is ' + #13 + resultURL);

end;

procedure TfrmExample.btnGetPartnerBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { 파트너의 잔여포인트를 확인합니다. 과금방식이 파트너과금이 아닌       }
        { 연동과금인 경우 연동회원 잔여포인트 확인(GetBalance API)를           }
        { 이용하시기 바랍니다                                                  }
        {**********************************************************************}
        
        try
                balance := cashbillService.GetPartnerBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('잔여포인트 : ' + FloatToStr(balance));

end;

procedure TfrmExample.btnCheckMgtkeyInUseClick(Sender: TObject);
var
        InUse : boolean;
begin
        {***********************************************************************}
        { 현금영수증을 등록하기전 문서관리번호(mgtKey) 중복여부를 확인합니다.   }
        { - 관리번호는 1~24자리 숫자, 영문, '-', '_' 조합으로 구성할수 있습니다.}
        {***********************************************************************}
        
        try
                InUse := cashbillService.CheckMgtKeyInUse(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if InUse then ShowMessage('사용중') else ShowMessage('미 사용중.');
end;

procedure TfrmExample.btnUpdateClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { [임시저장] 현금영수증의 기재항목을 수정합니다.                       }
        { - 현금영수증 항목별 정보는 "[현금영수증 API 연동매뉴얼] > 4.1.       }
        {   현금영수증 구성" 을 참조하시기 바랍니다.                           }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [취소거래시 필수] 원본 현금영수증 국세청승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        cashbill.orgConfirmNum := '';

        // [취소거래시 필수] 원본 현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        cashbill.orgTradeDate := '';

        // [필수] 문서형태, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [필수] 거래구분, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // [필수] 거래유형, [일반, 도서공연, 대중교통] 중 기재
        cashbill.tradeOpt := '일반';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 거래금액
        cashbill.totalAmount := '11000';

        // [필수] 공급가액
        cashbill.supplycost := '10000';

        // [필수] 부가세
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 가맹점 사업자번호, '-' 제외 10자리
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // 가맹점 상호
        cashbill.franchiseCorpName := '발행자상호_수정';

        // 가맹점 대표자 성명
        cashbill.franchiseCEOName := '발행자 대표자_수정';

        // 가맹점 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 가맹점 전화번호
        cashbill.franchiseTEL := '07043042991';

        // [필수] 식별번호
        // 거래구분(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래구분(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '01043245117';

        // 주문자명
        cashbill.customerName := '고객명';

        // 주문상품명
        cashbill.itemName := '상품명';

        // 주문번호
        cashbill.orderNumber := '주문번호';

        // 주문자 이메일
        cashbill.email := 'test@test.com';

        // 주문자 휴대폰
        cashbill.hp := '010-111-222';

        // 주문자 팩스
        cashbill.fax := '777-444-333';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        try
                response := cashbillService.Update(txtCorpNum.text, txtMgtKey.text, cashbill);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [임시저장] 상태의 현금영수증을 [발행]처리 합니다.                    }
        {**********************************************************************}

        // 메모
        memo := '발행메모';
        
        try
                response := cashbillService.Issue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnCancelIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [발행완료] 상태의 현금영수증을 [발행취소] 합니다.                    }
        { - [발행취소]는 국세청 전송 전에만 호출할 수 있습니다.                }
        { - [발행취소] 상태의 관리번호를 재사용 하기 위해서는 삭제(Delete API) }
        {   를 호출하여 [삭제] 처리 하셔야 합니다.                             }
        {**********************************************************************}
        
        // 메모
        memo := '발행취소 메모';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);

end;

procedure TfrmExample.btnGetInfoClick(Sender: TObject);
var
        cashbillInfo : TCashbillInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 1건의 현금영수증 상태/요약 정보를 확인합니다.                        }
        { - 현금영수증 문서정보(GetInfo API)의 응답항목에 관한 자세한 사항은   }
        {   "[현금영수증 API 연동매뉴얼] > 4.2. 현금영수증 상태정보 구성" 을   }
        {   참조하시기 바랍니다.                                               }
        {**********************************************************************}

        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := tmp +'itemKey (아이템키) : ' +  cashbillInfo.itemKey + #13;
        tmp := tmp +'mgtKey (문서관리번호) : ' +  cashbillInfo.mgtKey + #13;
        tmp := tmp +'tradeDate (거래일자) : ' +  cashbillInfo.tradeDate + #13;
        tmp := tmp +'tradeType (문서형태) : ' +  cashbillInfo.tradeType + #13;
        tmp := tmp +'tradeUsage (거래구분) : ' +  cashbillInfo.tradeUsage + #13;
        tmp := tmp +'tradeOpt (거래유형) : ' +  cashbillInfo.tradeOpt + #13;
        tmp := tmp +'taxationType (과세형태) : ' +  cashbillInfo.taxationType + #13;
        tmp := tmp +'totalAmount (거래금액) : ' +  cashbillInfo.totalAmount + #13;
        tmp := tmp +'issueDT (발행일시) : ' +  cashbillInfo.issueDT + #13;
        tmp := tmp +'regDT (등록일시) : ' +  cashbillInfo.regDT + #13;
        tmp := tmp +'stateMemo (상태메모) : ' +  cashbillInfo.stateMemo + #13;
        tmp := tmp +'stateCode (상태코드) : ' +  IntToStr(cashbillInfo.stateCode) + #13;
        tmp := tmp +'stateDT (상태변경일시) : ' +  cashbillInfo.stateDT + #13;
        tmp := tmp +'identityNum (식별번호) : ' +  cashbillInfo.identityNum + #13;
        tmp := tmp +'itemName (주문상품명) : ' +  cashbillInfo.itemName + #13;
        tmp := tmp +'customerName (주문자명) : ' +  cashbillInfo.customerName + #13;
        tmp := tmp +'confirmNum (국세청승인번호) : ' +  cashbillInfo.confirmNum + #13;
        tmp := tmp +'orgConfirmNum (원본 현금영수증 국세청승인번호) : ' +  cashbillInfo.orgConfirmNum + #13;
        tmp := tmp +'orgTradeDate (원본 현금영수증 거래일자) : ' +  cashbillInfo.orgTradeDate + #13;
        tmp := tmp +'ntssendDT (국세청 전송일시) : ' +  cashbillInfo.ntssendDT + #13;
        tmp := tmp +'ntsresultDT (국세청 처리결과 수신일시) : ' +  cashbillInfo.ntsresultDT + #13;
        tmp := tmp +'ntsresultCode (국세청 처리결과 상태코드) : ' +  cashbillInfo.ntsresultCode + #13;
        tmp := tmp +'ntsresultMessage (국세청 처리결과 메시지) : ' +  cashbillInfo.ntsresultMessage + #13;
        tmp := tmp +'printYN (인쇄여부) : ' +  IfThen(cashbillInfo.printYN,'true','false') + #13;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnGetURL_TBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 임시(연동)문서함 팝업 URL을 반환합니다.                   }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'TBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetURL_PBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 발행문서함 팝업 URL을 반환합니다.                         }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'PBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetURL_WRITEClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 문서작성 팝업 URL을 반환합니다.                           }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'WRITE');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetPopUpURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 보기 팝업 URL을 반환합니다.                         }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);

end;

procedure TfrmExample.btnGetPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 인쇄 팝업 URL을 반환합니다.                         }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetEPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
       {**********************************************************************}
       { 1건의 현금영수증 인쇄(공급받는자) URL을 반환합니다.                  }
       { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
       {**********************************************************************}

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetMassPrintURLClick(Sender: TObject);
var
        KeyList : Array of String;
        resultURL : String;
begin
       {**********************************************************************}
       { 다수건의 현금영수증 인쇄 팝업 URL을 반환합니다.                      }
       { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
       {**********************************************************************}

        // 인쇄할 현금영수증 문서관리번호 배열, 최대 100건
        SetLength(KeyList,4);
        KeyList[0] := '20161004-01';
        KeyList[1] := '20161004-02';
        KeyList[2] := '20161004-03';
        KeyList[3] := '20161004-04';
        
        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetMailURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 메일링크 URL을 반환합니다.                                           }
        { - 메일링크 URL의 경우 유효시간이 존재하지 않습니다.                  }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnSendFAXClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
begin
        {**********************************************************************}
        { 현금영수증을 팩스전송합니다.                                         }
        { - 팩스 전송 요청시 포인트가 차감됩니다. (전송실패시 환불처리)        }
        { - 전송내역 확인은 "팝빌 로그인" > [문자 팩스] > [팩스] > [전송내역]  }
        {   메뉴에서 전송결과를 확인할 수 있습니다.                            }
        {**********************************************************************}

        //팩스 발신번호
        sendNum := '070-4304-2991';

        //팩스 수신번호                                                
        receiveNum := '070-111-222';

        try
                response := cashbillService.SendFAX(txtCorpNum.text, txtMgtKey.Text, sendNum, receiveNum);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);

end;

procedure TfrmExample.btnSendSMSClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
        contents : String;
begin
        {**********************************************************************}
        { 알림문자를 전송합니다. (단문/SMS- 한글 최대 45자)                    }
        { - 알림문자 전송시 포인트가 차감됩니다. (전송실패시 환불처리)         }
        { - 전송내역 확인은 "팝빌 로그인" > [문자 팩스] > [전송내역] 탭에서    }
        {   전송결과를 확인할 수 있습니다.                                     }
        {**********************************************************************}

        //발신번호
        sendNum := '07043042991';
        
        //수신번호
        receiveNum := '010-111-222';

        //문자 메시지내용, 90byte를 초과한 내용은 삭제되어 전송됩니다.
        contents := '현금영수증이 발행되었습니다. 메일 확인바랍니다.';
        
        try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);

end;

procedure TfrmExample.btnSendEmailClick(Sender: TObject);
var
        response : TResponse;
        email : String;
begin
        {**********************************************************************}
        { 발행안내 메일을 재전송합니다.                                        }
        {**********************************************************************}
        
        // 수신메일주소
        email := 'test@test.com';

        try
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);

end;

procedure TfrmExample.btnGetDetailInfoClick(Sender: TObject);
var
        cashbill : TCashbill;
        tmp : string;
begin
        {**********************************************************************}
        { 1건의 현금영수증 상세항목을 확인합니다.                              }
        { - 현금영수증 항목에 대한 자세한 사항은 "[현금영수증 API 연동매뉴얼]  }
        {   > 4.1 현금영수증 구성 " 을 참조하시기 바랍니다.                    }
        {**********************************************************************}

        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := tmp +'mgtKey (문서관리번호) : ' +  cashbill.mgtKey + #13;
        tmp := tmp +'confirmNum (국세청 승인번호) : ' +  cashbill.confirmNum + #13;
        tmp := tmp +'orgConfirmNum (원본 현금영수증 국세청승인번호) : ' +  cashbill.orgConfirmNum + #13;
        tmp := tmp +'orgTradeDate (원본 현금영수증 거래일자) : ' +  cashbill.orgTradeDate + #13;
        tmp := tmp +'tradeDate (거래일자) : ' +  cashbill.tradeDate + #13;
        tmp := tmp +'tradeType (문서형태) : ' +  cashbill.tradeType + #13;
        tmp := tmp +'tradeUsage (거래구분) : ' +  cashbill.tradeUsage + #13;
        tmp := tmp +'tradeOpt (거래유형) : ' +  cashbill.tradeOpt + #13;
        tmp := tmp +'taxationType (과세형태) : ' +  cashbill.taxationType + #13;
        tmp := tmp +'totalAmount (거래금액) : ' +  cashbill.totalAmount + #13;
        tmp := tmp +'supplyCost (공급가액) : ' +  cashbill.supplyCost + #13;
        tmp := tmp +'tax (부가세) : ' +  cashbill.tax + #13;
        tmp := tmp +'serviceFee (봉사료) : ' +  cashbill.serviceFee + #13;
        tmp := tmp +'franchiseCorpNum (가맹점 사업자번호) : ' +  cashbill.franchiseCorpNum + #13;
        tmp := tmp +'franchiseCorpName (가맹점 상호) : ' +  cashbill.franchiseCorpName + #13;
        tmp := tmp +'franchiseCEOName (가맹점 대표자 성명) : ' +  cashbill.franchiseCEOName + #13;
        tmp := tmp +'franchiseAddr (가맹점 주소) : ' +  cashbill.franchiseAddr + #13;
        tmp := tmp +'franchiseTEL (가맹점 전화번호) : ' +  cashbill.franchiseTEL + #13;
        tmp := tmp +'identityNum (식별번호) : ' +  cashbill.identityNum + #13;
        tmp := tmp +'customerName (주문자명) : ' +  cashbill.customerName + #13;
        tmp := tmp +'itemName (주문상품명) : ' +  cashbill.itemName + #13;
        tmp := tmp +'orderNumber (주문번호) : ' +  cashbill.orderNumber + #13;
        tmp := tmp +'email (주문자 이메일) : ' +  cashbill.email + #13;
        tmp := tmp +'hp (주문자 휴대폰) : ' +  cashbill.hp + #13;
        tmp := tmp +'smssendYN (SMS 전송여부) : ' +  IfThen(cashbill.smssendYN,'true','false') + #13;
        tmp := tmp +'cancelType (취소사유) : ' +  IntToStr(cashbill.cancelType) + #13;
                
        ShowMessage(tmp);
end;

procedure TfrmExample.btnGetLogsClick(Sender: TObject);
var
        LogList : TCashbillLogList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 현금영수증 상태 변경이력을 확인합니다.                               }
        { - 상태 변경이력 확인(GetLogs API) 응답항목에 대한 자세한 정보는      }
        {  "[현금영수증 API 연동매뉴얼] > 3.4.4 상태 변경이력 확인" 을 참조    }
        {   하시기 바랍니다.                                                   }
        {**********************************************************************}

        try
                LogList := cashbillService.getLogs(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'DocLogType | Log | ProcType | ProcMemo | RegDT | IP' + #13;
        
        for i := 0 to Length(LogList) -1 do
        begin
            tmp := tmp + IntToStr(LogList[i].DocLogType) + ' | '
                        + LogList[i].Log + ' | '
                        + LogList[i].ProcType + ' | '
                        + LogList[i].ProcMemo + ' | '
                        + LogList[i].regDT  + ' | '
                        + LogList[i].IP + ' | ' + #13;
        end;

        ShowMessage(tmp)

end;


procedure TfrmExample.btnGetInfosClick(Sender: TObject);
var
        KeyList : Array of String;
        InfoList : TCashbillInfoList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 다량의 현금영수증 상태/요약 정보를 확인합니다. (최대 1000건)         }
        { - 전자명세서 상태정보(GetInfos API) 응답항목에 대한 자세한 정보는    }
        { - "[현금영수증 API 연동매뉴얼] > 4.2. 현금영수증 상태정보 구성" 을   }
        {   참조  하시기 바랍니다.                                             }
        {**********************************************************************}

        // 현금영수증 문서관리번호 배열, 최대 1000건
        SetLength(KeyList,4);
        KeyList[0] := '20180926_10';
        KeyList[1] := '20180926_11';
        KeyList[2] := '20180926_12';
        KeyList[3] := '20180926_13';
        
        try
                InfoList := cashbillService.getInfos(txtCorpNum.text,KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        for i := 0 to Length(InfoList) -1 do
        begin
                tmp := tmp +'itemKey (아이템키) : ' +  InfoList[i].itemKey + #13;
                tmp := tmp +'mgtKey (문서관리번호) : ' +  InfoList[i].mgtKey + #13;
                tmp := tmp +'tradeDate (거래일자) : ' +  InfoList[i].tradeDate + #13;
                tmp := tmp +'tradeType (문서형태) : ' +  InfoList[i].tradeType + #13;
                tmp := tmp +'tradeUsage (거래구분) : ' +  InfoList[i].tradeUsage + #13;
                tmp := tmp +'tradeOpt (거래유형) : ' +  InfoList[i].tradeOpt + #13;
                tmp := tmp +'taxationType (과세형태) : ' +  InfoList[i].taxationType + #13;
                tmp := tmp +'totalAmount (거래금액) : ' +  InfoList[i].totalAmount + #13;
                tmp := tmp +'issueDT (발행일시) : ' +  InfoList[i].issueDT + #13;
                tmp := tmp +'regDT (등록일시) : ' +  InfoList[i].regDT + #13;
                tmp := tmp +'stateMemo (상태메모) : ' +  InfoList[i].stateMemo + #13;
                tmp := tmp +'stateCode (상태코드) : ' +  IntToStr(InfoList[i].stateCode) + #13;
                tmp := tmp +'stateDT (상태변경일시) : ' +  InfoList[i].stateDT + #13;
                tmp := tmp +'identityNum (식별번호) : ' +  InfoList[i].identityNum + #13;
                tmp := tmp +'itemName (주문상품명) : ' +  InfoList[i].itemName + #13;
                tmp := tmp +'customerName (주문자명) : ' +  InfoList[i].customerName + #13;
                tmp := tmp +'confirmNum (국세청승인번호) : ' +  InfoList[i].confirmNum + #13;
                tmp := tmp +'orgConfirmNum (원본 현금영수증 국세청승인번호) : ' +  InfoList[i].orgConfirmNum + #13;
                tmp := tmp +'orgTradeDate (원본 현금영수증 거래일자) : ' +  InfoList[i].orgTradeDate + #13;
                tmp := tmp +'ntssendDT (국세청 전송일시) : ' +  InfoList[i].ntssendDT + #13;
                tmp := tmp +'ntsresultDT (국세청 처리결과 수신일시) : ' +  InfoList[i].ntsresultDT + #13;
                tmp := tmp +'ntsresultCode (국세청 처리결과 상태코드) : ' +  InfoList[i].ntsresultCode + #13;
                tmp := tmp +'ntsresultMessage (국세청 처리결과 메시지) : ' +  InfoList[i].ntsresultMessage + #13;
                tmp := tmp +'printYN (인쇄여부) : ' +  IfThen(InfoList[i].printYN,'true','false') + #13 + #13;
        end;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnCheckIDClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 회원가입(JoinMember API)을 호출하기 전 아이디 중복을 확인합니다.     }
        {**********************************************************************}

        try
                response := cashbillService.CheckID(txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);


end;

procedure TfrmExample.btnRegistContactClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinContact;
begin
        {**********************************************************************}
        { 연동회원의 담당자를 신규로 등록합니다.                               }
        {**********************************************************************}

        // [필수] 아이디 (6자 이상 20자 미만)
        joinInfo.id := 'userid';

        // [필수] 비밀번호 (6자 이상 20자 미만)
        joinInfo.pwd := 'thisispassword';

        // [필수] 담당자명(한글이나 영문 30자 이내)
        joinInfo.personName := '담당자성명';

        // [필수] 연락처
        joinInfo.tel := '070-4304-2991';

        // 휴대폰번호
        joinInfo.hp := '010-1111-2222';

        // 팩스번호
        joinInfo.fax := '02-6442-9700';

        // [필수] 이메일
        joinInfo.email := 'test@test.com';

        // 조회권한 (true 회사조회/ false 개인조회)
        joinInfo.searchAllAllowYN := false;

        // 관리자 권한여부
        joinInfo.mgrYN := false;

        try
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;


procedure TfrmExample.btnUpdateContactClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { 연동회원의 담당자 정보를 수정합니다.                                 }
        {**********************************************************************}

        contactInfo := TContactInfo.Create;

        // 담당자 아이디
        contactInfo.id := 'testkorea';

        // 담당자명
        contactInfo.personName := '테스트 담당자';

        // 연락처
        contactInfo.tel := '070-7510-3715';

        // 휴대폰번호
        contactInfo.hp := '010-4324-1111';

        // 이메일 주소
        contactInfo.email := 'test@test.com';
        
        // 팩스번호
        contactInfo.fax := '02-6442-9799';
        
        // 회사조회 권한여부
        contactInfo.searchAllAllowYN := true;

        // 관리자 전환 여부
        contactInfo.mgrYN := false;

        try
                response := cashbillService.UpdateContact(txtCorpNum.text, contactInfo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;


procedure TfrmExample.btnCancelIssue_riClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [발행완료] 상태의 현금영수증을 [발행취소] 합니다.                    }
        { - [발행취소]는 국세청 전송 전에만 호출할 수 있습니다.                }
        { - [발행취소] 상태의 관리번호를 재사용 하기 위해서는 삭제(Delete API) }
        {   를 호출하여 [삭제] 처리 하셔야 합니다.                             }
        {**********************************************************************}

        // 발행취소 메모
        memo := '발행취소 메모';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnDelete_riClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1건의 현금영수증을 삭제합니다                                        }
        { - 현금영수증이 삭제된 경우에만 문서관리번호(mgtKey)를 재사용 할 수   }
        {   있습니다.                                                          }
        { - 삭제가능한 문서 상태 : [임시저장], [발행취소]                      }
        {**********************************************************************}

        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

procedure TfrmExample.btnRegistIssueClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증을 즉시발행 처리합니다.                              }
        { - 현금영수증 항목별 정보는 "[현금영수증 API 연동매뉴얼] >            }
        {   4.1. 현금영수증 구성" 을 참조하시기 바랍니다.                      }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [취소거래시 필수] 원본 현금영수증 국세청승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        cashbill.orgConfirmNum := '';

        // [취소거래시 필수] 원본 현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        cashbill.orgTradeDate := '';

        // [필수] 문서형태, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [필수] 거래구분, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // 거래유형, [일반, 도서공연, 대중교통] 중 기재
        cashbill.tradeOpt := '일반';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 거래금액
        cashbill.totalAmount := '11000';

        // [필수] 공급가액
        cashbill.supplycost := '10000';

        // [필수] 부가세
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 가맹점 사업자번호, '-' 제외 10자리
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // 가맹점 상호
        cashbill.franchiseCorpName := '발행자상호';

        // 가맹점 대표자 성명
        cashbill.franchiseCEOName := '발행자 대표자';

        // 가맹점 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 가맹점 전화번호
        cashbill.franchiseTEL := '07043042991';

        // [필수] 식별번호
        // 거래구분(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래구분(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '0101112222';

        // 주문자명
        cashbill.customerName := '고객명';

        // 주문상품명
        cashbill.itemName := '상품명';

        // 주문번호
        cashbill.orderNumber := '주문번호';

        // 주문자 이메일주소
        cashbill.email := 'test@test.com';

        // 주문자 휴대폰번호
        cashbill.hp := '010-111-222';

        // 주문자 팩스번호
        cashbill.fax := '777-444-333';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        // 메모
        memo := '즉시발행 현금영수증 메모';
                
        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 + '응답메시지 : ' + le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
end;

procedure TfrmExample.btnGetCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 연동회원의 회사정보를 확인합니다.                                    }
        {**********************************************************************}

        try
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'CorpName (상호) : ' + corpInfo.CorpName + #13;
        tmp := tmp + 'CeoName (대표자 성명) : ' + corpInfo.CeoName + #13;
        tmp := tmp + 'BizType (업태) : ' + corpInfo.BizType + #13;
        tmp := tmp + 'BizClass (종목) : ' + corpInfo.BizClass + #13;
        tmp := tmp + 'Addr (주소) : ' + corpInfo.Addr + #13;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnListContactClick(Sender: TObject);
var
        InfoList : TContactInfoList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 연동회원의 담당자 목록을 확인합니다.                                 }
        {**********************************************************************}

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        tmp := 'id | email | hp | personName | searchAllAlloyYN | tel | fax | mgrYN | regDT | state ' + #13;
        for i := 0 to Length(InfoList) -1 do
        begin
            tmp := tmp + InfoList[i].id + ' | ';
            tmp := tmp + InfoList[i].email + ' | ';
            tmp := tmp + InfoList[i].hp + ' | ';
            tmp := tmp + InfoList[i].personName + ' | ';
            tmp := tmp + BoolToStr(InfoList[i].searchAllAllowYN) + ' | ';
            tmp := tmp + InfoList[i].tel + ' | ';
            tmp := tmp + InfoList[i].fax + ' | ';
            tmp := tmp + BoolToStr(InfoList[i].mgrYN) + ' | ';
            tmp := tmp + InfoList[i].regDT + ' | ';
            tmp := tmp + IntToStr(InfoList[i].state) + #13;
        end;

        ShowMessage(tmp);

end;


procedure TfrmExample.btnCheckIsMemberClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 해당 사업자의 연동회원 가입여부를 확인합니다.                        }
        { - LinkID는 파트너를 식별하는 인증정보(32번라인)에 설정되어 있습니다. }
        {**********************************************************************}
        
        try
                response := cashbillService.CheckIsMember(txtCorpNum.text, LinkID);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);

end;

procedure TfrmExample.btnGetUnitCostClick(Sender: TObject);
var
        unitcost : Single;
begin
        {**********************************************************************}
        { 현금영수증 발행단가를 확인합니다.                                    }
        {**********************************************************************}

        try
                unitcost := cashbillService.GetUnitCost(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('현금영수증 발행단가 : '+ FloatToStr(unitcost));
end;

procedure TfrmExample.btnSearchClick(Sender: TObject);
var
        DType, SDate, EDate, QString, Order, tmp : String;
        State, TradeType, TradeUsage, TradeOpt, TaxationType : Array Of String;
        Page, PerPage, i : Integer;
        SearchList : TCashbillSearchList;
begin
        {**********************************************************************}
        { 검색조건들을 이용해 현금영수증 목록을 조회합니다.                    }
        { - 응답항목에 대한 자세한 사항은 "[현금영수증 API 연동매뉴얼] >       }
        {   3.4.3. Search (목록 조회)" 을 참조하시기 바랍니다.                 }
        {**********************************************************************}

        // [필수] 일자유형 { R: 등록일자, W:작성일자, I:발행일자 }
        DType := 'R';

        // [필수] 검색 시작일자, 작성형태(yyyyMMdd)
        SDate := '20180901';

        // [필수] 검색 종료일자, 작성형태(yyyyMMdd)
        EDate := '20180920';

        // 전송상태값 배열. 미기재시 전체조회, 문서상태 값 3자리의 배열, 2,3번째 자리 와일드 카드 사용가능
        // 전송상태값 테이블은 "[현금영수증 연동매뉴얼] > 5.2 현금영수증 상태코드 테이블" 참조
        SetLength(State, 3);
        State[0] := '100';
        State[1] := '3**';
        State[2] := '4**';

        // 현금영수증 형태 배열, { N:일반 현금영수증 C:취소 현금영수증 }
        SetLength(TradeType, 2);
        TradeType[0] := 'N';
        TradeType[1] := 'C';

        // 거래용도 배열, { P:소득공제용 C:지출증빙용 }
        SetLength(TradeUsage, 2);
        TradeUsage[0] := 'P';
        TradeUsage[1] := 'C';

        // 거래유형 배열, { N:일반 B:도서공연 T:대중교통 }
        SetLength(TradeOpt, 3);
        TradeOpt[0] := 'T';
        TradeOpt[1] := 'B';
        TradeOpt[2] := 'T';

        // 과세형태 배열, { T:과세 N:비과세 }
        SetLength(TaxationType, 2);
        TaxationType[0] := 'T';
        TaxationType[1] := 'N';

        // 거래처 식별번호, 공백처리시 전체조회
        QString := '';

        // 페이지 번호, 기본값 
        Page := 1;
        
        // 페이지당 목록갯수, 기본값 500, 최대 1000
        PerPage := 50;
        
        // 'D' : 내림차순 , 'A' : 오름차순
        Order := 'D';

        try
                SearchList := cashbillService.Search(txtCorpNum.text,DType, SDate,
                                EDate, State, TradeType, TradeUsage, TaxationType,
                                QString, Page, PerPage,Order, TradeOpt);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'code : '+IntToStr(SearchList.code) + #13;                               // 응답 결과코드
        tmp := tmp + 'total : '+ IntToStr(SearchList.total) + #13;                      // 총 검색결과 건수
        tmp := tmp + 'perPage : '+ IntToStr(SearchList.perPage) + #13;                  // 페이지당 검색개수
        tmp := tmp + 'pageNum : '+ IntToStr(SearchList.pageNum) + #13;                  // 페이지 번호
        tmp := tmp + 'pageCount : '+ IntToStr(SearchList.pageCount) + #13;              // 페이지 개수
        tmp := tmp + 'message : '+ SearchList.message + #13#13;                         // 응답 메시지

        tmp := tmp + 'itemKey | mgtKey | tradeDate | tradeType | tradeUsage | tradeOpt | taxationType | totalAmount | '
                   + 'issueDT | regDT | tradeType | stateMemo | stateCode | stateDT | identityNum  | itemName | '
                   + 'customerName | confirmNum | orgConfirmNum | orgTradeDate | ntssendDT | ntsresult | ntsresultDT | ntsresultCode | ntsMessage | printYN  ' + #13#13;

        for i := 0 to Length(SearchList.list) -1 do
        begin
                tmp := tmp + SearchList.list[i].itemKey + ' | ';
                tmp := tmp + SearchList.list[i].mgtKey +' | ';
                tmp := tmp + SearchList.list[i].tradeDate + ' | ';
                tmp := tmp + SearchList.list[i].tradeType + ' | ';
                tmp := tmp + SearchList.list[i].tradeUsage + ' | ';
                tmp := tmp + SearchList.list[i].tradeOpt + ' | ';
                tmp := tmp + SearchList.list[i].taxationType + ' | ';
                tmp := tmp + SearchList.list[i].totalAmount + ' | ';
                tmp := tmp + SearchList.list[i].issueDT + ' | ';
                tmp := tmp + SearchList.list[i].regDT + ' | ';
                tmp := tmp + SearchList.list[i].stateMemo + ' | ';
                tmp := tmp + IntToStr(SearchList.list[i].stateCode) + ' | ';
                tmp := tmp + SearchList.list[i].stateDT + ' | ';
                tmp := tmp + SearchList.list[i].identityNum + ' | ';
                tmp := tmp + SearchList.list[i].itemName + ' | ';
                tmp := tmp + SearchList.list[i].customerName +' | ';
                tmp := tmp + SearchList.list[i].confirmNum + ' | ';
                tmp := tmp + SearchList.list[i].orgConfirmNum + ' | ';
                tmp := tmp + SearchList.list[i].orgTradeDate + ' | ';
                tmp := tmp + SearchList.list[i].ntssendDT + ' | ';
                tmp := tmp + SearchList.list[i].ntsresult + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultDT + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultCode + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultMessage + ' | ';
                tmp := tmp + IfThen(SearchList.list[i].printYN,'true','false') +#13;
        end;

        SearchList.Free;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnGetChargeInfoClick(Sender: TObject);
var
        chargeInfo : TCashbillChargeInfo;
        tmp : String;
begin
        {**********************************************************************}
        { 연동회원의 현금영수증 API 서비스 과금정보를 확인합니다.              }
        {**********************************************************************}

        try
                chargeInfo := cashbillService.GetChargeInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'unitCost (단가) : ' + chargeInfo.unitCost + #13;
        tmp := tmp + 'chargeMethod (과금유형) : ' + chargeInfo.chargeMethod + #13;
        tmp := tmp + 'rateSystem (과금제도) : ' + chargeInfo.rateSystem + #13;

        ShowMessage(tmp);

end;




procedure TfrmExample.btnRevokeRegistIssueClick(Sender: TObject);
var
        response : TResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate : String;
        smssendYN : Boolean;
begin
        {**********************************************************************}
        { 1건의 취소현금영수증을 즉시발행 처리합니다.                          }
        { - 현금영수증 항목별 정보는 "[현금영수증 API 연동매뉴얼] >            }
        {   4.1. 현금영수증 구성" 을 참조하시기 바랍니다.                      }
        {**********************************************************************}

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        mgtKey := txtMgtKey.Text;

        // 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        orgConfirmNum := '820116333';

        // 원본현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        orgTradeDate := '20170711';

        // 발행안내문자 전송여부
        smssendYN := False;

        // 메모
        memo := '즉시발행 취소현금영수증 메모';
                
        try
                response := cashbillService.RevokeRegistIssue(txtCorpNum.text,
                        mgtKey, orgConfirmNum, orgTradeDate, smssendYN, memo, txtUserID.text);

        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 + '응답메시지 : ' + le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
end;

procedure TfrmExample.btnGetPartnerURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { 파트너 포인트 충전 URL을 반환합니다.                                 }
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPartnerURL(txtCorpNum.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnRevokeRegistIssue_partClick(Sender: TObject);
var
        response : TResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate, supplyCost, tax, serviceFee, totalAmount : String;
        cancelType: Integer;
        isPartCancel, smssendYN : Boolean;
begin
        {**********************************************************************}
        { 1건의 (부분) 취소현금영수증을 즉시발행 처리합니다.                   }
        { - 현금영수증 항목별 정보는 "[현금영수증 API 연동매뉴얼] >            }
        {   4.1. 현금영수증 구성" 을 참조하시기 바랍니다.                      }
        {**********************************************************************}

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        mgtKey := txtMgtKey.Text;

        // 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        orgConfirmNum := '820116333';

        // 원본현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        orgTradeDate := '20170711';

        // 발행안내문자 전송여부
        smssendYN := False;

        // 메모
        memo := '즉시발행 취소현금영수증 메모';

        // 부분취소여부,
        isPartCancel := True;

        cancelType := 1;

        supplyCost := '2000';

        tax := '200';

        serviceFee := '0';

        totalAmount := '2200';
                
        try
                response := cashbillService.RevokeRegistIssue(txtCorpNum.text,
                        mgtKey, orgConfirmNum, orgTradeDate, smssendYN, memo, txtUserID.text,
                        isPartCancel, cancelType, supplyCost, tax, serviceFee, totalAmount);

        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 + '응답메시지 : ' + le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
end;

procedure TfrmExample.btnListEmailConfigClick(Sender: TObject);
var
        EmailConfigList : TEmailConfigList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        {  현금영수증 메일전송 항목에 대한 전송여부를 목록으로 반환한다.       }
        {**********************************************************************}
        
        try
                EmailConfigList := cashbillService.ListEmailConfig(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := '메일전송유형 | 전송여부' + #13;

        for i := 0 to Length(EmailConfigList) -1 do
        begin
            if EmailConfigList[i].EmailType = 'CSH_ISSUE' then
                tmp := tmp + 'CSH_ISSUE (고객에게 현금영수증이 발행 되었음을 알려주는 메일) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;

            if EmailConfigList[i].EmailType = 'CSH_CANCEL' then
                tmp := tmp + 'CSH_CANCEL (고객에게 현금영수증이 발행취소 되었음을 알려주는 메일) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;
        end;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnUpdateEmailConfigClick(Sender: TObject);
var
        response : TResponse;
        EmailType : String;
        SendYN    : Boolean;
begin
        {**********************************************************************}
        { 현금영수증 메일전송 항목에 대한 전송여부를 수정한다.                 }
        { 메일전송유형                                                         }
        {  CSH_ISSUE : 고객에게 현금영수증이 발행 되었음을 알려주는 메일       }
        {  CSH_CANCEL : 고객에게 현금영수증이 발행취소 되었음을 알려주는 메일  }
        {**********************************************************************}

        // 메일전송유형
        EmailType := 'CSH_ISSUE';

        // 전송여부 (True - 전송, False - 미전송)
        SendYN := True;

        try
                response := cashbillService.UpdateEmailConfig(txtCorpNum.text, EmailType, SendYN);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
end;

end.
