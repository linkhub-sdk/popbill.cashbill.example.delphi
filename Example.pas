{******************************************************************************}
{ �˺� ���ݿ����� API Delphi SDK Example                                       }
{                                                                              }
{ - ������ SDK ������ �ȳ� : https://docs.popbill.com/cashbill/tutorial/delphi }
{ - ������Ʈ ���� : 2022-06-02                                                 }
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
    btnGetPaymentURL: TButton;
    btnGetUseHistoryURL: TButton;
    btnGetContactInfo: TButton;
    GroupBox16: TGroupBox;
    Label6: TLabel;
    txtSubmitID: TEdit;
    btnBulkSubmit: TButton;
    Button2: TButton;
    txtURL: TEdit;
    Label7: TLabel;
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
    procedure btnBulkSubmitClick(Sender: TObject);
    procedure btnGetBulkResultClick(Sender: TObject);
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
        { �˺� ����Ʈ�� �α��� ���·� ������ �� �ִ� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetAccessURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getAccessURL(txtCorpNum.Text, txtUserID.Text);
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


procedure TfrmExample.btnDeleteClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { ���� ������ ������ ���ݿ������� �����մϴ�.
        { - ���� ������ ����: "�ӽ�����", "�������", "���۽���"
        { - ���ݿ������� �����ϸ� ���� ������ȣ(mgtKey)�� ������ �� �ֽ��ϴ�.
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
        { ����ڸ� ����ȸ������ ����ó���մϴ�.
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
        {**********************************************************************}
        { ���ݿ����� ����� ���ݵǴ� ����Ʈ �ܰ��� Ȯ���մϴ�.
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

procedure TfrmExample.btnGetChargeURLClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { ����ȸ�� ����Ʈ ������ ���� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetChargeURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getChargeURL(txtCorpNum.Text, txtUserID.Text);
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

procedure TfrmExample.btnGetPartnerBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { ��Ʈ���� �ܿ�����Ʈ�� Ȯ���մϴ�.
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
        { ��Ʈ�ʰ� ���ݿ����� ���� �������� �Ҵ��ϴ� ������ȣ ��뿩�θ� Ȯ���մϴ�.
        { - �̹� ��� ���� ������ȣ�� �ߺ� ����� �Ұ��ϰ�, ���ݿ������� ������ ��쿡�� ������ȣ�� ������ �����մϴ�.
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
        { ����û ���� ���� "����Ϸ�" ������ ���ݿ������� "�������"�ϰ� ����û ���� ��󿡼� �����մϴ�.
        { - Delete(����)�Լ��� ȣ���Ͽ� "�������" ������ ���ݿ������� �����ϸ�, ������ȣ ������ �����մϴ�.
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
        { ���ݿ����� 1���� ���� �� ��������� Ȯ���մϴ�.
        { - ���ϰ� 'TCashbillInfo'�� ���� 'stateCode'�� ���� ���ݿ������� �����ڵ带 Ȯ���մϴ�.
        { - ���ݿ����� �����ڵ� [https://docs.popbill.com/cashbill/stateCode?lang=delphi]
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
        { �α��� ���·� �˺� ����Ʈ�� ���ݿ����� �ӽ� ������ �޴��� ������ �� �ִ� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'TBOX');
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

procedure TfrmExample.btnGetURL_PBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { �α��� ���·� �˺� ����Ʈ�� ���ݿ����� ���� ������ �޴��� ������ �� �ִ� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'PBOX');
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

procedure TfrmExample.btnGetURL_WRITEClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { �α��� ���·� �˺� ����Ʈ�� ���ݿ����� ���� �ۼ� �޴��� ������ �� �ִ� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetURL
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'WRITE');
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

procedure TfrmExample.btnGetPopUpURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { ���ݿ����� 1���� �� ���� �������� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPopUpURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text);
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

procedure TfrmExample.btnGetPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { ���ݿ����� 1���� �μ��ϱ� ���� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPrintURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text);
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

procedure TfrmExample.btnGetEPrintURLClick(Sender: TObject);
var
  resultURL : String;
begin
       {**********************************************************************}
       { 1���� ���ݿ����� �μ�(���޹޴���) URL�� ��ȯ�մϴ�.
       { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
       {**********************************************************************}

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text);
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

procedure TfrmExample.btnGetMassPrintURLClick(Sender: TObject);
var
        KeyList : Array of String;
        resultURL : String;
begin
       {**********************************************************************}
       { �ټ����� ���ݿ������� �μ��ϱ� ���� �������� �˾� URL�� ��ȯ�մϴ�. (�ִ� 100��)
       { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
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

procedure TfrmExample.btnGetMailURLClick(Sender: TObject);
var
  resultURL : String;
begin
        {**********************************************************************}
        { ���ݿ����� �ȳ������� �󼼺��� ��ũ URL�� ��ȯ�մϴ�.
        { - �Լ� ȣ��� ��ȯ ���� URL���� ��ȿ�ð��� �����ϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetMailURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text);
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

procedure TfrmExample.btnSendFAXClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
begin
        {**********************************************************************}
        { ���ݿ������� �ѽ��� �����ϴ� �Լ���, �˺� ����Ʈ [���ڡ��ѽ�] > [�ѽ�] > [���۳���] �޴����� ���۰���� Ȯ�� �� �� �ֽ��ϴ�.
        { - �Լ� ȣ�� �� ����Ʈ�� ���ݵ˴ϴ�. (���۽��н� ȯ��ó��)
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
        { ���ݿ������� ���õ� �ȳ� SMS(�ܹ�) ���ڸ� �������ϴ� �Լ���, �˺� ����Ʈ [���ڡ��ѽ�] > [����] > [���۳���] �޴����� ���۰���� Ȯ�� �� �� �ֽ��ϴ�.
        { - �޽����� �ִ� 90byte���� �Է� �����ϰ�, �ʰ��� ������ �ڵ����� �����Ǿ� �����մϴ�. (�ѱ� �ִ� 45��)
        { - �Լ� ȣ�� �� ����Ʈ�� ���ݵ˴ϴ�. (���۽��н� ȯ��ó��)
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
        { ���ݿ������� ���õ� �ȳ� ������ ������ �մϴ�.
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
        { ���ݿ����� 1���� �������� Ȯ���մϴ�.
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
        { ���ݿ������� ���¿� ���� �����̷��� Ȯ���մϴ�.                             }
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
        { �ټ����� ���ݿ����� ���� �� ��� ������ Ȯ���մϴ�. (1ȸ ȣ�� �� �ִ� 1,000�� Ȯ�� ����)
        { - ���ϰ� 'TCashbillInfo'�� ���� 'stateCode'�� ���� ���ݿ������� �����ڵ带 Ȯ���մϴ�.
        { - ���ݿ����� �����ڵ� [https://docs.popbill.com/cashbill/stateCode?lang=delphi]     
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
        { ����ϰ��� �ϴ� ���̵��� �ߺ����θ� Ȯ���մϴ�.
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
        { ����ȸ�� ����ڹ�ȣ�� �����(�˺� �α��� ����)�� �߰��մϴ�.
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
        { ����ȸ�� ����ڹ�ȣ�� ��ϵ� �����(�˺� �α��� ����) ������ �����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#UpdateContact
        {**********************************************************************}

        contactInfo := TContactInfo.Create;

        // ����� ���̵�
        contactInfo.id := 'testkorea';

        // ����ڸ� (�ִ� 100��)
        contactInfo.personName := '�׽�Ʈ �����';

        // ����ó (�ִ� 20��)
        contactInfo.tel := '070-4304-2991';

        // �̸��� �ּ� (�ִ� 100��)
        contactInfo.email := 'test@test.com';

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
        { ����û ���� ���� "����Ϸ�" ������ ���ݿ������� "�������"�ϰ� ����û ���� ��󿡼� �����մϴ�.
        { - Delete(����)�Լ��� ȣ���Ͽ� "�������" ������ ���ݿ������� �����ϸ�, ������ȣ ������ �����մϴ�.
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
        { ���� ������ ������ ���ݿ������� �����մϴ�.
        { - ���� ������ ����: "�ӽ�����", "�������", "���۽���"
        { - ���ݿ������� �����ϸ� ���� ������ȣ(mgtKey)�� ������ �� �ֽ��ϴ�.                              
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
        { �ۼ��� ���ݿ����� �����͸� �˺��� ����� ���ÿ� �����Ͽ� "����Ϸ�" ���·� ó���մϴ�.
        { - ���ݿ����� ����û ���� ��å [https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi]
        { - "����Ϸ�"�� ���ݿ������� ����û ���� ������ �������(CancelIssue API) �Լ��� ����û �Ű� ��󿡼� ������ �� �ֽ��ϴ�.
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
        { ����ȸ�� ����ڹ�ȣ�� ��ϵ� �����(�˺� �α��� ����) ����� Ȯ���մϴ�.
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
                tmp := 'id(���̵�) | email(�̸���) | personName(����) | searchRole(����� ����) | ';
                tmp := tmp + 'tel(����ó) | mgrYN(������ ����) | regDT(����Ͻ�) | state(����)' + #13;

                for i := 0 to Length(InfoList) -1 do
                begin
                tmp := tmp + InfoList[i].id + ' | ';
                tmp := tmp + InfoList[i].email + ' | ';
                tmp := tmp + InfoList[i].personName + ' | ';
                tmp := tmp + InfoList[i].searchRole + ' | ';
                tmp := tmp + InfoList[i].tel + ' | ';
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
        { ����ڹ�ȣ�� ��ȸ�Ͽ� ����ȸ�� ���Կ��θ� Ȯ���մϴ�.
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
        { ���ݿ����� ����� ���ݵǴ� ����Ʈ �ܰ��� Ȯ���մϴ�.
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
        { �˻����ǿ� �ش��ϴ� ���ݿ������� ��ȸ�մϴ� (��ȸ�Ⱓ ���� : �ִ� 6����).
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
        { �˺� ���ݿ����� API ���� ���������� Ȯ���մϴ�.
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
        { ��� ���ݿ����� �����͸� �˺��� ����� ���ÿ� �����Ͽ� "����Ϸ�" ���·� ó���մϴ�.
        { - ���ݿ����� ����û ���� ��å [https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi]
        { - "����Ϸ�"�� ��� ���ݿ������� ����û ���� ������ �������(cancelIssue API) �Լ��� ����û �Ű� ��󿡼� ������ �� �ֽ��ϴ�.
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
        { ��Ʈ�� ����Ʈ ������ ���� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPartnerURL
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPartnerURL(txtCorpNum.Text, 'CHRG');
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

procedure TfrmExample.btnRevokeRegistIssue_partClick(Sender: TObject);
var
        response : TCBIssueResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate, supplyCost, tax, serviceFee, totalAmount : String;
        cancelType: Integer;
        isPartCancel, smssendYN : Boolean;
begin
        {**********************************************************************}
        { �ۼ��� (�κ�)��� ���ݿ����� �����͸� �˺��� ����� ���ÿ� �����Ͽ� "����Ϸ�" ���·� ó���մϴ�.
        { - ��� ���ݿ������� �ݾ��� ���� �ݾ��� ���� �� �����ϴ�.
        { - ���ݿ����� ����û ���� ��å [https://docs.popbill.com/cashbill/ntsSendPolicy?lang=delphi]
        { - "����Ϸ�"�� ��� ���ݿ������� ����û ���� ������ �������(cancelIssue API) �Լ��� ����û �Ű� ��󿡼� ������ �� �ֽ��ϴ�.
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
        { ���ݿ����� ���� ���� �׸� ���� �߼ۼ����� Ȯ���մϴ�.
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
        { ���ݿ����� ���� ���� �׸� ���� �߼ۼ����� �����մϴ�.
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
        { ���ݿ����� PDF ������ �ٿ� ���� �� �ִ� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPDFURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPDFURL(txtCorpNum.Text, txtMgtKey.Text);
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

procedure TfrmExample.btnAssignMgtKeyClick(Sender: TObject);
var
        response : TResponse;
        mgtKey, itemKey : String;
begin
        {**********************************************************************}
        { �˺� ����Ʈ�� ���� �����Ͽ� ������ȣ�� �ο����� ���� ���ݿ������� ������ȣ�� �Ҵ��մϴ�.
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
        { ���ݿ����� 1���� �� ���� ������(����Ʈ ���, ���� �޴� �� ��ư ����)�� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
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
        { ����ȸ�� ����Ʈ �������� Ȯ���� ���� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetPaymentURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getPaymentURL(txtCorpNum.Text);
                txtURL.text := resultURL;
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
        { ����ȸ�� ����Ʈ ��볻�� Ȯ���� ���� �������� �˾� URL�� ��ȯ�մϴ�.
        { - ��ȯ�Ǵ� URL�� ���� ��å�� 30�� ���� ��ȿ�ϸ�, �ð��� �ʰ��� �Ŀ��� �ش� URL�� ���� ������ ������ �Ұ��մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetUseHistoryURL
        {**********************************************************************}

        try
                resultURL := cashbillService.getUseHistoryURL(txtCorpNum.Text);
                txtURL.text := resultURL;
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
        { ����ȸ�� ����ڹ�ȣ�� ��ϵ� �����(�˺� �α��� ����) ������ Ȯ���մϴ�.
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
                tmp := tmp + 'email (����� �̸���) : ' + contactInfo.email + #13;
                tmp := tmp + 'regDT (��� �Ͻ�) : ' + contactInfo.regDT + #13;
                tmp := tmp + 'searchRole (����� ����) : ' + contactInfo.searchRole + #13;
                tmp := tmp + 'mgrYN (������ ����) : ' + booltostr(contactInfo.mgrYN) + #13;
                tmp := tmp + 'state (��������) : ' + inttostr(contactInfo.state) + #13;
                ShowMessage(tmp);
        end
end;

procedure TfrmExample.btnBulkSubmitClick(Sender: TObject);
var
        SubmitID : string;
        CashbillList : Array of TCashbill;
        Cashbill : TCashbill;
        i : integer;
        response : TCBBulkResponse;
begin
        {**********************************************************************}
        { �ִ� 100���� ���ݿ����� ������ �ѹ��� ��û���� �����մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#BulkSubmit
        {**********************************************************************}
        SetLength(CashbillList, 10);

        for i :=0 to Length(CashbillList) -1 do
        begin
                // ���ݰ�꼭 ��ü ����
                CashbillList[i] := TCashbill.Create;

                // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
                // ����ں��� �ߺ����� �ʵ��� ����
                CashbillList[i].MgtKey := txtSubmitID.Text + inttostr(i);

                // [�ʼ�] ��������, [���ΰŷ�, ��Ұŷ�] �� ����
                CashbillList[i].tradeType := '���ΰŷ�';
                
                // [�ʼ�] �ŷ�����, [�ҵ������, ����������] �� ����
                CashbillList[i].tradeUsage := '�ҵ������';

                // �ŷ�����, [�Ϲ�, ��������, ���߱���] �� ����
                CashbillList[i].tradeOpt := '�Ϲ�';

                // [�ʼ�] ��������, [����, �����] �� ����
                CashbillList[i].taxationType := '����';

                // [�ʼ�] �ŷ��ݾ�
                CashbillList[i].totalAmount := '11000';

                // [�ʼ�] ���ް���
                CashbillList[i].supplycost := '10000';

                // [�ʼ�] �ΰ���
                CashbillList[i].tax := '1000';

                // [�ʼ�] �����
                CashbillList[i].serviceFee := '0';

                // [�ʼ�] ������ ����ڹ�ȣ, '-' ���� 10�ڸ�
                CashbillList[i].franchiseCorpNum := txtCorpNum.Text;

                // ������ ������� �ĺ���ȣ
                CashbillList[i].franchiseTaxRegID := '';

                // ������ ��ȣ
                CashbillList[i].franchiseCorpName := '�����ڻ�ȣ';

                // ������ ��ǥ�� ����
                CashbillList[i].franchiseCEOName := '������ ��ǥ��';

                // ������ �ּ�
                CashbillList[i].franchiseAddr := '������ �ּ�';

                // ������ ��ȭ��ȣ
                CashbillList[i].franchiseTEL := '07043042991';

                // [�ʼ�] �ĺ���ȣ
                // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
                // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
                CashbillList[i].identityNum := '0101112222';

                // �ֹ��ڸ�
                CashbillList[i].customerName := '����';

                // �ֹ���ǰ��
                CashbillList[i].itemName := '��ǰ��';

                // �ֹ���ȣ
                CashbillList[i].orderNumber := '�ֹ���ȣ';

                // �ֹ��� �̸����ּ�
                CashbillList[i].email := 'test@test.com';

                // �ֹ��� �޴�����ȣ
                CashbillList[i].hp := '010-111-222';

                // �ֹ��� �ѽ���ȣ
                CashbillList[i].fax := '777-444-333';

                // ����ȳ����� ���ۿ���
                CashbillList[i].smssendYN := False;
            
        end;
        
        try
                response := cashbillService.BulkSubmit(txtCorpNum.Text, txtSubmitID.Text, CashbillList);

                ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 +'����޽��� : '+ response.Message + #10#13 +'�������̵� : '+ response.receiptID);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 +'����޽��� : '+ le.Message);
                        Exit;
                end;
        end;
end;

procedure TfrmExample.btnGetBulkResultClick(Sender: TObject);
var
        SubmitID : string;
        bulkCashbillResult : TBulkCashbillResult;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { ������ ������ SubmitID�� ����Ͽ� ���ݿ����� ��������� Ȯ���մϴ�.
        { - https://docs.popbill.com/cashbill/delphi/api#GetBulkResult
        {**********************************************************************}
        try
            bulkCashbillResult := cashbillService.GetBulkResult(txtCorpNum.text, txtSubmitID.text, txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if cashbillService.LastErrCode <> 0 then
        begin
                ShowMessage('�����ڵ� : '+ IntToStr(cashbillService.LastErrCode) + #10#13 +'����޽��� : '+  cashbillService.LastErrMessage);
                Exit;
        end
        else
        begin
                tmp := 'code(�ڵ�) : ' +  IntToStr(bulkCashbillResult.code) + #13;
                tmp := tmp + 'message (����޽���) : ' + bulkCashbillResult.message + #13;
                tmp := tmp + 'submitID (������̵�) : ' + bulkCashbillResult.submitID + #13;
                tmp := tmp + 'submitCount (���ݰ�꼭 ���� �Ǽ�) : ' + IntToStr(bulkCashbillResult.submitCount) + #13;
                tmp := tmp + 'successCount (���ݰ�꼭 ���� ���� �Ǽ�) : ' + IntToStr(bulkCashbillResult.successCount) + #13;
                tmp := tmp + 'failCount (���ݰ�꼭 ���� ���� �Ǽ�) : ' + IntToStr(bulkCashbillResult.failCount) + #13;
                tmp := tmp + 'txState (���������ڵ�) : ' + IntToStr(bulkCashbillResult.txState) + #13;
                tmp := tmp + 'txResultCode (���� ����ڵ�) : ' + IntToStr(bulkCashbillResult.txResultCode) + #13;
                tmp := tmp + 'txStartDT (����ó�� �����Ͻ�) : ' + bulkCashbillResult.txStartDT + #13;
                tmp := tmp + 'txEndDT (����ó�� �Ϸ��Ͻ�) : ' + bulkCashbillResult.txEndDT + #13;
                tmp := tmp + 'receiptDT (�����Ͻ�) : ' + bulkCashbillResult.receiptDT + #13;
                tmp := tmp + 'receiptID (�������̵�) : ' + bulkCashbillResult.receiptID + #13#13;

                tmp := tmp + 'code(�ڵ�) |  mgtKey (������ȣ) |  confirmNum (����û ���ι�ȣ) | tradeDate(�ŷ�����)' + #13#13;
                for i := 0 to Length(bulkCashbillResult.issueResult) -1 do
                begin
        	  tmp := tmp + IntToStr(bulkCashbillResult.issueResult[i].code) + ' | '
                        + bulkCashbillResult.issueResult[i].mgtKey + ' | '
                        + bulkCashbillResult.issueResult[i].confirmNum + ' | '
                        + bulkCashbillResult.issueResult[i].tradeDate + #13#13;
                end;
                bulkCashbillResult.Free;
                ShowMessage(tmp);
        end;
end;

end.

