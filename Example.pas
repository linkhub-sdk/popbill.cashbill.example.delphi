{******************************************************************************}
{ 팝빌 현금영수증 API Delphi SDK Example                                       }
{                                                                              }
{ - 델파이 SDK 적용방법 안내 : https://docs.popbill.com/cashbill/tutorial/delphi }
{ - 업데이트 일자 : 2022-01-06                                                 }
{ - 연동 기술지원 연락처 : 1600-9854                                           }
{ - 연동 기술지원 이메일 : code@linkhubcorp.com                                }
{                                                                              }
{ <테스트 연동개발 준비사항>                                                   }
{ (1) 31, 34번 라인에 선언된 링크아이디(LinkID)와 비밀키(SecretKey)를          }
{    링크허브 가입시 메일로 발급받은 인증정보로 수정                           }
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
    btnGetAccessURL: TButton;
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
    btnGetChargeURL: TButton;
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
    Button1: TButton;
    btnAssignMgtKey: TButton;
    btnGetViewURL: TButton;
    txtURL: TEdit;
    btnGetPaymentURL: TButton;
    btnGetUseHistoryURL: TButton;
    btnGetContactInfo: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender:TObject; var Action:TCloseAction);
    procedure btnRegisterClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnJoinMemberClick(Sender: TObject);
    procedure btnGetAccessURLClick(Sender: TObject);
    procedure btnGetBalanceClick(Sender: TObject);
    procedure btnUnitCostClick(Sender: TObject);
    procedure btnGetChargeURLClick(Sender: TObject);
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
    procedure Button1Click(Sender: TObject);
    procedure btnAssignMgtKeyClick(Sender: TObject);
    procedure btnGetViewURLClick(Sender: TObject);
    procedure btnGetPaymentURLClick(Sender: TObject);
    procedure btnGetUseHistoryURLClick(Sender: TObject);
    procedure btnGetContactInfoClick(Sender: TObject);
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

        // 연동환경 설정, true-개발용, false-상업용
        cashbillService.IsTest := true;

        // Exception 처리 설정, true-사용, false-미사용, 기본값(true)
        cashbillService.IsThrowException := true;

        // 인증토큰 IP제한기능 사용여부, true-사용, false-미사용, 기본값(true)
        cashbillService.IPRestrictOnOff := true;

        //로컬시스템 시간 사용여부, true-사용, false-미사용, 기본값(true)
        cashbillService.UseLocalTimeYN := false;
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

function IfThen(condition :bool; trueVal :String ; falseVal : String) : string;
begin
    if condition then result := trueVal else result := falseVal;
end;

