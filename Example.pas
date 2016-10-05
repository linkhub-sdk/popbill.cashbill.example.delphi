unit Example;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TypInfo, Popbill, PopbillCashbill, ExtCtrls;

const
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
    btnGetPopbillURL_CHRG: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    txtMgtKey: TEdit;
    btnCheckMgtkeyInUse: TButton;
    btnRegister: TButton;
    btnUpdate: TButton;
    Panel1: TPanel;
    btnIssue: TButton;
    btnCancelIssue: TButton;
    btnDelete: TButton;
    GroupBox5: TGroupBox;
    btnGetInfo: TButton;
    btnGetInfos: TButton;
    btnGetLogs: TButton;
    btnGetDetailInfo: TButton;
    btnSendEmail: TButton;
    btnSendSMS: TButton;
    btnSendFAX: TButton;
    btnGetPopUpURL: TButton;
    btnGetPrintURL: TButton;
    btnGetEPrintURL: TButton;
    btnGetMassPrintURL: TButton;
    btnGetMailURL: TButton;
    btnGetURL_WRITE: TButton;
    btnGetURL_TBOX: TButton;
    btnGetURL_PBOX: TButton;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label3: TLabel;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Label4: TLabel;
    btnGetBalance: TButton;
    btnCheckID: TButton;
    btnCheckIsMember: TButton;
    btnGetPartnerBalance: TButton;
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
    Shape5: TShape;
    btnGetUnitCost: TButton;
    btnSearch: TButton;
    btnGetChargeInfo: TButton;
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

        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.

        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, txtUserID.Text, 'LOGIN');
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
       try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text, txtUserID.Text);
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
        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [필수] 거래유형, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [취소거래시 필수] 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
//      cashbill.orgConfirmNum := 'E95069345';

        // [필수] 발행자 사업자 번호, '-' 제외 10자리       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [필수] 현금영수증 형태, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // [필수] 거래처 식별번호
        // 거래유형(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래유형(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '01043245117';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 공급가액
        cashbill.supplycost := '10000';
        
        // [필수] 세액
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 합계금액
        cashbill.totalAmount := '11000';

        
        // 발행자 상호
        cashbill.franchiseCorpName := '발행자상호';

        // 발행자 대표자명
        cashbill.franchiseCEOName := '발행자 대표자';

        // 발행자 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 발행자 연락처
        cashbill.franchiseTEL := '07043042991';


        // 고객명
        cashbill.customerName := '고객명';

        // 상품명
        cashbill.itemName := '상품명';
        
        // 가맹점 주문번호
        cashbill.orderNumber := '주문번호';

        // 고객 이메일주소
        cashbill.email := 'test@test.com';

        // 고객 팩스번호
        cashbill.fax := '777-444-333';

        // 고객 휴대폰번호
        cashbill.hp := '010-111-222';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        try
                response := cashbillService.Register(txtCorpNum.text, cashbill, txtUserID.Text);
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
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text, corpInfo, txtUserID.Text);
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
        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.
        
        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, txtUserID.Text, 'CHRG');
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
        // 현금영수증 수정은 [임시저장] 상태인 경우에만 가능합니다.

        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [필수] 거래유형, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [취소거래시 필수] 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
