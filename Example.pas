{******************************************************************************}
{ �˺� ���ݿ����� API Delphi SDK Example                                       }
{                                                                              }
{ - ������ SDK ������ �ȳ� : https://docs.popbill.com/cashbill/tutorial/delphi }
{ - ������Ʈ ���� : 2022-01-06                                                 }
{ - ���� ������� ����ó : 1600-9854                                           }
{ - ���� ������� �̸��� : code@linkhubcorp.com                                }
{                                                                              }
{ <�׽�Ʈ �������� �غ����>                                                   }
{ (1) 31, 34�� ���ο� ����� ��ũ���̵�(LinkID)�� ���Ű(SecretKey)��          }
{    ��ũ��� ���Խ� ���Ϸ� �߱޹��� ���������� ����                           }
{                                                                              }
{******************************************************************************}

unit Example;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TypInfo, Popbill, PopbillCashbill, ExtCtrls;

const
        {**********************************************************************}
        { - ��������(��ũ���̵�, ���Ű)�� ��Ʈ���� ����ȸ���� �ĺ��ϴ�        }
        {   ������ ���ǹǷ� ������� �ʵ��� �����Ͻñ� �ٶ��ϴ�              }
        { - ����� ��ȯ���Ŀ��� ���������� ������� �ʽ��ϴ�.                  }
        {**********************************************************************}

        //��ũ���̵�
        LinkID = 'TESTER';

        //��Ʈ�� ��ſ� ���Ű
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

        // ����ȯ�� ����, true-���߿�, false-�����
        cashbillService.IsTest := true;

        // Exception ó�� ����, true-���, false-�̻��, �⺻��(true)
        cashbillService.IsThrowException := true;

        // ������ū IP���ѱ�� ��뿩��, true-���, false-�̻��, �⺻��(true)
        cashbillService.IPRestrictOnOff := true;

        //���ýý��� �ð� ��뿩��, true-���, false-�̻��, �⺻��(true)
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
        {    �˺�(www.popbill.com)�� �α��ε� �˾� URL�� ��ȯ�մϴ�.
        {    URL ������å�� ���� ��ȯ�� URL�� 30���� ��ȿ�ð��� �����ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetAccessURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getAccessURL(txtCorpNum.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { 1���� ���ݿ������� �����մϴ�.
        { - ���ݿ������� ������ ��쿡�� ������ȣ(mgtKey)�� ���� �� ��   
        {   �ֽ��ϴ�.
        { - ���������� ���� ���� : [�ӽ�����], [�������]
        { - https://docs.popbill.com/cashbill/delphi/api#Delete
        {**********************************************************************}
        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;
end;

procedure TfrmExample.btnRegisterClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { ���ݿ����� 1���� [�ӽ�����] �մϴ�.
        { - ���ݿ����� �ӽ�����(Register API) ȣ���Ŀ��� ����(Issue API)��
        {   ȣ���ؾ߸� ����û�� ���۵˴ϴ�.
        { - �ӽ������ ������ �ѹ��� ȣ��� ó���ϴ� ��ù���(RegistIssue API)
        {   ���μ����� �����մϴ�.
        { - ���ݿ����� ����û ���� ��å : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#Register
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� ����û���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        cashbill.orgConfirmNum := '';

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        cashbill.orgTradeDate := '';

        // [�ʼ�] ��������, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [�ʼ�] �ŷ�����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // �ŷ�����, [�Ϲ�, ��������, ���߱���] �� ����
        cashbill.tradeOpt := '�Ϲ�';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] �ŷ��ݾ�
        cashbill.totalAmount := '11000';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';

        // [�ʼ�] �ΰ���
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] ������ ����ڹ�ȣ, '-' ���� 10�ڸ�
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // ������ ������� �ĺ���ȣ
        cashbill.franchiseTaxRegID := '';

        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ';

        // ������ ��ǥ�� ����
        cashbill.franchiseCEOName := '������ ��ǥ��';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ��ȭ��ȣ
        cashbill.franchiseTEL := '07043042991';

        // [�ʼ�] �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '01043245117';

        // �ֹ��ڸ�
        cashbill.customerName := '����';

        // �ֹ���ǰ��
        cashbill.itemName := '��ǰ��';

        // �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �ֹ��� �̸���
        cashbill.email := 'test@test.com';

        // �ֹ��� �޴���
        cashbill.hp := '010-111-222';

        // �ֹ��� �ѽ�
        cashbill.fax := '777-444-333';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        try
                response := cashbillService.Register(txtCorpNum.text, cashbill);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;
end;


procedure TfrmExample.btnJoinMemberClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinForm;
begin
        {**********************************************************************}
        {    ��Ʈ���� ����ȸ������ ȸ�������� ��û�մϴ�.
        {    ���̵� �ߺ�Ȯ���� btnCheckIDClick ���ν����� �����Ͻñ� �ٶ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#JoinMember
        {**********************************************************************}

        // ��ũ���̵�
        joinInfo.LinkID := LinkID;

        // ����ڹ�ȣ '-' ����, 10�ڸ�
        joinInfo.CorpNum := '4364364364';

        // ��ǥ�ڼ���, �ִ� 100��
        joinInfo.CEOName := '��ǥ�ڼ���';

        // ��ȣ��, �ִ� 200��
        joinInfo.CorpName := '��ũ���';

        // �ּ�, �ִ� 300��
        joinInfo.Addr := '�ּ�';

        // ����, �ִ� 100��
        joinInfo.BizType := '����';

        // ����, �ִ� 100��
        joinInfo.BizClass := '����';

        // ���̵�, 6���̻� 50�� �̸�
        joinInfo.ID     := 'userid';

        // ��й�ȣ (8�� �̻� 20�� �̸�) ����, ���� ,Ư������ ����
        joinInfo.Password := 'asdf123!@';

        // ����ڸ�, �ִ� 100��
        joinInfo.ContactName := '����ڸ�';

        // ����� ����ó, �ִ� 20��
        joinInfo.ContactTEL :='070-4304-2991';

        // ����� �޴�����ȣ, �ִ� 20��
        joinInfo.ContactHP := '010-000-1111';

        // ����� �ѽ���ȣ, �ִ� 20��
        joinInfo.ContactFAX := '02-6442-9700';

        // ����� ����, �ִ� 100��
        joinInfo.ContactEmail := 'code@linkhub.co.kr';

        try
                response := cashbillService.JoinMember(joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;
end;

procedure TfrmExample.btnUpdateCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { ����ȸ���� ȸ�������� �����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateCorpInfo
        {**********************************************************************}

        corpInfo := TCorpInfo.Create;

        // ��ǥ�ڸ�, �ִ� 100��
        corpInfo.ceoname := '��ǥ�ڸ�';

        // ��ȣ, �ִ� 200��
        corpInfo.corpName := '��ȣ';

        // ����, �ִ� 100��
        corpInfo.bizType := '����';

        // ����, �ִ� 100��
        corpInfo.bizClass := '����';

        // �ּ�, �ִ� 300��
        corpInfo.addr := '����Ư���� ������ ������� 517';

        try
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text, corpInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;
                
end;

procedure TfrmExample.btnGetBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { ����ȸ���� �ܿ�����Ʈ�� Ȯ���մϴ�.
        { - ���ݹ���� ���������� �ƴ� ��Ʈ�ʰ����� ��� ��Ʈ�� �ܿ�����Ʈ
        {    Ȯ��(GetPartnerBalance API) ��� �̿��Ͻñ� �ٶ��ϴ�
        { - https://docs.popbill.com/cashbill/delphi/api#GetBalance
        {**********************************************************************}
        try
                balance := cashbillService.GetBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�ܿ�����Ʈ : ' + FloatToStr(balance));
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
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('���ݿ����� ����ܰ� : '+ FloatToStr(unitcost));
        end;
end;

procedure TfrmExample.btnGetChargeURLClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { ����ȸ�� ����Ʈ ���� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetChargeURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getChargeURL(txtCorpNum.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ��Ʈ���� �ܿ�����Ʈ�� Ȯ���մϴ�. ���ݹ���� ��Ʈ�ʰ����� �ƴ�
        { - ���������� ��� ����ȸ�� �ܿ�����Ʈ Ȯ��(GetBalance API)��
        { �̿��Ͻñ� �ٶ��ϴ�
        { - https://docs.popbill.com/cashbill/delphi/api#GetPartnerBalance
        {**********************************************************************}
        
        try
                balance := cashbillService.GetPartnerBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�ܿ�����Ʈ : ' + FloatToStr(balance));
        end;
end;

procedure TfrmExample.btnCheckMgtkeyInUseClick(Sender: TObject);
var
        InUse : boolean;
begin
        {***********************************************************************}
        { ���ݿ������� ����ϱ��� ������ȣ(mgtKey) �ߺ����θ� Ȯ���մϴ�.
        { - ������ȣ�� 1~24�ڸ� ����, ����, '-', '_' �������� �����Ҽ� �ֽ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckMgtKeyInUse
        {***********************************************************************}
        
        try
                InUse := cashbillService.CheckMgtKeyInUse(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                if InUse then ShowMessage('�����') else ShowMessage('�� �����.');
        end;


end;

procedure TfrmExample.btnUpdateClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { [�ӽ�����] ���ݿ������� �����׸��� �����մϴ�.                       
        { - https://docs.popbill.com/cashbill/delphi/api#Update
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� ����û���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        cashbill.orgConfirmNum := '';

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        cashbill.orgTradeDate := '';

        // [�ʼ�] ��������, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [�ʼ�] �ŷ�����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // [�ʼ�] �ŷ�����, [�Ϲ�, ��������, ���߱���] �� ����
        cashbill.tradeOpt := '�Ϲ�';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] �ŷ��ݾ�
        cashbill.totalAmount := '11000';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';

        // [�ʼ�] �ΰ���
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] ������ ����ڹ�ȣ, '-' ���� 10�ڸ�
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // ������ ������� �ĺ���ȣ
        cashbill.franchiseTaxRegID := '';

        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ_����';

        // ������ ��ǥ�� ����
        cashbill.franchiseCEOName := '������ ��ǥ��_����';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ��ȭ��ȣ
        cashbill.franchiseTEL := '07043042991';

        // [�ʼ�] �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '01043245117';

        // �ֹ��ڸ�
        cashbill.customerName := '����';

        // �ֹ���ǰ��
        cashbill.itemName := '��ǰ��';

        // �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �ֹ��� �̸���
        cashbill.email := 'test@test.com';

        // �ֹ��� �޴���
        cashbill.hp := '010-111-222';

        // �ֹ��� �ѽ�
        cashbill.fax := '777-444-333';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        try
                response := cashbillService.Update(txtCorpNum.text, txtMgtKey.text, cashbill);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnIssueClick(Sender: TObject);
var
        response : TCBIssueResponse;
        memo : String;
begin
        {**********************************************************************}
        { [�ӽ�����] ������ ���ݿ������� [����]ó�� �մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CBIssue
        {**********************************************************************}

        // �޸�
        memo := '����޸�';
        
        try
                response := cashbillService.Issue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message + #10#13 + '����û���ι�ȣ : ' + response.confirmNum + #10#13 + '�ŷ����� : ' + response.tradeDate);
        end;
end;

procedure TfrmExample.btnCancelIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [����Ϸ�] ������ ���ݿ������� [�������] �մϴ�.                    
        { - [�������]�� ����û ���� ������ ȣ���� �� �ֽ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CancelIssue
        {**********************************************************************}
        
        // �޸�
        memo := '������� �޸�';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnGetInfoClick(Sender: TObject);
var
        cashbillInfo : TCashbillInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� ����/��� ������ Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetInfo
        {**********************************************************************}

        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := tmp +'itemKey (�˺���ȣ) : ' +  cashbillInfo.itemKey + #13;
                tmp := tmp +'mgtKey (������ȣ) : ' +  cashbillInfo.mgtKey + #13;
                tmp := tmp +'tradeDate (�ŷ�����) : ' +  cashbillInfo.tradeDate + #13;
                tmp := tmp +'tradeType (��������) : ' +  cashbillInfo.tradeType + #13;
                tmp := tmp +'tradeUsage (�ŷ�����) : ' +  cashbillInfo.tradeUsage + #13;
                tmp := tmp +'tradeOpt (�ŷ�����) : ' +  cashbillInfo.tradeOpt + #13;
                tmp := tmp +'taxationType (��������) : ' +  cashbillInfo.taxationType + #13;
                tmp := tmp +'totalAmount (�ŷ��ݾ�) : ' +  cashbillInfo.totalAmount + #13;
                tmp := tmp +'issueDT (�����Ͻ�) : ' +  cashbillInfo.issueDT + #13;
                tmp := tmp +'regDT (����Ͻ�) : ' +  cashbillInfo.regDT + #13;
                tmp := tmp +'stateMemo (���¸޸�) : ' +  cashbillInfo.stateMemo + #13;
                tmp := tmp +'stateCode (�����ڵ�) : ' +  IntToStr(cashbillInfo.stateCode) + #13;
                tmp := tmp +'stateDT (���º����Ͻ�) : ' +  cashbillInfo.stateDT + #13;
                tmp := tmp +'identityNum (�ĺ���ȣ) : ' +  cashbillInfo.identityNum + #13;
                tmp := tmp +'itemName (�ֹ���ǰ��) : ' +  cashbillInfo.itemName + #13;
                tmp := tmp +'customerName (�ֹ��ڸ�) : ' +  cashbillInfo.customerName + #13;
                tmp := tmp +'confirmNum (����û���ι�ȣ) : ' +  cashbillInfo.confirmNum + #13;
                tmp := tmp +'orgConfirmNum (���� ���ݿ����� ����û���ι�ȣ) : ' +  cashbillInfo.orgConfirmNum + #13;
                tmp := tmp +'orgTradeDate (���� ���ݿ����� �ŷ�����) : ' +  cashbillInfo.orgTradeDate + #13;
                tmp := tmp +'ntssendDT (����û �����Ͻ�) : ' +  cashbillInfo.ntssendDT + #13;
                tmp := tmp +'ntsresultDT (����û ó����� �����Ͻ�) : ' +  cashbillInfo.ntsresultDT + #13;
                tmp := tmp +'ntsresultCode (����û ó����� �����ڵ�) : ' +  cashbillInfo.ntsresultCode + #13;
                tmp := tmp +'ntsresultMessage (����û ó����� �޽���) : ' +  cashbillInfo.ntsresultMessage + #13;
                tmp := tmp +'printYN (�μ⿩��) : ' +  IfThen(cashbillInfo.printYN,'true','false') + #13;
                ShowMessage(tmp);
        end;


end;

procedure TfrmExample.btnGetURL_TBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { ���ݿ����� �ӽ�(����)������ �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'TBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ���ݿ����� ���๮���� �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'PBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ���ݿ����� �����ۼ� �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'WRITE');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { 1���� ���ݿ����� ���� �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { 1���� ���ݿ����� �μ� �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPrintURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
       { 1���� ���ݿ����� �μ�(���޹޴���) URL�� ��ȯ�մϴ�.
       { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
       { - https://docs.popbill.com/cashbill/delphi/api#GetPrintURL
       {**********************************************************************}

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
       { �ټ����� ���ݿ����� �μ� �˾� URL�� ��ȯ�մϴ�. (�ִ� 100��)
       { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
       { - https://docs.popbill.com/cashbill/delphi/api#GetMassPrintURL
       {**********************************************************************}

        // �μ��� ���ݿ����� ������ȣ �迭 (�ִ� 100��)
        SetLength(KeyList,4);
        KeyList[0] := '20220105-001';
        KeyList[1] := '20220105-002';
        KeyList[2] := '20220105-003';
        KeyList[3] := '20220105-004';

        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ���ϸ�ũ URL�� ��ȯ�մϴ�.
        { - ���ϸ�ũ URL�� ��� ��ȿ�ð��� �������� �ʽ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetMailURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ���ݿ������� �ѽ������մϴ�.                                         
        { - �ѽ� ���� ��û�� ����Ʈ�� �����˴ϴ�. (���۽��н� ȯ��ó��)
        { - ���۳��� Ȯ���� "�˺� �α���" > [���� �ѽ�] > [�ѽ�] > [���۳���]
        {   �޴����� ���۰���� Ȯ���� �� �ֽ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#SendFAX
        {**********************************************************************}

        //�ѽ� �߽Ź�ȣ
        sendNum := '070-4304-2991';

        //�ѽ� ���Ź�ȣ                                                
        receiveNum := '070-111-222';

        try
                response := cashbillService.SendFAX(txtCorpNum.text, txtMgtKey.Text, sendNum, receiveNum);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
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
        { �˸����ڸ� �����մϴ�. (�ܹ�/SMS- �ѱ� �ִ� 45��)
        { - �˸����� ���۽� ����Ʈ�� �����˴ϴ�. (���۽��н� ȯ��ó��)
        { - ���۳��� Ȯ���� "�˺� �α���" > [���� �ѽ�] > [����] > [���۳���]
        {   �޴����� ���۰���� Ȯ���� �� �ֽ��ϴ�.                            ��
        { - https://docs.popbill.com/cashbill/delphi/api#SendSMS
        {**********************************************************************}

        //�߽Ź�ȣ
        sendNum := '07043042991';

        //���Ź�ȣ
        receiveNum := '010-111-222';

        //���� �޽�������, 90byte�� �ʰ��� ������ �����Ǿ� ���۵˴ϴ�..
        contents := '���ݿ������� ����Ǿ����ϴ�. ���� Ȯ�ιٶ��ϴ�.';

        try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnSendEmailClick(Sender: TObject);
var
        response : TResponse;
        email : String;
begin
        {***************************************************************}
        { ���ݿ����� �ȳ� ������ �������մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#SendEmail
        {***************************************************************}

        // ������ �̸����ּ�
        email := 'test@test.com';

        try
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnGetDetailInfoClick(Sender: TObject);
var
        cashbill : TCashbill;
        tmp : string;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� ���׸��� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetDetailInfo                    
        {**********************************************************************}

        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
                exit;
        end
        else
        begin
                tmp := tmp +'mgtKey (������ȣ) : ' +  cashbill.mgtKey + #13;
                tmp := tmp +'confirmNum (����û ���ι�ȣ) : ' +  cashbill.confirmNum + #13;
                tmp := tmp +'orgConfirmNum (���� ���ݿ����� ����û���ι�ȣ) : ' +  cashbill.orgConfirmNum + #13;
                tmp := tmp +'orgTradeDate (���� ���ݿ����� �ŷ�����) : ' +  cashbill.orgTradeDate + #13;
                tmp := tmp +'tradeDate (�ŷ�����) : ' +  cashbill.tradeDate + #13;
                tmp := tmp +'tradeType (��������) : ' +  cashbill.tradeType + #13;
                tmp := tmp +'tradeUsage (�ŷ�����) : ' +  cashbill.tradeUsage + #13;
                tmp := tmp +'tradeOpt (�ŷ�����) : ' +  cashbill.tradeOpt + #13;
                tmp := tmp +'taxationType (��������) : ' +  cashbill.taxationType + #13;
                tmp := tmp +'totalAmount (�ŷ��ݾ�) : ' +  cashbill.totalAmount + #13;
                tmp := tmp +'supplyCost (���ް���) : ' +  cashbill.supplyCost + #13;
                tmp := tmp +'tax (�ΰ���) : ' +  cashbill.tax + #13;
                tmp := tmp +'serviceFee (�����) : ' +  cashbill.serviceFee + #13;
                tmp := tmp +'franchiseCorpNum (������ ����ڹ�ȣ) : ' +  cashbill.franchiseCorpNum + #13;
                tmp := tmp +'franchiseTaxRegID (������ ������� �ĺ���ȣ) : ' +  cashbill.franchiseTaxRegID + #13;
                tmp := tmp +'franchiseCorpName (������ ��ȣ) : ' +  cashbill.franchiseCorpName + #13;
                tmp := tmp +'franchiseCEOName (������ ��ǥ�� ����) : ' +  cashbill.franchiseCEOName + #13;
                tmp := tmp +'franchiseAddr (������ �ּ�) : ' +  cashbill.franchiseAddr + #13;
                tmp := tmp +'franchiseTEL (������ ��ȭ��ȣ) : ' +  cashbill.franchiseTEL + #13;
                tmp := tmp +'identityNum (�ĺ���ȣ) : ' +  cashbill.identityNum + #13;
                tmp := tmp +'customerName (�ֹ��ڸ�) : ' +  cashbill.customerName + #13;
                tmp := tmp +'itemName (�ֹ���ǰ��) : ' +  cashbill.itemName + #13;
                tmp := tmp +'orderNumber (�ֹ���ȣ) : ' +  cashbill.orderNumber + #13;
                tmp := tmp +'email (�ֹ��� �̸���) : ' +  cashbill.email + #13;
                tmp := tmp +'hp (�ֹ��� �޴���) : ' +  cashbill.hp + #13;
                tmp := tmp +'smssendYN (SMS ���ۿ���) : ' +  IfThen(cashbill.smssendYN,'true','false') + #13;
                tmp := tmp +'cancelType (��һ���) : ' +  IntToStr(cashbill.cancelType) + #13;
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
        { ���ݿ����� ���� �����̷��� Ȯ���մϴ�.                               }
        { - https://docs.popbill.com/cashbill/delphi/api#GetLogs
        {**********************************************************************}

        try
                LogList := cashbillService.getLogs(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'DocLogType(�α�Ÿ��) | Log(�̷�����) | ProcType(ó������) | ProcMemo(ó���޸�) |';
                tmp := tmp + 'RegDT(����Ͻ�) | IP(������)' + #13;

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
        { �ٷ��� ���ݿ����� ����/��� ������ Ȯ���մϴ�. (�ִ� 1000��)         }
        { - https://docs.popbill.com/cashbill/delphi/api#GetInfo
        {**********************************************************************}

        // ���ݿ����� ������ȣ �迭 (�ִ� 1000��)
        SetLength(KeyList,4);
        KeyList[0] := '20220106-001';
        KeyList[1] := '20220106-002';
        KeyList[2] := '20220106-003';
        KeyList[3] := '20220106-004';

        try
                InfoList := cashbillService.getInfos(txtCorpNum.text,KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                for i := 0 to Length(InfoList) -1 do
                begin
                        tmp := tmp +'itemKey (�˺���ȣ) : ' +  InfoList[i].itemKey + #13;
                        tmp := tmp +'mgtKey (������ȣ) : ' +  InfoList[i].mgtKey + #13;
                        tmp := tmp +'tradeDate (�ŷ�����) : ' +  InfoList[i].tradeDate + #13;
                        tmp := tmp +'tradeType (��������) : ' +  InfoList[i].tradeType + #13;
                        tmp := tmp +'tradeUsage (�ŷ�����) : ' +  InfoList[i].tradeUsage + #13;
                        tmp := tmp +'tradeOpt (�ŷ�����) : ' +  InfoList[i].tradeOpt + #13;
                        tmp := tmp +'taxationType (��������) : ' +  InfoList[i].taxationType + #13;
                        tmp := tmp +'totalAmount (�ŷ��ݾ�) : ' +  InfoList[i].totalAmount + #13;
                        tmp := tmp +'issueDT (�����Ͻ�) : ' +  InfoList[i].issueDT + #13;
                        tmp := tmp +'regDT (����Ͻ�) : ' +  InfoList[i].regDT + #13;
                        tmp := tmp +'stateMemo (���¸޸�) : ' +  InfoList[i].stateMemo + #13;
                        tmp := tmp +'stateCode (�����ڵ�) : ' +  IntToStr(InfoList[i].stateCode) + #13;
                        tmp := tmp +'stateDT (���º����Ͻ�) : ' +  InfoList[i].stateDT + #13;
                        tmp := tmp +'identityNum (�ĺ���ȣ) : ' +  InfoList[i].identityNum + #13;
                        tmp := tmp +'itemName (�ֹ���ǰ��) : ' +  InfoList[i].itemName + #13;
                        tmp := tmp +'customerName (�ֹ��ڸ�) : ' +  InfoList[i].customerName + #13;
                        tmp := tmp +'confirmNum (����û���ι�ȣ) : ' +  InfoList[i].confirmNum + #13;
                        tmp := tmp +'orgConfirmNum (���� ���ݿ����� ����û���ι�ȣ) : ' +  InfoList[i].orgConfirmNum + #13;
                        tmp := tmp +'orgTradeDate (���� ���ݿ����� �ŷ�����) : ' +  InfoList[i].orgTradeDate + #13;
                        tmp := tmp +'ntssendDT (����û �����Ͻ�) : ' +  InfoList[i].ntssendDT + #13;
                        tmp := tmp +'ntsresultDT (����û ó����� �����Ͻ�) : ' +  InfoList[i].ntsresultDT + #13;
                        tmp := tmp +'ntsresultCode (����û ó����� �����ڵ�) : ' +  InfoList[i].ntsresultCode + #13;
                        tmp := tmp +'ntsresultMessage (����û ó����� �޽���) : ' +  InfoList[i].ntsresultMessage + #13;
                        tmp := tmp +'printYN (�μ⿩��) : ' +  IfThen(InfoList[i].printYN,'true','false') + #13 + #13;
                end;
                ShowMessage(tmp);
        end;
end;

procedure TfrmExample.btnCheckIDClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { ȸ������(JoinMember API)�� ȣ���ϱ� �� ���̵� �ߺ��� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckID
        {**********************************************************************}

        try
                response := cashbillService.CheckID(txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnRegistContactClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinContact;
begin
        {***************************************************************}
        { ����ȸ���� ����ڸ� �űԷ� ����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#RegistContact
        {***************************************************************}

        // [�ʼ�] ����� ���̵� (6�� �̻� 50�� �̸�)
        joinInfo.id := 'testkorea';

        // ��й�ȣ (8�� �̻� 20�� �̸�) ����, ���� ,Ư������ ����
        joinInfo.Password := 'asdf123!@';

        // [�ʼ�] ����ڸ�(�ѱ��̳� ���� 100�� �̳�)
        joinInfo.personName := '����ڼ���';

        // [�ʼ�] ����ó (�ִ� 20��)
        joinInfo.tel := '070-4304-2991';

        // �޴�����ȣ (�ִ� 20��)
        joinInfo.hp := '010-1111-2222';

        // �ѽ���ȣ (�ִ� 20��)
        joinInfo.fax := '02-6442-9700';

        // [�ʼ�] �̸��� (�ִ� 100��)
        joinInfo.email := 'test@test.com';
        
        // ����� ����, 1-���α��� / 2-�б���� / 3-ȸ�����
        joinInfo.searchRole := '3';

        try
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnUpdateContactClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { ����ȸ���� ����� ������ �����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateContact
        {**********************************************************************}

        contactInfo := TContactInfo.Create;

        // ����� ���̵�
        contactInfo.id := 'testkorea';

        // ����ڸ� (�ִ� 100��)
        contactInfo.personName := '�׽�Ʈ �����';

        // ����ó (�ִ� 20��)
        contactInfo.tel := '070-4304-2991';

        // �޴�����ȣ (�ִ� 20��)
        contactInfo.hp := '010-4324-1111';

        // �̸��� �ּ� (�ִ� 100��)
        contactInfo.email := 'test@test.com';

        // �ѽ���ȣ (�ִ� 20��)
        contactInfo.fax := '02-6442-9799';

        // ����� ����, 1-���α��� / 2-�б���� / 3-ȸ�����
        contactInfo.searchRole := '3';

        try
                response := cashbillService.UpdateContact(txtCorpNum.text, contactInfo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;
end;

procedure TfrmExample.btnCancelIssue_riClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [����Ϸ�] ������ ���ݿ������� [�������] �մϴ�.
        { - [�������]�� ����û ���� ������ ȣ���� �� �ֽ��ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CancelIssue
        {**********************************************************************}

        // �޸�
        memo := '������� �޸�';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;  
end;

procedure TfrmExample.btnDelete_riClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1���� ���ݿ������� �����մϴ�.                                       
        { - https://docs.popbill.com/cashbill/delphi/api#Delete
        {**********************************************************************}
        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
        end;  
end;

procedure TfrmExample.btnRegistIssueClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TCBIssueResponse;
        memo, emailSubject : String;

begin
        {**********************************************************************}
        { 1���� ���ݿ������� ��ù��� ó���մϴ�.                              
        { - ���ݿ����� ����û ���� ��å : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RegistIssue
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� ����û���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        cashbill.orgConfirmNum := '';

        // [��Ұŷ��� �ʼ�] ���� ���ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        cashbill.orgTradeDate := '';

        // [�ʼ�] ��������, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [�ʼ�] �ŷ�����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // �ŷ�����, [�Ϲ�, ��������, ���߱���] �� ����
        cashbill.tradeOpt := '�Ϲ�';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] �ŷ��ݾ�
        cashbill.totalAmount := '11000';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';

        // [�ʼ�] �ΰ���
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] ������ ����ڹ�ȣ, '-' ���� 10�ڸ�
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // ������ ������� �ĺ���ȣ
        cashbill.franchiseTaxRegID := '';

        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ';

        // ������ ��ǥ�� ����
        cashbill.franchiseCEOName := '������ ��ǥ��';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ��ȭ��ȣ
        cashbill.franchiseTEL := '07043042991';

        // [�ʼ�] �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '0101112222';

        // �ֹ��ڸ�
        cashbill.customerName := '����';

        // �ֹ���ǰ��
        cashbill.itemName := '��ǰ��';

        // �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �ֹ��� �̸����ּ�
        cashbill.email := 'test@test.com';

        // �ֹ��� �޴�����ȣ
        cashbill.hp := '010-111-222';

        // �ֹ��� �ѽ���ȣ
        cashbill.fax := '777-444-333';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        // �޸�
        memo := '��ù��� ���ݿ����� �޸�';

        // �ȳ����� ����, �̱���� �⺻������� ����
        emailSubject := '';

        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo, txtUserID.text, emailSubject);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 + '����޽��� : ' + le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message + #10#13 + '����û���ι�ȣ : ' + response.confirmNum + #10#13 + '�ŷ����� : ' + response.tradeDate);
        end;   
        
end;

procedure TfrmExample.btnGetCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        tmp : string;
begin
        {**********************************************************************}
        { ����ȸ���� ȸ�������� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetCorpInfo
        {**********************************************************************}

        try
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'CorpName (��ȣ) : ' + corpInfo.CorpName + #13;
                tmp := tmp + 'CeoName (��ǥ�� ����) : ' + corpInfo.CeoName + #13;
                tmp := tmp + 'BizType (����) : ' + corpInfo.BizType + #13;
                tmp := tmp + 'BizClass (����) : ' + corpInfo.BizClass + #13;
                tmp := tmp + 'Addr (�ּ�) : ' + corpInfo.Addr + #13;
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
        { ����ȸ���� ����� ����� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#ListContact
        {**********************************************************************}

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'id(���̵�) | email(�̸���) | hp(�޴���) | personName(����) | searchRole(����� ����) | ';
                tmp := tmp + 'tel(����ó) | fax(�ѽ�) | mgrYN(������ ����) | regDT(����Ͻ�) | state(����)' + #13;

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
        { ��Ʈ���� ����ȸ������ ���Ե� ����ڹ�ȣ���� Ȯ���մϴ�.
        { - LinkID�� ���������� �����Ǿ� �ִ� ��ũ���̵� �Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#CheckIsMember     
        {**********************************************************************}
        
        try
                response := cashbillService.CheckIsMember(txtCorpNum.text, LinkID);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;
end;

procedure TfrmExample.btnGetUnitCostClick(Sender: TObject);
var
        unitcost : Single;
begin
        {**********************************************************************}
        { ���ݿ����� ����ܰ��� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetUnitCost
        {**********************************************************************}

        try
                unitcost := cashbillService.GetUnitCost(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('���ݿ����� ����ܰ� : '+ FloatToStr(unitcost));
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
        { �˻����ǵ��� �̿��� ���ݿ����� ����� ��ȸ�մϴ�. (��ȸ�Ⱓ ���� : �ִ� 6����)               
        { - https://docs.popbill.com/cashbill/delphi/api#Search
        {**********************************************************************}

        // [�ʼ�] �������� { R: �������, T:�ŷ�����, I:�������� }
        DType := 'R';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        SDate := '20220106';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        EDate := '20220130';

        // ���ۻ��°� �迭. �̱���� ��ü��ȸ, �������� �� 3�ڸ��� �迭, 2,3��° �ڸ� ���ϵ� ī�� ��밡��
        SetLength(State, 3);
        State[0] := '100';
        State[1] := '3**';
        State[2] := '4**';

        // ���ݿ����� ���� �迭, { N:�Ϲ� ���ݿ����� C:��� ���ݿ����� }
        SetLength(TradeType, 2);
        TradeType[0] := 'N';
        TradeType[1] := 'C';

        // �ŷ��뵵 �迭, { P:�ҵ������ C:���������� }
        SetLength(TradeUsage, 2);
        TradeUsage[0] := 'P';
        TradeUsage[1] := 'C';

        // �ŷ����� �迭, { N:�Ϲ� B:�������� T:���߱��� }
        SetLength(TradeOpt, 3);
        TradeOpt[0] := 'N';
        TradeOpt[1] := 'B';
        TradeOpt[2] := 'T';

        // �������� �迭, { T:���� N:����� }
        SetLength(TaxationType, 2);
        TaxationType[0] := 'T';
        TaxationType[1] := 'N';

        // �ŷ�ó �ĺ���ȣ, ����ó���� ��ü��ȸ
        QString := '';

        // ������ ��ȣ, �⺻��
        Page := 1;

        // �������� ��ϰ���, �⺻�� 500, �ִ� 1000
        PerPage := 50;

        // 'D' : �������� , 'A' : ��������
        Order := 'D';

        try
                SearchList := cashbillService.Search(txtCorpNum.text,DType, SDate,
                                EDate, State, TradeType, TradeUsage, TaxationType,
                                QString, Page, PerPage,Order, TradeOpt);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'code(���� ����ڵ�) : '+IntToStr(SearchList.code) + #13;
                tmp := tmp + 'total(�� �˻���� �Ǽ�) : '+ IntToStr(SearchList.total) + #13;
                tmp := tmp + 'perPage(�������� �˻�����) : '+ IntToStr(SearchList.perPage) + #13;
                tmp := tmp + 'pageNum(������ ��ȣ) : '+ IntToStr(SearchList.pageNum) + #13;
                tmp := tmp + 'pageCount(������ ����) : '+ IntToStr(SearchList.pageCount) + #13;
                tmp := tmp + 'message(���� �޽���) : '+ SearchList.message + #13#13;

                tmp := tmp + 'itemKey(�˺���ȣ) | mgtKey(������ȣ) | tradeDate(�ŷ�����) | tradeType(��������) | '
                        + 'tradeUsage(�ŷ�����) | tradeOpt(�ŷ�����) | taxationType(��������) | totalAmount(�ŷ��ݾ�) | '
                        + 'issueDT(�����Ͻ�) | regDT(����Ͻ�) | stateMemo(���¸޸�) | stateCode(�����ڵ�) | '
                        + 'stateDT(���º����Ͻ�) | identityNum(�ĺ���ȣ)  | itemName(�ֹ���ǰ��) | '
                        + 'customerName(�ֹ��ڸ�) | confirmNum(����û���ι�ȣ) | orgConfirmNum(���� ���ݿ����� ����û���ι�ȣ) |'
                        + 'orgTradeDate(���� ���ݿ����� �ŷ�����) | ntssendDT(����û �����Ͻ�) | ntsresult(����û ó�����) | '
                        + 'ntsresultDT(����û ó����� �����Ͻ�) | ntsresultCode(����û ó����� �����ڵ�) | '
                        + 'ntsresultMessage(����û ó����� �޽���) | printYN(�μ⿩��)  ' + #13#13;

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
        { ����ȸ���� ���ݿ����� API ���� ���������� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetChargeInfo
        {**********************************************************************}

        try
                chargeInfo := cashbillService.GetChargeInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'unitCost (�ܰ�) : ' + chargeInfo.unitCost + #13;
                tmp := tmp + 'chargeMethod (��������) : ' + chargeInfo.chargeMethod + #13;
                tmp := tmp + 'rateSystem (��������) : ' + chargeInfo.rateSystem + #13;
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
        { 1���� ������ݿ������� ��ù��� ó���մϴ�.
        { - ���ݿ����� ����û ���� ��å : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RevokeRegistIssue
        {**********************************************************************}

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        mgtKey := txtMgtKey.Text;

        // �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        orgConfirmNum := '548757045';

        // �������ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        orgTradeDate := '20220101';

        // ����ȳ����� ���ۿ���
        smssendYN := False;

        // �޸�
        memo := '��ù��� ������ݿ����� �޸�';

        try
                response := cashbillService.RevokeRegistIssue(txtCorpNum.text,
                        mgtKey, orgConfirmNum, orgTradeDate, smssendYN, memo, txtUserID.text);

        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 + '����޽��� : ' + le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message + #10#13 + '����û���ι�ȣ : ' + response.confirmNum + #10#13 + '�ŷ����� : ' + response.tradeDate);
        end; 
        
end;

procedure TfrmExample.btnGetPartnerURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { ��Ʈ�� ����Ʈ ���� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPartnerURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPartnerURL(txtCorpNum.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { 1���� (�κ�) ������ݿ������� ��ù��� ó���մϴ�.
        { - ���ݿ����� ����û ���� ��å : https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi
        { - https://docs.popbill.com/cashbill/delphi/api#RevokeRegistIssue
        {**********************************************************************}

        // [�ʼ�] ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        mgtKey := txtMgtKey.Text;

        // �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        orgConfirmNum := 'TB0000367';

        // �������ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        orgTradeDate := '20220105';

        // ����ȳ����� ���ۿ���
        smssendYN := False;

        // �޸�
        memo := '��ù��� ������ݿ����� �޸�';

        // �������, True-�κ����, False-��ü���
        isPartCancel := True;

        // ��һ���, 1-�ŷ���� / 2-�����߱���� / 3-��Ÿ
        cancelType := 1;

        // [���] ���ް���
        supplyCost := '2000';

        // [���] �ΰ���
        tax := '200';

        // [���] �����
        serviceFee := '0';

        // [���] �ŷ��ݾ�
        totalAmount := '2200';

        try
                response := cashbillService.RevokeRegistIssue(txtCorpNum.text,
                        mgtKey, orgConfirmNum, orgTradeDate, smssendYN, memo, txtUserID.text,
                        isPartCancel, cancelType, supplyCost, tax, serviceFee, totalAmount);

        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 + '����޽��� : ' + le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message + #10#13 + '����û���ι�ȣ : ' + response.confirmNum + #10#13 + '�ŷ����� : ' + response.tradeDate);
        end; 
end;

procedure TfrmExample.btnListEmailConfigClick(Sender: TObject);
var
        EmailConfigList : TEmailConfigList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { ���ݿ����� �������� �׸� ���� ���ۿ��θ� ������� ��ȯ�մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#ListEmailConfig
        {**********************************************************************}

        try
                EmailConfigList := cashbillService.ListEmailConfig(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'emailType(������������) | sendYN(���ۿ���)' + #13;

                for i := 0 to Length(EmailConfigList) -1 do
                begin
                    if EmailConfigList[i].EmailType = 'CSH_ISSUE' then
                        tmp := tmp + 'CSH_ISSUE (������ ���ݿ������� ���� �Ǿ����� �˷��ִ� ����) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;

                    if EmailConfigList[i].EmailType = 'CSH_CANCEL' then
                        tmp := tmp + 'CSH_CANCEL (������ ���ݿ������� ������� �Ǿ����� �˷��ִ� ����) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;
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
        { ���ݿ����� �������� �׸� ���� ���ۿ��θ� �����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateEmailConfig
        {
        { ������������
        {  CSH_ISSUE : ������ ���ݿ������� ���� �Ǿ����� �˷��ִ� ����
        {  CSH_CANCEL : ������ ���ݿ������� ������� �Ǿ����� �˷��ִ� ����
        {**********************************************************************}

        // ������������
        EmailType := 'CSH_ISSUE';

        // ���ۿ��� (True - ����, False - ������)
        SendYN := True;

        try
                response := cashbillService.UpdateEmailConfig(txtCorpNum.text, EmailType, SendYN);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end;    
end;

procedure TfrmExample.Button1Click(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� PDF �ٿ�ε� �˾� URL�� ��ȯ�մϴ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPDFURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPDFURL(txtCorpNum.Text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { �˺� ����Ʈ���� �ۼ��� ���ݿ������� ��Ʈ���� ������ȣ�� �Ҵ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#AssignMgtKey
        {**********************************************************************}

        // ���ݿ����� ������Ű (Search) API�� ��ȯ�׸��� ItemKey ����
        itemKey := '020021917480600001';

        // ������ȣ, ����, ����, '-', '_' �������� �ִ� 24�ڸ� ����.
        // ����ڹ�ȣ���� �ߺ����� ������ȣ �Ҵ�.
        mgtKey := '20220105-22';

        try
                response := cashbillService.AssignMgtKey(txtCorpNum.text, itemKey, mgtKey);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'�����޽��� : '+  le.Message);
                        Exit;
                end;
        end;
        
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
        end
        
end;

procedure TfrmExample.btnGetViewURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� ���� �˾� URL�� ��ȯ�մϴ�. (�޴�/��ư ����)
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetViewURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getViewURL(txtCorpNum.Text, txtMgtKey.Text);
                txtURL.text := resultURL;                
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
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
        { ����ȸ�� ����Ʈ �������� �˾� URL�� ��ȯ�Ѵ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���̴�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPaymentURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPaymentURL(txtCorpNum.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 +'����޽��� : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+ cashbillService.LastErrMessage);
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
        { ����ȸ�� ����Ʈ ��볻�� �˾� URL�� ��ȯ�Ѵ�.
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���̴�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetUseHistoryURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getUseHistoryURL(txtCorpNum.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 +'����޽��� : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+ cashbillService.LastErrMessage);
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
        { ����ȸ�� ����ڹ�ȣ�� ��ϵ� ����� ������ Ȯ���Ѵ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetContactInfo
        {**********************************************************************}

        contactID := 'testkorea';
        
        try
                contactInfo := cashbillService.getContactInfo(txtCorpNum.Text, contactID);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 +'����޽��� : '+ le.Message);
                        Exit;
                end;
        end;
        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : ' + IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+ cashbillService.LastErrMessage);
        end
        else
        begin
                tmp := 'id (���̵�) : ' + contactInfo.id + #13;
                tmp := tmp + 'personName (����� ����) : ' + contactInfo.personName + #13;
                tmp := tmp + 'tel (����� ����ó(��ȭ��ȣ)) : ' + contactInfo.tel + #13;
                tmp := tmp + 'hp (����� �޴�����ȣ) : ' + contactInfo.hp + #13;
                tmp := tmp + 'fax (����� �ѽ���ȣ) : ' + contactInfo.fax + #13;
                tmp := tmp + 'email (����� �̸���) : ' + contactInfo.email + #13;
                tmp := tmp + 'regDT (��� �Ͻ�) : ' + contactInfo.regDT + #13;
                tmp := tmp + 'searchRole (����� ����) : ' + contactInfo.searchRole + #13;
                tmp := tmp + 'mgrYN (������ ����) : ' + booltostr(contactInfo.mgrYN) + #13;
                tmp := tmp + 'state (��������) : ' + inttostr(contactInfo.state) + #13;
                ShowMessage(tmp);
        end
end;

end.

