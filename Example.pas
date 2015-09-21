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
    btnGetUnitCost: TButton;
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
    procedure FormCreate(Sender: TObject);
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
        
        //연동환경 설정값, true(테스트용), false(상업용)
        cashbillService.IsTest := true;
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
        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text,txtUserID.Text,'LOGIN');
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                response := cashbillService.Delete(txtCorpNum.text,txtMgtKey.Text,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;

procedure TfrmExample.btnRegisterClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        cashbill := TCashbill.Create;

        cashbill.MgtKey := txtMgtKey.Text;             // [필수] 문서 관리번호 1~24자리 기재. 영문, 숫자 , '-', '_'중 기재
        cashbill.tradeType := '승인거래';              // 승인거래, 취소거래 중 기재
//      cashbill.orgConfirmNum := 'E95069345';         // [취소거래시 필수] 취소거래시 원본현금영수증 국세청 승인번호 기재        
        cashbill.franchiseCorpNum := txtCorpNum.Text;  // [필수] 발행자 사업자 번호
        cashbill.franchiseCorpName := '발행자상호';
        cashbill.franchiseCEOName := '발행자 대표자';
        cashbill.franchiseAddr := '발행자 주소';
        cashbill.franchiseTEL := '07075103710';

        cashbill.tradeUsage := '소득공제용';           // [필수] 현금영수증 형태, 소득공제용, 지출증빙용 중 기재
        cashbill.identityNum := '01043245117';         // [필수] 거래처 식별번호
        cashbill.customerName := '고객명';
        cashbill.orderNumber := '주문번호';
        cashbill.email := 'test@test.com';
        cashbill.hp := '010-111-222';
        cashbill.fax := '777-444-333';
        cashbill.itemName := '항목명';
        cashbill.serviceFee := '0';                  // [필수] 봉사료
        cashbill.supplycost := '10000';              // [필수] 공급가액
        cashbill.tax := '1000';                      // [필수] 세액
        cashbill.totalAmount := '11000';             // [필수] 합계금액

        cashbill.taxationType := '과세';             // [필수] 과세, 비과세 중 기재
        cashbill.smssendYN := False;                 // 알림문자 전송여부

        try
                response := cashbillService.Register(txtCorpNum.text, cashbill,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;


procedure TfrmExample.btnJoinMemberClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinForm;
begin
        joinInfo.LinkID := LinkID; //파트너 아이디
        joinInfo.CorpNum := '1231212312'; //사업자번호 '-' 제외.
        joinInfo.CEOName := '대표자성명';
        joinInfo.CorpName := '상호';
        joinInfo.Addr := '주소';
        joinInfo.ZipCode := '500-100';
        joinInfo.BizType := '업태';
        joinInfo.BizClass := '업종';
        joinInfo.ID     := 'userid';  //6자 이상 20자 미만.
        joinInfo.PWD    := 'pwd_must_be_long_enough'; //6자 이상 20자 미만.
        joinInfo.ContactName := '담당자명';
        joinInfo.ContactTEL :='02-999-9999';
        joinInfo.ContactHP := '010-1234-5678';
        joinInfo.ContactFAX := '02-999-9998';
        joinInfo.ContactEmail := 'test@test.com';

        try
                response := cashbillService.JoinMember(joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
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

        corpInfo.ceoname := '대표자명';         //대표자명
        corpInfo.corpName := '링크허브_현금영수증';    // 회사명
        corpInfo.bizType := '업태';             // 업태
        corpInfo.bizClass := '업종';            // 업종
        corpInfo.addr := '서울특별시 강남구 영동대로 517';  // 주소

        try
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text,corpInfo,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnGetBalanceClick(Sender: TObject);
var
        balance : Double;
begin
         try
                balance := cashbillService.GetBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('현금영수증 발행단가 : '+ FloatToStr(unitcost));

end;

procedure TfrmExample.btnGetPopbillURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text,txtUserID.Text,'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                InUse := cashbillService.CheckMgtKeyInUse(txtCorpNum.text,txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
        cashbill := TCashbill.Create;

        cashbill.MgtKey := txtMgtKey.Text;             // [필수] 문서 관리번호 1~24자리 기재. 영문, 숫자 , '-', '_'중 기재
        cashbill.tradeType := '승인거래';              // 승인거래, 취소거래 중 기재
//      cashbill.orgConfirmNum := 'E95069345';         // [취소거래시 필수] 취소거래시 원본현금영수증 국세청 승인번호 기재        
        cashbill.franchiseCorpNum := txtCorpNum.Text;  // [필수] 발행자 사업자 번호
        cashbill.franchiseCorpName := '발행자상호_수정';
        cashbill.franchiseCEOName := '발행자 대표자_수정';
        cashbill.franchiseAddr := '발행자 주소';
        cashbill.franchiseTEL := '07075103710';

        cashbill.tradeUsage := '소득공제용';           // [필수] 현금영수증 형태, 소득공제용, 지출증빙용 중 기재
        cashbill.identityNum := '01043245117';         // [필수] 거래처 식별번호
        cashbill.customerName := '고객명';
        cashbill.orderNumber := '주문번호';
        cashbill.email := 'test@test.com';
        cashbill.hp := '010-111-222';
        cashbill.fax := '777-444-333';
        cashbill.itemName := '항목명';
        cashbill.serviceFee := '0';                  // [필수] 봉사료
        cashbill.supplycost := '10000';              // [필수] 공급가액
        cashbill.tax := '1000';                      // [필수] 세액
        cashbill.totalAmount := '11000';             // [필수] 합계금액

        cashbill.taxationType := '과세';             // [필수] 과세, 비과세 중 기재
        cashbill.smssendYN := False;                 // 알림문자 전송여부
        try
                response := cashbillService.Update(txtCorpNum.text, txtMgtKey.text, cashbill,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;

procedure TfrmExample.btnIssueClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.Issue(txtCorpNum.text,txtMgtKey.Text,'발행 메모', txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnCancelIssueClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.CancelIssue(txtCorpNum.text,txtMgtKey.Text,'발행취소 메모', txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnGetInfoClick(Sender: TObject);
var
        cashbillInfo : TCashbillInfo;
        tmp : string;
begin
        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text,txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text,txtUserID.Text,'TBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetURL_PBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text,txtUserID.Text,'PBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetURL_WRITEClick(Sender: TObject);
var
        resultURL : String;
begin
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text,txtUserID.Text,'WRITE');
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnGetPopUpURLClick(Sender: TObject);
var
  resultURL : String;
begin
        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text,txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);

end;

procedure TfrmExample.btnGetPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text,txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);

end;

procedure TfrmExample.btnGetEPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text,txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
        SetLength(KeyList,2);
        KeyList[0] := '1234';
        KeyList[1] := '123';
        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text,KeyList,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);

end;

procedure TfrmExample.btnGetMailURLClick(Sender: TObject);
var
  resultURL : String;
begin
        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text,txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('ResultURL is ' + #13 + resultURL);
end;

procedure TfrmExample.btnSendFAXClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.SendFAX(txtCorpNum.text,txtMgtKey.Text,'080-1234-2222','090-4321-1234' , txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnSendSMSClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text,'070-7510-3710','010-4324-5117','문자메시지 내용' , txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnSendEmailClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.SendEmail(txtCorpNum.text,txtMgtKey.Text,'test@test.com' , txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnGetDetailInfoClick(Sender: TObject);
var
        cashbill : TCashbill;
        tmp : string;
begin
        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text,txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                LogList := cashbillService.getLogs(txtCorpNum.text,txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        tmp := 'DocLogType | Log | ProcType | ProcCorpName | ProcMemo | RegDT | IP' + #13;
        
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
        SetLength(KeyList,2);
        KeyList[0] := '20150428-01';
        KeyList[1] := '123';
        try
                InfoList := cashbillService.getInfos(txtCorpNum.text,KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);


end;

procedure TfrmExample.btnRegistContactClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinContact;
begin
        joinInfo.id := 'userid';                        // [필수] 아이디 (6자 이상 20자 미만)
        joinInfo.pwd := 'thisispassword';               // [필수] 비밀번호 (6자 이상 20자 미만)
        joinInfo.personName := '담당자성명';            // [필수] 담당자명(한글이나 영문 30자 이내)
        joinInfo.tel := '070-7510-3710';                // [필수] 연락처
        joinInfo.hp := '010-1111-2222';                 // 휴대폰번호
        joinInfo.fax := '02-6442-9700';                 // 팩스번호
        joinInfo.email := 'test@test.com';              // [필수] 이메일
        joinInfo.searchAllAllowYN := false;             // 조회권한(true 회사조회/ false 개인조회)
        joinInfo.mgrYN     := false;                    // 관리자 권한여부 

        try
                response := cashbillService.RegistContact(txtCorpNum.text,joinInfo,txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;


procedure TfrmExample.btnUpdateContactClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        response : TResponse;
begin
        contactInfo := TContactInfo.Create;

        contactInfo.personName := '테스트 담당자';      // 담당자명
        contactInfo.tel := '070-7510-3710';             // 연락처
        contactInfo.hp := '010-4324-1111';              // 휴대폰번호
        contactInfo.email := 'test@test.com';           // 이메일 주소
        contactInfo.fax := '02-6442-9799';              // 팩스번호
        contactInfo.searchAllAllowYN := true;           // 회사조회 권한여부
        contactInfo.mgrYN := false;                     // 관리자 전환 여부 

        try
                response := cashbillService.UpdateContact(txtCorpNum.text,contactInfo,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;


procedure TfrmExample.btnCancelIssue_riClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.CancelIssue(txtCorpNum.text,txtMgtKey.Text,'발행취소 메모', txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);

end;

procedure TfrmExample.btnDelete_riClick(Sender: TObject);
var
        response : TResponse;
begin
       try
                response := cashbillService.Delete(txtCorpNum.text,txtMgtKey.Text,txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
end;

procedure TfrmExample.btnRegistIssueClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
        memo : String;
begin
        cashbill := TCashbill.Create;

        cashbill.MgtKey := txtMgtKey.Text;             // [필수] 문서 관리번호 1~24자리 기재. 영문, 숫자 , '-', '_'중 기재
        cashbill.tradeType := '승인거래';              // [필수]승인거래, 취소거래 중 기재
//      cashbill.orgConfirmNum := 'E95069345';         // [취소거래시 필수] 취소거래시 원본현금영수증 국세청 승인번호 기재        
        cashbill.franchiseCorpNum := txtCorpNum.Text;  // [필수] 발행자 사업자 번호
        cashbill.franchiseCorpName := '발행자상호';
        cashbill.franchiseCEOName := '발행자 대표자';
        cashbill.franchiseAddr := '발행자 주소';
        cashbill.franchiseTEL := '07075103710';

        cashbill.tradeUsage := '소득공제용';           // [필수] 현금영수증 형태, 소득공제용, 지출증빙용 중 기재
        cashbill.identityNum := '01043245117';         // [필수] 거래처 식별번호
        cashbill.customerName := '고객명';
        cashbill.orderNumber := '주문번호';
        cashbill.email := 'test@test.com';
        cashbill.hp := '010-111-222';
        cashbill.fax := '777-444-333';
        cashbill.itemName := '항목명';
        cashbill.serviceFee := '0';                  // [필수] 봉사료
        cashbill.supplycost := '10000';              // [필수] 공급가액
        cashbill.tax := '1000';                      // [필수] 세액
        cashbill.totalAmount := '11000';             // [필수] 합계금액

        cashbill.taxationType := '과세';             // [필수] 과세, 비과세 중 기재
        cashbill.smssendYN := False;                 // 알림문자 전송여부

        try
                memo := '즉시발행 현금영수증 메모';
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        ShowMessage(IntToStr(response.code) + ' | ' +  response.Message);
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
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
                        Exit;
                end;
        end;

        tmp := 'CorpName : ' + corpInfo.CorpName + #13;
        tmp := tmp + 'CeoName : ' + corpInfo.CeoName + #13;
        tmp := tmp + 'BizType : ' + corpInfo.BizType + #13;
        tmp := tmp + 'BizClass : ' + corpInfo.BizClass + #13;
        tmp := tmp + 'Addr : ' + corpInfo.Addr + #13;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnListContactClick(Sender: TObject);
var
        InfoList : TContactInfoList;
        tmp : string;
        i : Integer;
begin

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text,txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage(IntToStr(le.code) + ' | ' +  le.Message);
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


end.