//      cashbill.orgConfirmNum := 'E95069345';

        // [필수] 발행자 사업자 번호, '-' 제외 10자리       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [필수] 현금영수증 형태, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // [필수] 거래처 식별번호
        // 거래유형(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래유형(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '01043245117';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 공급가액
        cashbill.supplycost := '10000';
        
        // [필수] 세액
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 합계금액
        cashbill.totalAmount := '11000';

        
        // 발행자 상호
        cashbill.franchiseCorpName := '발행자상호_수정';

        // 발행자 대표자명
        cashbill.franchiseCEOName := '발행자 대표자_수정';

        // 발행자 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 발행자 연락처
        cashbill.franchiseTEL := '07043042991';


        // 고객명
        cashbill.customerName := '고객명';

        // 상품명
        cashbill.itemName := '상품명';
        
        // 가맹점 주문번호
        cashbill.orderNumber := '주문번호';

        // 고객 이메일주소
        cashbill.email := 'test@test.com';

        // 고객 팩스번호
        cashbill.fax := '777-444-333';

        // 고객 휴대폰번호
        cashbill.hp := '010-111-222';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        try
                response := cashbillService.Update(txtCorpNum.text, txtMgtKey.text, cashbill,txtUserID.Text);
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
        // 메모
        memo := '발행메모';
        
        try
                response := cashbillService.Issue(txtCorpNum.text,txtMgtKey.Text, memo, txtUserID.Text);
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
        // 메모
        memo := '발행취소 메모';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo, txtUserID.Text);
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
        { 현금영수증 문서정보(GetInfo API)의 응답항목에 관한 자세한 사항은     }
        { - "[현금영수증 API 연동매뉴얼] > 4.2. 현금영수증 상태정보 구성" 을   }
        {   참조  하시기 바랍니다.                                             }
        {**********************************************************************}

        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := tmp +'itemKey : ' +  cashbillInfo.itemKey + #13;
        tmp := tmp +'mgtKey : ' +  cashbillInfo.mgtKey + #13;
        tmp := tmp +'tradeDate : ' +  cashbillInfo.tradeDate + #13;
        tmp := tmp +'tradeUsage : ' +  cashbillInfo.tradeUsage + #13;
        tmp := tmp +'issueDT : ' +  cashbillInfo.issueDT + #13;
        tmp := tmp +'customerName : ' +  cashbillInfo.customerName + #13;
        tmp := tmp +'itemName : ' +  cashbillInfo.itemName + #13;
        tmp := tmp +'identityNum : ' +  cashbillInfo.identityNum + #13;
        tmp := tmp +'taxationType : ' +  cashbillInfo.taxationType + #13;

        tmp := tmp +'totalAmount : ' +  cashbillInfo.totalAmount + #13;
        tmp := tmp +'tradeType : ' +  cashbillInfo.tradeType + #13;
        tmp := tmp +'stateCode : ' +  IntToStr(cashbillInfo.stateCode) + #13;
        tmp := tmp +'stateDT : ' +  cashbillInfo.stateDT + #13;

        tmp := tmp +'confirmNum : ' +  cashbillInfo.confirmNum + #13;
        tmp := tmp +'orgTradeDate : ' +  cashbillInfo.orgTradeDate + #13;
        tmp := tmp +'orgConfirmNum : ' +  cashbillInfo.orgConfirmNum + #13;

        tmp := tmp +'ntssendDT : ' +  cashbillInfo.ntssendDT + #13;
        tmp := tmp +'ntsresult : ' +  cashbillInfo.ntsresult + #13;
        tmp := tmp +'ntsresultDT : ' +  cashbillInfo.ntsresultDT + #13;
        tmp := tmp +'ntsresultCode : ' +  cashbillInfo.ntsresultCode + #13;
        tmp := tmp +'ntsresultMessage : ' +  cashbillInfo.ntsresultMessage + #13;
        tmp := tmp +'stateDT : ' +  cashbillInfo.stateDT + #13;

        tmp := tmp +'printYN : ' +  IfThen(cashbillInfo.printYN,'true','false') + #13;        

        ShowMessage(tmp);
end;