procedure TfrmExample.btnGetAccessURLClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************
        {    팝빌(www.popbill.com)에 로그인된 팝업 URL을 반환합니다.
        {    URL 보안정책에 따라 반환된 URL은 30초의 유효시간을 갖습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetAccessURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getAccessURL(txtCorpNum.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
        
end;


procedure TfrmExample.btnDeleteClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1건의 현금영수증을 삭제합니다.
        { - 현금영수증이 삭제된 경우에만 문서번호(mgtKey)를 재사용 할 수   
        {   있습니다.
        { - 삭제가능한 문서 상태 : [임시저장], [발행취소]
        { - https://docs.popbill.com/cashbill/delphi/api#Delete
        {**********************************************************************}
        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;
end;

procedure TfrmExample.btnRegisterClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { 현금영수증 1건을 [임시저장] 합니다.
        { - 현금영수증 임시저장(Register API) 호출후에는 발행(Issue API)을
        {   호출해야만 국세청에 전송됩니다.
        { - 임시저장과 발행을 한번의 호출로 처리하는 즉시발행(RegistIssue API)
        {   프로세스를 권장합니다.
        { - 현금영수증 국세청 전송 정책 : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#Register
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
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

        // 가맹점 종사업장 식별번호
        cashbill.franchiseTaxRegID := '';

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

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;
end;


procedure TfrmExample.btnJoinMemberClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinForm;
begin
        {**********************************************************************}
        {    파트너의 연동회원으로 회원가입을 요청합니다.
        {    아이디 중복확인은 btnCheckIDClick 프로시져를 참조하시기 바랍니다.
        { - https://docs.popbill.com/cashbill/delphi/api#JoinMember
        {**********************************************************************}

        // 링크아이디
        joinInfo.LinkID := LinkID;

        // 사업자번호 '-' 제외, 10자리
        joinInfo.CorpNum := '4364364364';

        // 대표자성명, 최대 100자
        joinInfo.CEOName := '대표자성명';

        // 상호명, 최대 200자
        joinInfo.CorpName := '링크허브';

        // 주소, 최대 300자
        joinInfo.Addr := '주소';

        // 업태, 최대 100자
        joinInfo.BizType := '업태';

        // 종목, 최대 100자
        joinInfo.BizClass := '종목';

        // 아이디, 6자이상 50자 미만
        joinInfo.ID     := 'userid';

        // 비밀번호 (8자 이상 20자 미만) 영문, 숫자 ,특수문자 조합
        joinInfo.Password := 'asdf123!@';

        // 담당자명, 최대 100자
        joinInfo.ContactName := '담당자명';

        // 담당자 연락처, 최대 20자
        joinInfo.ContactTEL :='070-4304-2991';

        // 담당자 휴대폰번호, 최대 20자
        joinInfo.ContactHP := '010-000-1111';

        // 담당자 팩스번호, 최대 20자
        joinInfo.ContactFAX := '02-6442-9700';

        // 담당자 메일, 최대 100자
        joinInfo.ContactEmail := 'code@linkhub.co.kr';

        try
                response := cashbillService.JoinMember(joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;
end;

procedure TfrmExample.btnUpdateCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { 연동회원의 회사정보를 수정합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateCorpInfo
        {**********************************************************************}

        corpInfo := TCorpInfo.Create;

        // 대표자명, 최대 100자
        corpInfo.ceoname := '대표자명';

        // 상호, 최대 200자
        corpInfo.corpName := '상호';

        // 업태, 최대 100자
        corpInfo.bizType := '업태';

        // 종목, 최대 100자
        corpInfo.bizClass := '종목';

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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;
                
end;

procedure TfrmExample.btnGetBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { 연동회원의 잔여포인트를 확인합니다.
        { - 과금방식이 연동과금이 아닌 파트너과금인 경우 파트너 잔여포인트
        {    확인(GetPartnerBalance API) 기능 이용하시기 바랍니다
        { - https://docs.popbill.com/cashbill/delphi/api#GetBalance
        {**********************************************************************}
        try
                balance := cashbillService.GetBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('잔여포인트 : ' + FloatToStr(balance));
        end;
        
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

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('현금영수증 발행단가 : '+ FloatToStr(unitcost));
        end;
end;

procedure TfrmExample.btnGetChargeURLClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { 연동회원 포인트 충전 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetChargeURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getChargeURL(txtCorpNum.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetPartnerBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { 파트너의 잔여포인트를 확인합니다. 과금방식이 파트너과금이 아닌
        { - 연동과금인 경우 연동회원 잔여포인트 확인(GetBalance API)를
        { 이용하시기 바랍니다
        { - https://docs.popbill.com/cashbill/delphi/api#GetPartnerBalance
        {**********************************************************************}
        
        try
                balance := cashbillService.GetPartnerBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('잔여포인트 : ' + FloatToStr(balance));
        end;
end;

procedure TfrmExample.btnCheckMgtkeyInUseClick(Sender: TObject);
var
        InUse : boolean;
begin
        {***********************************************************************}
        { 현금영수증을 등록하기전 문서번호(mgtKey) 중복여부를 확인합니다.
        { - 문서번호는 1~24자리 숫자, 영문, '-', '_' 조합으로 구성할수 있습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckMgtKeyInUse
        {***********************************************************************}
        
        try
                InUse := cashbillService.CheckMgtKeyInUse(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                if InUse then ShowMessage('사용중') else ShowMessage('미 사용중.');
        end;


end;

procedure TfrmExample.btnUpdateClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { [임시저장] 현금영수증의 기재항목을 수정합니다.                       
        { - https://docs.popbill.com/cashbill/delphi/api#Update
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서 문서번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
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

        // 가맹점 종사업장 식별번호
        cashbill.franchiseTaxRegID := '';

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

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnIssueClick(Sender: TObject);
var
        response : TCBIssueResponse;
        memo : String;
begin
        {**********************************************************************}
        { [임시저장] 상태의 현금영수증을 [발행]처리 합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CBIssue
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

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message + #10#13 + '국세청승인번호 : ' + response.confirmNum + #10#13 + '거래일자 : ' + response.tradeDate);
        end;
end;

procedure TfrmExample.btnCancelIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [발행완료] 상태의 현금영수증을 [발행취소] 합니다.                    
        { - [발행취소]는 국세청 전송 전에만 호출할 수 있습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CancelIssue
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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnGetInfoClick(Sender: TObject);
var
        cashbillInfo : TCashbillInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 1건의 현금영수증 상태/요약 정보를 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetInfo
        {**********************************************************************}

        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := tmp +'itemKey (팝빌번호) : ' +  cashbillInfo.itemKey + #13;
                tmp := tmp +'mgtKey (문서번호) : ' +  cashbillInfo.mgtKey + #13;
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


end;

procedure TfrmExample.btnGetURL_TBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 임시(연동)문서함 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'TBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetURL_PBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 발행문서함 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'PBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;

end;

procedure TfrmExample.btnGetURL_WRITEClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 현금영수증 문서작성 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'WRITE');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetPopUpURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 보기 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 인쇄 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPrintURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetEPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
       {**********************************************************************}
       { 1건의 현금영수증 인쇄(공급받는자) URL을 반환합니다.
       { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
       { - https://docs.popbill.com/cashbill/delphi/api#GetPrintURL
       {**********************************************************************}

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetMassPrintURLClick(Sender: TObject);
var
        KeyList : Array of String;
        resultURL : String;
begin
       {**********************************************************************}
       { 다수건의 현금영수증 인쇄 팝업 URL을 반환합니다. (최대 100건)
       { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
       { - https://docs.popbill.com/cashbill/delphi/api#GetMassPrintURL
       {**********************************************************************}

        // 인쇄할 현금영수증 문서번호 배열 (최대 100건)
        SetLength(KeyList,4);
        KeyList[0] := '20220105-001';
        KeyList[1] := '20220105-002';
        KeyList[2] := '20220105-003';
        KeyList[3] := '20220105-004';

        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;

end;

procedure TfrmExample.btnGetMailURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 메일링크 URL을 반환합니다.
        { - 메일링크 URL의 경우 유효시간이 존재하지 않습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetMailURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;        
end;

procedure TfrmExample.btnSendFAXClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
begin
        {**********************************************************************}
        { 현금영수증을 팩스전송합니다.                                         
        { - 팩스 전송 요청시 포인트가 차감됩니다. (전송실패시 환불처리)
        { - 전송내역 확인은 "팝빌 로그인" > [문자 팩스] > [팩스] > [전송내역]
        {   메뉴에서 전송결과를 확인할 수 있습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#SendFAX
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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnSendSMSClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
        contents : String;
begin
        {**********************************************************************}
        { 알림문자를 전송합니다. (단문/SMS- 한글 최대 45자)
        { - 알림문자 전송시 포인트가 차감됩니다. (전송실패시 환불처리)
        { - 전송내역 확인은 "팝빌 로그인" > [문자 팩스] > [문자] > [전송내역]
        {   메뉴에서 전송결과를 확인할 수 있습니다.                            ㄴ
        { - https://docs.popbill.com/cashbill/delphi/api#SendSMS
        {**********************************************************************}

        //발신번호
        sendNum := '07043042991';

        //수신번호
        receiveNum := '010-111-222';

        //문자 메시지내용, 90byte를 초과한 내용은 삭제되어 전송됩니다..
        contents := '현금영수증이 발행되었습니다. 메일 확인바랍니다.';

        try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnSendEmailClick(Sender: TObject);
var
        response : TResponse;
        email : String;
begin
        {***************************************************************}
        { 현금영수증 안내 메일을 재전송합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#SendEmail
        {***************************************************************}

        // 수신자 이메일주소
        email := 'test@test.com';

        try
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnGetDetailInfoClick(Sender: TObject);
var
        cashbill : TCashbill;
        tmp : string;
begin
        {**********************************************************************}
        { 1건의 현금영수증 상세항목을 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetDetailInfo                    
        {**********************************************************************}

        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
                exit;
        end
        else
        begin
                tmp := tmp +'mgtKey (문서번호) : ' +  cashbill.mgtKey + #13;
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
                tmp := tmp +'franchiseTaxRegID (가맹점 종사업장 식별번호) : ' +  cashbill.franchiseTaxRegID + #13;
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
end;

procedure TfrmExample.btnGetLogsClick(Sender: TObject);
var
        LogList : TCashbillLogList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 현금영수증 상태 변경이력을 확인합니다.                               }
        { - https://docs.popbill.com/cashbill/delphi/api#GetLogs
        {**********************************************************************}

        try
                LogList := cashbillService.getLogs(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'DocLogType(로그타입) | Log(이력정보) | ProcType(처리형태) | ProcMemo(처리메모) |';
                tmp := tmp + 'RegDT(등록일시) | IP(아이피)' + #13;

                for i := 0 to Length(LogList) -1 do
                begin
                    tmp := tmp + IntToStr(LogList[i].DocLogType) + ' | '
                                + LogList[i].Log + ' | '
                                + LogList[i].ProcType + ' | '
                                + LogList[i].ProcMemo + ' | '
                                + LogList[i].regDT  + ' | '
                                + LogList[i].IP + ' | ' + #13;
                end;
                ShowMessage(tmp);
        end;


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
        { - https://docs.popbill.com/cashbill/delphi/api#GetInfo
        {**********************************************************************}

        // 현금영수증 문서번호 배열 (최대 1000건)
        SetLength(KeyList,4);
        KeyList[0] := '20220106-001';
        KeyList[1] := '20220106-002';
        KeyList[2] := '20220106-003';
        KeyList[3] := '20220106-004';

        try
                InfoList := cashbillService.getInfos(txtCorpNum.text,KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                for i := 0 to Length(InfoList) -1 do
                begin
                        tmp := tmp +'itemKey (팝빌번호) : ' +  InfoList[i].itemKey + #13;
                        tmp := tmp +'mgtKey (문서번호) : ' +  InfoList[i].mgtKey + #13;
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
end;

procedure TfrmExample.btnCheckIDClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 회원가입(JoinMember API)을 호출하기 전 아이디 중복을 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckID
        {**********************************************************************}

        try
                response := cashbillService.CheckID(txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnRegistContactClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinContact;
begin
        {***************************************************************}
        { 연동회원의 담당자를 신규로 등록합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#RegistContact
        {***************************************************************}

        // [필수] 담당자 아이디 (6자 이상 50자 미만)
        joinInfo.id := 'testkorea';

        // 비밀번호 (8자 이상 20자 미만) 영문, 숫자 ,특수문자 조합
        joinInfo.Password := 'asdf123!@';

        // [필수] 담당자명(한글이나 영문 100자 이내)
        joinInfo.personName := '담당자성명';

        // [필수] 연락처 (최대 20자)
        joinInfo.tel := '070-4304-2991';

        // 휴대폰번호 (최대 20자)
        joinInfo.hp := '010-1111-2222';

        // 팩스번호 (최대 20자)
        joinInfo.fax := '02-6442-9700';

        // [필수] 이메일 (최대 100자)
        joinInfo.email := 'test@test.com';
        
        // 담당자 권한, 1-개인권한 / 2-읽기권한 / 3-회사권한
        joinInfo.searchRole := '3';

        try
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnUpdateContactClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { 연동회원의 담당자 정보를 수정합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateContact
        {**********************************************************************}

        contactInfo := TContactInfo.Create;

        // 담당자 아이디
        contactInfo.id := 'testkorea';

        // 담당자명 (최대 100자)
        contactInfo.personName := '테스트 담당자';

        // 연락처 (최대 20자)
        contactInfo.tel := '070-4304-2991';

        // 휴대폰번호 (최대 20자)
        contactInfo.hp := '010-4324-1111';

        // 이메일 주소 (최대 100자)
        contactInfo.email := 'test@test.com';

        // 팩스번호 (최대 20자)
        contactInfo.fax := '02-6442-9799';

        // 담당자 권한, 1-개인권한 / 2-읽기권한 / 3-회사권한
        contactInfo.searchRole := '3';

        try
                response := cashbillService.UpdateContact(txtCorpNum.text, contactInfo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;
end;

procedure TfrmExample.btnCancelIssue_riClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [발행완료] 상태의 현금영수증을 [발행취소] 합니다.
        { - [발행취소]는 국세청 전송 전에만 호출할 수 있습니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CancelIssue
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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;  
end;

procedure TfrmExample.btnDelete_riClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1건의 현금영수증을 삭제합니다.                                       
        { - https://docs.popbill.com/cashbill/delphi/api#Delete
        {**********************************************************************}
        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message);
        end;  
end;

procedure TfrmExample.btnRegistIssueClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TCBIssueResponse;
        memo, emailSubject : String;

begin
        {**********************************************************************}
        { 1건의 현금영수증을 즉시발행 처리합니다.                              
        { - 현금영수증 국세청 전송 정책 : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RegistIssue
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [필수] 문서 문서번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
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

        // 가맹점 종사업장 식별번호
        cashbill.franchiseTaxRegID := '';

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

        // 안내메일 제목, 미기재시 기본양식으로 전송
        emailSubject := '';

        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo, txtUserID.text, emailSubject);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 + '응답메시지 : ' + le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message + #10#13 + '국세청승인번호 : ' + response.confirmNum + #10#13 + '거래일자 : ' + response.tradeDate);
        end;   
        
end;

procedure TfrmExample.btnGetCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 연동회원의 회사정보를 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetCorpInfo
        {**********************************************************************}

        try
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'CorpName (상호) : ' + corpInfo.CorpName + #13;
                tmp := tmp + 'CeoName (대표자 성명) : ' + corpInfo.CeoName + #13;
                tmp := tmp + 'BizType (업태) : ' + corpInfo.BizType + #13;
                tmp := tmp + 'BizClass (종목) : ' + corpInfo.BizClass + #13;
                tmp := tmp + 'Addr (주소) : ' + corpInfo.Addr + #13;
                ShowMessage(tmp);
        end;   
end;

procedure TfrmExample.btnListContactClick(Sender: TObject);
var
        InfoList : TContactInfoList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 연동회원의 담당자 목록을 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#ListContact
        {**********************************************************************}

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'id(아이디) | email(이메일) | hp(휴대폰) | personName(성명) | searchRole(담당자 권한) | ';
                tmp := tmp + 'tel(연락처) | fax(팩스) | mgrYN(관리자 여부) | regDT(등록일시) | state(상태)' + #13;

                for i := 0 to Length(InfoList) -1 do
                begin
                        tmp := tmp + InfoList[i].id + ' | ';
                        tmp := tmp + InfoList[i].email + ' | ';
                        tmp := tmp + InfoList[i].hp + ' | ';
                tmp := tmp + InfoList[i].personName + ' | ';
                tmp := tmp + InfoList[i].searchRole + ' | ';
                tmp := tmp + InfoList[i].tel + ' | ';
                tmp := tmp + InfoList[i].fax + ' | ';
                tmp := tmp + BoolToStr(InfoList[i].mgrYN) + ' | ';
                tmp := tmp + InfoList[i].regDT + ' | ';
                tmp := tmp + IntToStr(InfoList[i].state) + #13;
                end;
                ShowMessage(tmp);
        end;
end;


procedure TfrmExample.btnCheckIsMemberClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 파트너의 연동회원으로 가입된 사업자번호인지 확인합니다.
        { - LinkID는 인증정보에 설정되어 있는 링크아이디 입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckIsMember     
        {**********************************************************************}
        
        try
                response := cashbillService.CheckIsMember(txtCorpNum.text, LinkID);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;
end;

procedure TfrmExample.btnGetUnitCostClick(Sender: TObject);
var
        unitcost : Single;
begin
        {**********************************************************************}
        { 현금영수증 발행단가를 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetUnitCost
        {**********************************************************************}

        try
                unitcost := cashbillService.GetUnitCost(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('현금영수증 발행단가 : '+ FloatToStr(unitcost));
        end;

end;

procedure TfrmExample.btnSearchClick(Sender: TObject);
var
        DType, SDate, EDate, QString, Order, tmp : String;
        State, TradeType, TradeUsage, TradeOpt, TaxationType : Array Of String;
        Page, PerPage, i : Integer;
        SearchList : TCashbillSearchList;
begin
        {**********************************************************************}
        { 검색조건들을 이용해 현금영수증 목록을 조회합니다. (조회기간 단위 : 최대 6개월)               
        { - https://docs.popbill.com/cashbill/delphi/api#Search
        {**********************************************************************}

        // [필수] 일자유형 { R: 등록일자, T:거래일자, I:발행일자 }
        DType := 'R';

        // [필수] 검색 시작일자, 작성형태(yyyyMMdd)
        SDate := '20220106';

        // [필수] 검색 종료일자, 작성형태(yyyyMMdd)
        EDate := '20220130';

        // 전송상태값 배열. 미기재시 전체조회, 문서상태 값 3자리의 배열, 2,3번째 자리 와일드 카드 사용가능
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
        TradeOpt[0] := 'N';
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

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'code(응답 결과코드) : '+IntToStr(SearchList.code) + #13;
                tmp := tmp + 'total(총 검색결과 건수) : '+ IntToStr(SearchList.total) + #13;
                tmp := tmp + 'perPage(페이지당 검색개수) : '+ IntToStr(SearchList.perPage) + #13;
                tmp := tmp + 'pageNum(페이지 번호) : '+ IntToStr(SearchList.pageNum) + #13;
                tmp := tmp + 'pageCount(페이지 개수) : '+ IntToStr(SearchList.pageCount) + #13;
                tmp := tmp + 'message(응답 메시지) : '+ SearchList.message + #13#13;

                tmp := tmp + 'itemKey(팝빌번호) | mgtKey(문서번호) | tradeDate(거래일자) | tradeType(문서형태) | '
                        + 'tradeUsage(거래구분) | tradeOpt(거래유형) | taxationType(과세형태) | totalAmount(거래금액) | '
                        + 'issueDT(발행일시) | regDT(등록일시) | stateMemo(상태메모) | stateCode(상태코드) | '
                        + 'stateDT(상태변경일시) | identityNum(식별번호)  | itemName(주문상품명) | '
                        + 'customerName(주문자명) | confirmNum(국세청승인번호) | orgConfirmNum(원본 현금영수증 국세청승인번호) |'
                        + 'orgTradeDate(원본 현금영수증 거래일자) | ntssendDT(국세청 전송일시) | ntsresult(국세청 처리결과) | '
                        + 'ntsresultDT(국세청 처리결과 수신일시) | ntsresultCode(국세청 처리결과 상태코드) | '
                        + 'ntsresultMessage(국세청 처리결과 메시지) | printYN(인쇄여부)  ' + #13#13;

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
end;

procedure TfrmExample.btnGetChargeInfoClick(Sender: TObject);
var
        chargeInfo : TCashbillChargeInfo;
        tmp : String;
begin
        {**********************************************************************}
        { 연동회원의 현금영수증 API 서비스 과금정보를 확인합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetChargeInfo
        {**********************************************************************}

        try
                chargeInfo := cashbillService.GetChargeInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'unitCost (단가) : ' + chargeInfo.unitCost + #13;
                tmp := tmp + 'chargeMethod (과금유형) : ' + chargeInfo.chargeMethod + #13;
                tmp := tmp + 'rateSystem (과금제도) : ' + chargeInfo.rateSystem + #13;
                ShowMessage(tmp);
        end;
end;

procedure TfrmExample.btnRevokeRegistIssueClick(Sender: TObject);
var
        response : TCBIssueResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate : String;
        smssendYN : Boolean;
begin
        {**********************************************************************}
        { 1건의 취소현금영수증을 즉시발행 처리합니다.
        { - 현금영수증 국세청 전송 정책 : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RevokeRegistIssue
        {**********************************************************************}

        // [필수] 문서 문서번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        mgtKey := txtMgtKey.Text;

        // 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        orgConfirmNum := '548757045';

        // 원본현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        orgTradeDate := '20220101';

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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message + #10#13 + '국세청승인번호 : ' + response.confirmNum + #10#13 + '거래일자 : ' + response.tradeDate);
        end; 
        
end;

procedure TfrmExample.btnGetPartnerURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { 파트너 포인트 충전 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPartnerURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPartnerURL(txtCorpNum.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end; 
end;

procedure TfrmExample.btnRevokeRegistIssue_partClick(Sender: TObject);
var
        response : TCBIssueResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate, supplyCost, tax, serviceFee, totalAmount : String;
        cancelType: Integer;
        isPartCancel, smssendYN : Boolean;
begin
        {**********************************************************************}
        { 1건의 (부분) 취소현금영수증을 즉시발행 처리합니다.
        { - 현금영수증 국세청 전송 정책 : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RevokeRegistIssue
        {**********************************************************************}

        // [필수] 문서번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        mgtKey := txtMgtKey.Text;

        // 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
        orgConfirmNum := 'TB0000367';

        // 원본현금영수증 거래일자
        // 문서 정보 (GetInfo API) 응답항목중 거래일자(tradeDate) 확인하여 기재.
        orgTradeDate := '20220105';

        // 발행안내문자 전송여부
        smssendYN := False;

        // 메모
        memo := '즉시발행 취소현금영수증 메모';

        // 취소유형, True-부분취소, False-전체취소
        isPartCancel := True;

        // 취소사유, 1-거래취소 / 2-오류발급취소 / 3-기타
        cancelType := 1;

        // [취소] 공급가액
        supplyCost := '2000';

        // [취소] 부가세
        tax := '200';

        // [취소] 봉사료
        serviceFee := '0';

        // [취소] 거래금액
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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : ' + IntToStr(response.code) + #10#13 + '응답메시지 : ' + response.Message + #10#13 + '국세청승인번호 : ' + response.confirmNum + #10#13 + '거래일자 : ' + response.tradeDate);
        end; 
end;

procedure TfrmExample.btnListEmailConfigClick(Sender: TObject);
var
        EmailConfigList : TEmailConfigList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { 현금영수증 메일전송 항목에 대한 전송여부를 목록으로 반환합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#ListEmailConfig
        {**********************************************************************}

        try
                EmailConfigList := cashbillService.ListEmailConfig(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'emailType(메일전송유형) | sendYN(전송여부)' + #13;

                for i := 0 to Length(EmailConfigList) -1 do
                begin
                    if EmailConfigList[i].EmailType = 'CSH_ISSUE' then
                        tmp := tmp + 'CSH_ISSUE (고객에게 현금영수증이 발행 되었음을 알려주는 메일) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;

                    if EmailConfigList[i].EmailType = 'CSH_CANCEL' then
                        tmp := tmp + 'CSH_CANCEL (고객에게 현금영수증이 발행취소 되었음을 알려주는 메일) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;
                end;
                
                ShowMessage(tmp);
        end;
end;

procedure TfrmExample.btnUpdateEmailConfigClick(Sender: TObject);
var
        response : TResponse;
        EmailType : String;
        SendYN    : Boolean;
begin
        {**********************************************************************}
        { 현금영수증 메일전송 항목에 대한 전송여부를 수정합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateEmailConfig
        {
        { 메일전송유형
        {  CSH_ISSUE : 고객에게 현금영수증이 발행 되었음을 알려주는 메일
        {  CSH_CANCEL : 고객에게 현금영수증이 발행취소 되었음을 알려주는 메일
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
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end;    
end;

procedure TfrmExample.Button1Click(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 PDF 다운로드 팝업 URL을 반환합니다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPDFURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPDFURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnAssignMgtKeyClick(Sender: TObject);
var
        response : TResponse;
        mgtKey, itemKey : String;
begin
        {**********************************************************************}
        { 팝빌 사이트에서 작성된 현금영수증에 파트너의 문서번호를 할당합니다.
        { - https://docs.popbill.com/cashbill/delphi/api#AssignMgtKey
        {**********************************************************************}

        // 현금영수증 아이템키 (Search) API의 반환항목중 ItemKey 참조
        itemKey := '020021917480600001';

        // 문서번호, 숫자, 영문, '-', '_' 조합으로 최대 24자리 구성.
        // 사업자번호별로 중복없는 고유번호 할당.
        mgtKey := '20220105-22';

        try
                response := cashbillService.AssignMgtKey(txtCorpNum.text, itemKey, mgtKey);
        except
                on le : EPopbillException do begin
                        ShowMessage('오류코드 : '+ IntToStr(le.code) + #10#13 +'오류메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('응답코드 : '+ IntToStr(response.code) + #10#13 +'응답메시지 : '+  response.Message);
        end
        
end;

procedure TfrmExample.btnGetViewURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1건의 현금영수증 보기 팝업 URL을 반환합니다. (메뉴/버튼 제외)
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초입니다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetViewURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getViewURL(txtCorpNum.Text, txtMgtKey.Text);
                txtURL.text := resultURL;                
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL : ' + #13 + resultURL);
        end;
end;

procedure TfrmExample.btnGetPaymentURLClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 연동회원 포인트 결제내역 팝업 URL을 반환한다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초이다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPaymentURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPaymentURL(txtCorpNum.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 +'응답메시지 : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL :  ' + #13 + resultURL);
        end
end;

procedure TfrmExample.btnGetUseHistoryURLClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { 연동회원 포인트 사용내역 팝업 URL을 반환한다.
        { - 보안정책으로 인해 반환된 URL의 유효시간은 30초이다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetUseHistoryURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getUseHistoryURL(txtCorpNum.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 +'응답메시지 : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('URL :  ' + #13 + resultURL);
        end
end;

procedure TfrmExample.btnGetContactInfoClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        contactID : string;
        tmp : string;
begin
        {**********************************************************************}
        { 연동회원 사업자번호에 등록된 담당자 정보를 확인한다.
        { - https://docs.popbill.com/cashbill/delphi/api#GetContactInfo
        {**********************************************************************}

        contactID := 'testkorea';
        
        try
                contactInfo := cashbillService.getContactInfo(txtCorpNum.Text, contactID);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : ' + IntToStr(le.code) + #10#13 +'응답메시지 : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('응답코드 : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'응답메시지 : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'id (아이디) : ' + contactInfo.id + #13;
                tmp := tmp + 'personName (담당자 성명) : ' + contactInfo.personName + #13;
                tmp := tmp + 'tel (담당자 연락처(전화번호)) : ' + contactInfo.tel + #13;
                tmp := tmp + 'hp (담당자 휴대폰번호) : ' + contactInfo.hp + #13;
                tmp := tmp + 'fax (담당자 팩스번호) : ' + contactInfo.fax + #13;
                tmp := tmp + 'email (담당자 이메일) : ' + contactInfo.email + #13;
                tmp := tmp + 'regDT (등록 일시) : ' + contactInfo.regDT + #13;
                tmp := tmp + 'searchRole (담당자 권한) : ' + contactInfo.searchRole + #13;
                tmp := tmp + 'mgrYN (관리자 여부) : ' + booltostr(contactInfo.mgrYN) + #13;
                tmp := tmp + 'state (계정상태) : ' + inttostr(contactInfo.state) + #13;
                ShowMessage(tmp);
        end
end;

end.