procedure TfrmExample.btnGetURL_TBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'TBOX');
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
        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'PBOX');
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
        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다. 

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'WRITE');
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

        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
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

        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
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

       // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
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
        // 반환되는 URL은 보안 정책으로 인해 30초의 유효시간을 갖습니다.

        // 인쇄할 현금영수증 문서관리번호 배열, 최대 100건
        SetLength(KeyList,4);
        KeyList[0] := '20161004-01';
        KeyList[1] := '20161004-02';
        KeyList[2] := '20161004-03';
        KeyList[3] := '20161004-04';
        
        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList, txtUserID.Text);
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
        // 메일링크 URL은 유효시간이 존재하지 않습니다.
        
        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
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
        //팩스 발신번호
        sendNum := '070-4304-2991';

        //팩스 수신번호                                                
        receiveNum := '070-111-222';

        try
                response := cashbillService.SendFAX(txtCorpNum.text, txtMgtKey.Text, sendNum, receiveNum, txtUserID.Text);
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
        //발신번호
        sendNum := '07043042991';
        
        //수신번호
        receiveNum := '010-111-222';

        //문자 메시지내용, 90byte를 초과한 내용은 삭제되어 전송됩니다.
        contents := '현금영수증이 발행되었습니다. 메일 확인바랍니다.';
        
        try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents, txtUserID.Text);
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
        // 수신메일주소
        email := 'test@test.com';

        try
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email, txtUserID.Text);
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
        { 현금영수증 문서정보(GetInfo API)의 응답항목에 관한 자세한 사항은     }
        { - "[현금영수증 API 연동매뉴얼] > 4.1. 현금영수증 구성" 을 참조하여   }
        {   주시기 바랍니다.                                                   }
        {**********************************************************************}

        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := tmp +'mgtKey : ' +  cashbill.mgtKey + #13;
        tmp := tmp +'tradeType : ' +  cashbill.tradeType + #13;
        tmp := tmp +'tradeUsage : ' +  cashbill.tradeUsage + #13;
        tmp := tmp +'taxactionType : ' +  cashbill.taxationType + #13;
        tmp := tmp +'tradeDate : ' +  cashbill.tradeDate + #13;

        tmp := tmp +'supplyCost : ' +  cashbill.supplyCost + #13;
        tmp := tmp +'tax : ' +  cashbill.tax + #13;
        tmp := tmp +'serviceFee : ' +  cashbill.serviceFee + #13;
        tmp := tmp +'totalAmount : ' +  cashbill.totalAmount + #13;
        tmp := tmp +'franchiseCorpNum : ' +  cashbill.franchiseCorpNum + #13;
        tmp := tmp +'franchiseCorpName : ' +  cashbill.franchiseCorpName + #13;
        tmp := tmp +'franchiseCEOName : ' +  cashbill.franchiseCEOName + #13;
        tmp := tmp +'franchiseAddr : ' +  cashbill.franchiseAddr + #13;
        tmp := tmp +'franchiseTEL : ' +  cashbill.franchiseTEL + #13;

        tmp := tmp +'identityNum : ' +  cashbill.identityNum + #13;
        tmp := tmp +'customerName : ' +  cashbill.customerName + #13;
        tmp := tmp +'itemName : ' +  cashbill.itemName + #13;
        tmp := tmp +'orderNumber : ' +  cashbill.orderNumber + #13;
        tmp := tmp +'hp : ' +  cashbill.hp + #13;
        tmp := tmp +'fax : ' +  cashbill.fax + #13;
        tmp := tmp +'confirmNum : ' +  cashbill.confirmNum + #13;
        tmp := tmp +'orgConfirmNum : ' +  cashbill.orgConfirmNum + #13;
        tmp := tmp +'orgTradeDate : ' +  cashbill.orgTradeDate + #13;

        tmp := tmp +'smssendYN : ' +  IfThen(cashbill.smssendYN,'true','false') + #13;
        tmp := tmp +'faxsendYN : ' +  IfThen(cashbill.faxsendYN,'true','false') + #13;
        
        ShowMessage(tmp);

end;

procedure TfrmExample.btnGetLogsClick(Sender: TObject);
var
        LogList : TCashbillLogList;
        tmp : string;
        i : Integer;
begin
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
        { 현금영수증 문서정보(GetInfos API)의 응답항목에 관한 자세한 사항은     }
        { - "[현금영수증 API 연동매뉴얼] > 4.2. 현금영수증 상태정보 구성" 을   }
        {   참조  하시기 바랍니다.                                             }
        {**********************************************************************}

        // 현금영수증 문서관리번호 배열, 최대 1000건
        SetLength(KeyList,4);
        KeyList[0] := '20161004-01';
        KeyList[1] := '20161004-02';
        KeyList[2] := '20161004-03';
        KeyList[3] := '20161004-04';
        
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
                tmp := tmp +'itemKey : ' +  InfoList[i].itemKey + #13;
                tmp := tmp +'mgtKey : ' +  InfoList[i].mgtKey + #13;
                tmp := tmp +'tradeDate : ' +  InfoList[i].tradeDate + #13;
                tmp := tmp +'tradeUsage : ' +  InfoList[i].tradeUsage + #13;
                tmp := tmp +'issueDT : ' +  InfoList[i].issueDT + #13;
                tmp := tmp +'customerName : ' +  InfoList[i].customerName + #13;
                tmp := tmp +'itemName : ' +  InfoList[i].itemName + #13;
                tmp := tmp +'identityNum : ' +  InfoList[i].identityNum + #13;
                tmp := tmp +'taxationType : ' +  InfoList[i].taxationType + #13;

                tmp := tmp +'totalAmount : ' +  InfoList[i].totalAmount + #13;
                tmp := tmp +'tradeType : ' +  InfoList[i].tradeType + #13;
                tmp := tmp +'stateCode : ' +  IntToStr(InfoList[i].stateCode) + #13;
                tmp := tmp +'stateDT : ' +  InfoList[i].stateDT + #13;

                tmp := tmp +'confirmNum : ' +  InfoList[i].confirmNum + #13;
                tmp := tmp +'orgTradeDate : ' +  InfoList[i].orgTradeDate + #13;
                tmp := tmp +'orgConfirmNum : ' +  InfoList[i].orgConfirmNum + #13;

                tmp := tmp +'ntssendDT : ' +  InfoList[i].ntssendDT + #13;
                tmp := tmp +'ntsresult : ' +  InfoList[i].ntsresult + #13;
                tmp := tmp +'ntsresultDT : ' +  InfoList[i].ntsresultDT + #13;
                tmp := tmp +'ntsresultCode : ' +  InfoList[i].ntsresultCode + #13;
                tmp := tmp +'ntsresultMessage : ' +  InfoList[i].ntsresultMessage + #13;
                tmp := tmp +'stateDT : ' +  InfoList[i].stateDT + #13;

                tmp := tmp +'printYN : ' +  IfThen(InfoList[i].printYN,'true','false') + #13 + #13;

        end;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnCheckIDClick(Sender: TObject);
var
        response : TResponse;
begin
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
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo, txtUserID.text);
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
        contactInfo := TContactInfo.Create;

        // 담당자명
        contactInfo.personName := '테스트 담당자';

        // 연락처
        contactInfo.tel := '070-7510-3710';

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
        // 발행취소 메모
        memo := '발행취소 메모';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo, txtUserID.Text);
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
       try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text, txtUserID.Text);
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
        cashbill := TCashbill.Create;

        // [필수] 문서 관리번호 1~24자리, 영문, 숫자, '-', '_' 조합하여 구성
        // 사업자별로 중복되지 않도록 구성
        cashbill.MgtKey := txtMgtKey.Text;

        // [필수] 거래유형, [승인거래, 취소거래] 중 기재
        cashbill.tradeType := '승인거래';

        // [취소거래시 필수] 원본현금영수증 국세청 승인번호
        // 문서 정보 (GetInfo API) 응답항목중 국세청승인번호(confirmNum) 확인하여 기재.
//      cashbill.orgConfirmNum := 'E95069345';

        // [필수] 발행자 사업자 번호, '-' 제외 10자리       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [필수] 현금영수증 형태, [소득공제용, 지출증빙용] 중 기재
        cashbill.tradeUsage := '소득공제용';

        // [필수] 거래처 식별번호
        // 거래유형(tradeUsage)이 '소득공제용'인 경우 [주민등록/휴대폰/카드]번호로 발행가능
        // 거래유형(traseUsage)이 '지출증빙용'인 경우 [주민등록/휴대폰/카드/사업자]번호로 발행가능
        cashbill.identityNum := '01043245117';

        // [필수] 과세형태, [과세, 비과세] 중 기재
        cashbill.taxationType := '과세';

        // [필수] 공급가액
        cashbill.supplycost := '10000';
        
        // [필수] 세액
        cashbill.tax := '1000';

        // [필수] 봉사료
        cashbill.serviceFee := '0';

        // [필수] 합계금액
        cashbill.totalAmount := '11000';

        
        // 발행자 상호
        cashbill.franchiseCorpName := '발행자상호';

        // 발행자 대표자명
        cashbill.franchiseCEOName := '발행자 대표자';

        // 발행자 주소
        cashbill.franchiseAddr := '발행자 주소';

        // 발행자 연락처
        cashbill.franchiseTEL := '07043042991';


        // 고객명
        cashbill.customerName := '고객명';

        // 상품명
        cashbill.itemName := '상품명';
        
        // 가맹점 주문번호
        cashbill.orderNumber := '주문번호';

        // 고객 이메일주소
        cashbill.email := 'test@test.com';

        // 고객 팩스번호
        cashbill.fax := '777-444-333';

        // 고객 휴대폰번호
        cashbill.hp := '010-111-222';

        // 발행안내문자 전송여부
        cashbill.smssendYN := False;

        // 메모
        memo := '즉시발행 현금영수증 메모';
                
        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo, txtUserID.Text);
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
        try
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text, txtUserID.Text);
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

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text, txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('응답코드 : '+ IntToStr(le.code) + #10#13 +'응답메시지 : '+  le.Message);
                        Exit;
                end;
        end;
        
        tmp := 'id | email | hp | personName | searchAllAlloyYN | tel | fax | mgrYN | regDT' + #13;
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
            tmp := tmp + InfoList[i].regDT + #13;
        end;

        ShowMessage(tmp);

end;


procedure TfrmExample.btnCheckIsMemberClick(Sender: TObject);
var
        response : TResponse;
begin
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
        DType : String;
        SDate : String;
        EDate : String;
        State : Array Of String;
        TradeType : Array Of String;
        TradeUsage : Array Of String;
        TaxationType : Array Of String;
        QString : String;
        Page : Integer;
        PerPage : Integer;
        Order : String;
        tmp : String;
        i : integer;
        SearchList : TCashbillSearchList;
begin

        // [필수] 일자유형 { R: 등록일자, W:작성일자, I:발행일자 }
        DType := 'I';

        // [필수] 검색 시작일자, 작성형태(yyyyMMdd)
        SDate := '20160901';

        // [필수] 검색 종료일자, 작성형태(yyyyMMdd)
        EDate := '20161031';

        // 전송상태값 배열. 미기재시 전체조회, 문서상태 값 3자리의 배열, 2,3번째 자리 와일드 카드 사용가능
        // 전송상태값 테이블은 [현금영수증 연동매뉴얼 > 5.2 현금영수증 상태코드 테이블] 참조
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
                                QString, Page, PerPage,Order);
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

        tmp := tmp + 'itemKey | mgtKey | tradeDate | tradeUsage | issueDT | customerName | itemName | identityNum | taxationType | totalAmount | tradeType | stateCode | stateDT | confirmNum '
                  +'| ntssendDT | ntsresult | ntsresultDT | ntsresultCode | ntsMessage | stateDT | printYN  ' + #13#13;
        for i := 0 to Length(SearchList.list) -1 do
        begin
                tmp := tmp + SearchList.list[i].itemKey + ' | ';
                tmp := tmp + SearchList.list[i].mgtKey +' | ';
                tmp := tmp + SearchList.list[i].tradeDate + ' | ';
                tmp := tmp + SearchList.list[i].tradeUsage + ' | ';
                tmp := tmp + SearchList.list[i].issueDT + ' | ';
                tmp := tmp + SearchList.list[i].customerName +' | ';
                tmp := tmp + SearchList.list[i].itemName + ' | ';
                tmp := tmp + SearchList.list[i].identityNum + ' | ';
                tmp := tmp + SearchList.list[i].taxationType + ' | ';

                tmp := tmp + SearchList.list[i].totalAmount + ' | ';
                tmp := tmp + SearchList.list[i].tradeType + ' | ';
                tmp := tmp + IntToStr(SearchList.list[i].stateCode) + ' | ';
                tmp := tmp + SearchList.list[i].stateDT + ' | ';

                tmp := tmp + SearchList.list[i].confirmNum + ' | ';

                tmp := tmp + SearchList.list[i].ntssendDT + ' | ';
                tmp := tmp + SearchList.list[i].ntsresult + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultDT + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultCode + ' | ';
                tmp := tmp + SearchList.list[i].ntsresultMessage + ' | ';
                tmp := tmp + SearchList.list[i].stateDT + ' | ';

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

end.
