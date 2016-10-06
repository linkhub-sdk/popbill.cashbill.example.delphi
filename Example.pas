{******************************************************************************}
{ �˺� ���ݿ����� API Delphi SDK Example                                       }
{                                                                              }
{ - ������ SDK ������ �ȳ� : http://blog.linkhub.co.kr/1059                  }
{ - ������Ʈ ���� : 2016-10-06                                                 }
{ - ���� ������� ����ó : 1600-8536 / 070-4304-2991 (������ �븮)             }
{ - ���� ������� �̸��� : code@linkhub.co.kr                                  }
{                                                                              }
{ <�׽�Ʈ �������� �غ����>                                                   }
{ (1) 32, 35�� ���ο� ����� ��ũ���̵�(LinkID)�� ���Ű(SecretKey)��          }
{    ��ũ��� ���Խ� ���Ϸ� �߱޹��� ���������� ����                           }
{ (2) �˺� ���߿� ����Ʈ(test.popbill.com)�� ����ȸ������ ����                 }
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
        
        //����ȯ�� ������, true(���߿�), false(�����)
        cashbillService.IsTest := true;

        //Exception ó�� ������ true(�⺻��)
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
        {    �˺�(www.popbill.com)�� �α��ε� �˾� URL�� ��ȯ�մϴ�.           }
        {    URL ������å�� ���� ��ȯ�� URL�� 30���� ��ȿ�ð��� �����ϴ�.      }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, txtUserID.Text, 'LOGIN');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { 1���� ���ݿ������� �����մϴ�                                        }
        { - ���ݿ������� ������ ��쿡�� ����������ȣ(mgtKey)�� ���� �� ��   }
        {   �ֽ��ϴ�.                                                          }
        { - ���������� ���� ���� : [�ӽ�����], [�������]                      }
        {**********************************************************************}

        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnRegisterClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { ���ݿ����� 1���� [�ӽ�����] �մϴ�.                                  }
        { - ���ݿ����� �ӽ�����(Register API) ȣ���Ŀ��� ����(Issue API)��     }
        {   ȣ���ؾ߸� ����û�� ���۵˴ϴ�.                                    }
        { - �ӽ������ ������ �ѹ��� ȣ��� ó���ϴ� ��ù���(RegistIssue API) }
        {   ���μ����� �����մϴ�.                                             }
        { - ������ ���� ���� 5�� ������ ����� ���ݿ������� ���� ���� 2�ÿ�    }
        {   ����û ���۰���� Ȯ���� �� �ֽ��ϴ�.                              }
        { - ����û ���� ��å�� ���� ������  "[���ݿ����� API �����Ŵ���] >     }
        {   1.4. ����û ���� ��å" �� �����Ͻñ� �ٶ��ϴ�.                     }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [�ʼ�] �ŷ�����, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [��Ұŷ��� �ʼ�] �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
//      cashbill.orgConfirmNum := 'E95069345';

        // [�ʼ�] ������ ����� ��ȣ, '-' ���� 10�ڸ�       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [�ʼ�] ���ݿ����� ����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // [�ʼ�] �ŷ�ó �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '01043245117';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';
        
        // [�ʼ�] ����
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] �հ�ݾ�
        cashbill.totalAmount := '11000';

        
        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ';

        // ������ ��ǥ�ڸ�
        cashbill.franchiseCEOName := '������ ��ǥ��';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ����ó
        cashbill.franchiseTEL := '07043042991';


        // ����
        cashbill.customerName := '����';

        // ��ǰ��
        cashbill.itemName := '��ǰ��';
        
        // ������ �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �� �̸����ּ�
        cashbill.email := 'test@test.com';

        // �� �ѽ���ȣ
        cashbill.fax := '777-444-333';

        // �� �޴�����ȣ
        cashbill.hp := '010-111-222';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        try
                response := cashbillService.Register(txtCorpNum.text, cashbill, txtUserID.Text);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;


procedure TfrmExample.btnJoinMemberClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinForm;
begin
        {**********************************************************************}
        {    ��Ʈ���� ����ȸ������ ȸ�������� ��û�մϴ�.                      }
        {    ���̵� �ߺ�Ȯ���� btnCheckIDClick ���ν����� �����Ͻñ� �ٶ��ϴ�. }
        {**********************************************************************}

        // ��ũ ���̵�
        joinInfo.LinkID := LinkID;

        // ����ڹ�ȣ '-' ����, 10�ڸ�
        joinInfo.CorpNum := '1231212312';

        // ��ǥ�ڼ���, �ִ� 30��
        joinInfo.CEOName := '��ǥ�ڼ���';

        // ��ȣ��, �ִ� 70��
        joinInfo.CorpName := '��ȣ';

        // �ּ�, �ִ� 300��
        joinInfo.Addr := '�ּ�';

        // ����, �ִ� 40��
        joinInfo.BizType := '����';

        // ����, �ִ� 40��
        joinInfo.BizClass := '����';

        // ���̵�, 6���̻� 20�� �̸� 
        joinInfo.ID     := 'userid';

        // ��й�ȣ, 6���̻� 20�� �̸�
        joinInfo.PWD    := 'pwd_must_be_long_enough';

        // ����ڸ�, �ִ� 30��
        joinInfo.ContactName := '����ڸ�';

        // ����� ����ó, �ִ� 20��
        joinInfo.ContactTEL :='02-999-9999';

        // ����� �޴�����ȣ, �ִ� 20��
        joinInfo.ContactHP := '010-1234-5678';

        // ����� �ѽ���ȣ, �ִ� 20��
        joinInfo.ContactFAX := '02-999-9998';

        // ����� ���� �ּ�, �ִ� 70��
        joinInfo.ContactEmail := 'test@test.com';

        try
                response := cashbillService.JoinMember(joinInfo);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
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
        { ����ȸ���� ȸ�������� �����մϴ�.                                    }
        {**********************************************************************}
        
        corpInfo := TCorpInfo.Create;

        // ��ǥ�ڸ�, �ִ� 30��
        corpInfo.ceoname := '��ǥ�ڸ�';

        // ��ȣ, ��ȣ �ִ� 70��
        corpInfo.corpName := '�˺�_����';

        // ����, �ִ� 40��
        corpInfo.bizType := '����';

        // ����, �ִ� 40��
        corpInfo.bizClass := '����';

        // �ּ�, �ִ� 300��
        corpInfo.addr := '����Ư���� ������ ������� 517';

        try
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text, corpInfo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnGetBalanceClick(Sender: TObject);
var
        balance : Double;
begin
        {**********************************************************************}
        { ����ȸ���� �ܿ�����Ʈ�� Ȯ���մϴ�.                                  }
        { - ���ݹ���� ���������� �ƴ� ��Ʈ�ʰ����� ��� ��Ʈ�� �ܿ�����Ʈ     }
        {    Ȯ��(GetPartnerBalance API) ��� �̿��Ͻñ� �ٶ��ϴ�              }
        {**********************************************************************}

        try
                balance := cashbillService.GetBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�ܿ�����Ʈ : ' + FloatToStr(balance));
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

        ShowMessage('���ݿ����� ����ܰ� : '+ FloatToStr(unitcost));

end;

procedure TfrmExample.btnGetPopbillURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { ����ȸ�� ����Ʈ ���� URL�� ��ȯ�մϴ�.                               }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, txtUserID.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { ��Ʈ���� �ܿ�����Ʈ�� Ȯ���մϴ�. ���ݹ���� ��Ʈ�ʰ����� �ƴ�       }
        { ���������� ��� ����ȸ�� �ܿ�����Ʈ Ȯ��(GetBalance API)��           }
        { �̿��Ͻñ� �ٶ��ϴ�                                                  }
        {**********************************************************************}
        
        try
                balance := cashbillService.GetPartnerBalance(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�ܿ�����Ʈ : ' + FloatToStr(balance));

end;

procedure TfrmExample.btnCheckMgtkeyInUseClick(Sender: TObject);
var
        InUse : boolean;
begin
        {***********************************************************************}
        { ���ݿ������� ����ϱ��� ����������ȣ(mgtKey) �ߺ����θ� Ȯ���մϴ�.   }
        { - ������ȣ�� 1~24�ڸ� ����, ����, '-', '_' �������� �����Ҽ� �ֽ��ϴ�.}
        {***********************************************************************}
        
        try
                InUse := cashbillService.CheckMgtKeyInUse(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        if InUse then ShowMessage('�����') else ShowMessage('�� �����.');
end;

procedure TfrmExample.btnUpdateClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
begin
        {**********************************************************************}
        { [�ӽ�����] ���ݿ������� �����׸��� �����մϴ�.                       }
        { - ���ݿ����� �׸� ������ "[���ݿ����� API �����Ŵ���] > 4.1.       }
        {   ���ݿ����� ����" �� �����Ͻñ� �ٶ��ϴ�.                           }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [�ʼ�] �ŷ�����, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [��Ұŷ��� �ʼ�] �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
//      cashbill.orgConfirmNum := 'E95069345';

        // [�ʼ�] ������ ����� ��ȣ, '-' ���� 10�ڸ�       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [�ʼ�] ���ݿ����� ����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // [�ʼ�] �ŷ�ó �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '01043245117';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';
        
        // [�ʼ�] ����
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] �հ�ݾ�
        cashbill.totalAmount := '11000';

        
        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ_����';

        // ������ ��ǥ�ڸ�
        cashbill.franchiseCEOName := '������ ��ǥ��_����';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ����ó
        cashbill.franchiseTEL := '07043042991';


        // ����
        cashbill.customerName := '����';

        // ��ǰ��
        cashbill.itemName := '��ǰ��';
        
        // ������ �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �� �̸����ּ�
        cashbill.email := 'test@test.com';

        // �� �ѽ���ȣ
        cashbill.fax := '777-444-333';

        // �� �޴�����ȣ
        cashbill.hp := '010-111-222';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        try
                response := cashbillService.Update(txtCorpNum.text, txtMgtKey.text, cashbill,txtUserID.Text);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [�ӽ�����] ������ ���ݿ������� [����]ó�� �մϴ�.                    }
        {**********************************************************************}

        // �޸�
        memo := '����޸�';
        
        try
                response := cashbillService.Issue(txtCorpNum.text, txtMgtKey.Text, memo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnCancelIssueClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [����Ϸ�] ������ ���ݿ������� [�������] �մϴ�.                    }
        { - [�������]�� ����û ���� ������ ȣ���� �� �ֽ��ϴ�.                }
        { - [�������] ������ ������ȣ�� ���� �ϱ� ���ؼ��� ����(Delete API) }
        {   �� ȣ���Ͽ� [����] ó�� �ϼž� �մϴ�.                             }
        {**********************************************************************}
        
        // �޸�
        memo := '������� �޸�';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);

end;

procedure TfrmExample.btnGetInfoClick(Sender: TObject);
var
        cashbillInfo : TCashbillInfo;
        tmp : string;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� ����/��� ������ Ȯ���մϴ�.                        }
        { - ���ݿ����� ��������(GetInfo API)�� �����׸� ���� �ڼ��� ������   }
        {   "[���ݿ����� API �����Ŵ���] > 4.2. ���ݿ����� �������� ����" ��   }
        {   �����Ͻñ� �ٶ��ϴ�.                                               }
        {**********************************************************************}

        try
                cashbillInfo := cashbillService.getInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        {**********************************************************************}
        { ���ݿ����� �ӽ�(����)������ �˾� URL�� ��ȯ�մϴ�.                   }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'TBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { ���ݿ����� ���๮���� �˾� URL�� ��ȯ�մϴ�.                         }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'PBOX');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { ���ݿ����� �����ۼ� �˾� URL�� ��ȯ�մϴ�.                           }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, txtUserID.Text, 'WRITE');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { 1���� ���ݿ����� ���� �˾� URL�� ��ȯ�մϴ�.                         }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { 1���� ���ݿ����� �μ� �˾� URL�� ��ȯ�մϴ�.                         }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}

        try
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
       { 1���� ���ݿ����� �μ�(���޹޴���) URL�� ��ȯ�մϴ�.                  }
       { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
       {**********************************************************************}

        try
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
       { �ټ����� ���ݿ����� �μ� �˾� URL�� ��ȯ�մϴ�.                      }
       { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
       {**********************************************************************}

        // �μ��� ���ݿ����� ����������ȣ �迭, �ִ� 100��
        SetLength(KeyList,4);
        KeyList[0] := '20161004-01';
        KeyList[1] := '20161004-02';
        KeyList[2] := '20161004-03';
        KeyList[3] := '20161004-04';
        
        try
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { ���ϸ�ũ URL�� ��ȯ�մϴ�.                                           }
        { - ���ϸ�ũ URL�� ��� ��ȿ�ð��� �������� �ʽ��ϴ�.                  }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { ���ݿ������� �ѽ������մϴ�.                                         }
        { - �ѽ� ���� ��û�� ����� �����˴ϴ�. (���۽��н� ȯ��ó��)          }
        { - ���۳��� Ȯ���� "�˺� �α���" > [���� �ѽ�] > [�ѽ�] > [���۳���]  }
        {   �޴����� ���۰���� Ȯ���� �� �ֽ��ϴ�.                            }
        {**********************************************************************}

        //�ѽ� �߽Ź�ȣ
        sendNum := '070-4304-2991';

        //�ѽ� ���Ź�ȣ                                                
        receiveNum := '070-111-222';

        try
                response := cashbillService.SendFAX(txtCorpNum.text, txtMgtKey.Text, sendNum, receiveNum, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);

end;

procedure TfrmExample.btnSendSMSClick(Sender: TObject);
var
        response : TResponse;
        sendNum : String;
        receiveNum : String;
        contents : String;
begin
        {**********************************************************************}
        { �˸����ڸ� �����մϴ�. (�ܹ�/SMS- �ѱ� �ִ� 45��)                    }
        { - �˸����� ���۽� ����Ʈ�� �����˴ϴ�. (���۽��н� ȯ��ó��)         }
        { - ���۳��� Ȯ���� "�˺� �α���" > [���� �ѽ�] > [���۳���] �ǿ���    }
        {   ���۰���� Ȯ���� �� �ֽ��ϴ�.                                     }
        {**********************************************************************}

        //�߽Ź�ȣ
        sendNum := '07043042991';
        
        //���Ź�ȣ
        receiveNum := '010-111-222';

        //���� �޽�������, 90byte�� �ʰ��� ������ �����Ǿ� ���۵˴ϴ�.
        contents := '���ݿ������� ����Ǿ����ϴ�. ���� Ȯ�ιٶ��ϴ�.';
        
        try
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);

end;

procedure TfrmExample.btnSendEmailClick(Sender: TObject);
var
        response : TResponse;
        email : String;
begin
        {**********************************************************************}
        { ����ȳ� ������ �������մϴ�.                                        }
        {**********************************************************************}
        
        // ���Ÿ����ּ�
        email := 'test@test.com';

        try
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);

end;

procedure TfrmExample.btnGetDetailInfoClick(Sender: TObject);
var
        cashbill : TCashbill;
        tmp : string;
begin
        {**********************************************************************}
        { 1���� ���ݿ����� ���׸��� Ȯ���մϴ�.                              }
        { - ���ݿ����� �׸� ���� �ڼ��� ������ "[���ݿ����� API �����Ŵ���]  }
        {   > 4.1 ���ݿ����� ���� " �� �����Ͻñ� �ٶ��ϴ�.                    }
        {**********************************************************************}

        try
                cashbill := cashbillService.getDetailInfo(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        {**********************************************************************}
        { ���ݿ����� ���� �����̷��� Ȯ���մϴ�.                               }
        { - ���� �����̷� Ȯ��(GetLogs API) �����׸� ���� �ڼ��� ������      }
        {  "[���ݿ����� API �����Ŵ���] > 3.4.4 ���� �����̷� Ȯ��" �� ����    }
        {   �Ͻñ� �ٶ��ϴ�.                                                   }
        {**********************************************************************}

        try
                LogList := cashbillService.getLogs(txtCorpNum.text, txtMgtKey.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { �ٷ��� ���ݿ����� ����/��� ������ Ȯ���մϴ�. (�ִ� 1000��)         }
        { - ���ڸ��� ��������(GetInfos API) �����׸� ���� �ڼ��� ������    }
        { - "[���ݿ����� API �����Ŵ���] > 4.2. ���ݿ����� �������� ����" ��   }
        {   ����  �Ͻñ� �ٶ��ϴ�.                                             }
        {**********************************************************************}

        // ���ݿ����� ����������ȣ �迭, �ִ� 1000��
        SetLength(KeyList,4);
        KeyList[0] := '20161004-01';
        KeyList[1] := '20161004-02';
        KeyList[2] := '20161004-03';
        KeyList[3] := '20161004-04';
        
        try
                InfoList := cashbillService.getInfos(txtCorpNum.text,KeyList);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        {**********************************************************************}
        { ȸ������(JoinMember API)�� ȣ���ϱ� �� ���̵� �ߺ��� Ȯ���մϴ�.     }
        {**********************************************************************}

        try
                response := cashbillService.CheckID(txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);


end;

procedure TfrmExample.btnRegistContactClick(Sender: TObject);
var
        response : TResponse;
        joinInfo : TJoinContact;
begin
        {**********************************************************************}
        { ����ȸ���� ����ڸ� �űԷ� ����մϴ�.                               }
        {**********************************************************************}

        // [�ʼ�] ���̵� (6�� �̻� 20�� �̸�)
        joinInfo.id := 'userid';

        // [�ʼ�] ��й�ȣ (6�� �̻� 20�� �̸�)
        joinInfo.pwd := 'thisispassword';

        // [�ʼ�] ����ڸ�(�ѱ��̳� ���� 30�� �̳�)
        joinInfo.personName := '����ڼ���';

        // [�ʼ�] ����ó
        joinInfo.tel := '070-4304-2991';

        // �޴�����ȣ
        joinInfo.hp := '010-1111-2222';

        // �ѽ���ȣ
        joinInfo.fax := '02-6442-9700';

        // [�ʼ�] �̸���
        joinInfo.email := 'test@test.com';

        // ��ȸ���� (true ȸ����ȸ/ false ������ȸ)
        joinInfo.searchAllAllowYN := false;

        // ������ ���ѿ���
        joinInfo.mgrYN := false;

        try
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo, txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;


procedure TfrmExample.btnUpdateContactClick(Sender: TObject);
var
        contactInfo : TContactInfo;
        response : TResponse;
begin
        {**********************************************************************}
        { ����ȸ���� ����� ������ �����մϴ�.                                 }
        {**********************************************************************}

        contactInfo := TContactInfo.Create;

        // ����ڸ�
        contactInfo.personName := '�׽�Ʈ �����';

        // ����ó
        contactInfo.tel := '070-7510-3710';

        // �޴�����ȣ
        contactInfo.hp := '010-4324-1111';

        // �̸��� �ּ�
        contactInfo.email := 'test@test.com';
        
        // �ѽ���ȣ
        contactInfo.fax := '02-6442-9799';
        
        // ȸ����ȸ ���ѿ���
        contactInfo.searchAllAllowYN := true;

        // ������ ��ȯ ����
        contactInfo.mgrYN := false;

        try
                response := cashbillService.UpdateContact(txtCorpNum.text, contactInfo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;


procedure TfrmExample.btnCancelIssue_riClick(Sender: TObject);
var
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { [����Ϸ�] ������ ���ݿ������� [�������] �մϴ�.                    }
        { - [�������]�� ����û ���� ������ ȣ���� �� �ֽ��ϴ�.                }
        { - [�������] ������ ������ȣ�� ���� �ϱ� ���ؼ��� ����(Delete API) }
        {   �� ȣ���Ͽ� [����] ó�� �ϼž� �մϴ�.                             }
        {**********************************************************************}

        // ������� �޸�
        memo := '������� �޸�';
        
        try
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnDelete_riClick(Sender: TObject);
var
        response : TResponse;
begin
        {**********************************************************************}
        { 1���� ���ݿ������� �����մϴ�                                        }
        { - ���ݿ������� ������ ��쿡�� ����������ȣ(mgtKey)�� ���� �� ��   }
        {   �ֽ��ϴ�.                                                          }
        { - ���������� ���� ���� : [�ӽ�����], [�������]                      }
        {**********************************************************************}

        try
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

procedure TfrmExample.btnRegistIssueClick(Sender: TObject);
var
        cashbill : TCashbill;
        response : TResponse;
        memo : String;
begin
        {**********************************************************************}
        { 1���� ���ݿ������� ��ù��� ó���մϴ�. (����)                       }
        { - ���ݿ����� �׸� ������ "[���ݿ����� API �����Ŵ���] >            }
        {   4.1. ���ݿ����� ����" �� �����Ͻñ� �ٶ��ϴ�.                      }
        {**********************************************************************}

        cashbill := TCashbill.Create;

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        cashbill.MgtKey := txtMgtKey.Text;

        // [�ʼ�] �ŷ�����, [���ΰŷ�, ��Ұŷ�] �� ����
        cashbill.tradeType := '���ΰŷ�';

        // [��Ұŷ��� �ʼ�] �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
//      cashbill.orgConfirmNum := 'E95069345';

        // [�ʼ�] ������ ����� ��ȣ, '-' ���� 10�ڸ�       
        cashbill.franchiseCorpNum := txtCorpNum.Text;

        // [�ʼ�] ���ݿ����� ����, [�ҵ������, ����������] �� ����
        cashbill.tradeUsage := '�ҵ������';

        // [�ʼ�] �ŷ�ó �ĺ���ȣ
        // �ŷ�����(tradeUsage)�� '�ҵ������'�� ��� [�ֹε��/�޴���/ī��]��ȣ�� ���డ��
        // �ŷ�����(traseUsage)�� '����������'�� ��� [�ֹε��/�޴���/ī��/�����]��ȣ�� ���డ��
        cashbill.identityNum := '01043245117';

        // [�ʼ�] ��������, [����, �����] �� ����
        cashbill.taxationType := '����';

        // [�ʼ�] ���ް���
        cashbill.supplycost := '10000';
        
        // [�ʼ�] ����
        cashbill.tax := '1000';

        // [�ʼ�] �����
        cashbill.serviceFee := '0';

        // [�ʼ�] �հ�ݾ�
        cashbill.totalAmount := '11000';

        
        // ������ ��ȣ
        cashbill.franchiseCorpName := '�����ڻ�ȣ';

        // ������ ��ǥ�ڸ�
        cashbill.franchiseCEOName := '������ ��ǥ��';

        // ������ �ּ�
        cashbill.franchiseAddr := '������ �ּ�';

        // ������ ����ó
        cashbill.franchiseTEL := '07043042991';


        // ����
        cashbill.customerName := '����';

        // ��ǰ��
        cashbill.itemName := '��ǰ��';
        
        // ������ �ֹ���ȣ
        cashbill.orderNumber := '�ֹ���ȣ';

        // �� �̸����ּ�
        cashbill.email := 'test@test.com';

        // �� �ѽ���ȣ
        cashbill.fax := '777-444-333';

        // �� �޴�����ȣ
        cashbill.hp := '010-111-222';

        // ����ȳ����� ���ۿ���
        cashbill.smssendYN := False;

        // �޸�
        memo := '��ù��� ���ݿ����� �޸�';
                
        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo, txtUserID.Text);
                cashbill.Free;
        except
                on le : EPopbillException do begin
                        cashbill.Free;
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 + '����޽��� : ' + le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
end;

procedure TfrmExample.btnGetCorpInfoClick(Sender: TObject);
var
        corpInfo : TCorpInfo;
        tmp : string;
begin
        {**********************************************************************}
        { ����ȸ���� ȸ�������� Ȯ���մϴ�.                                    }
        {**********************************************************************}

        try
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text, txtUserID.Text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'CorpName (��ȣ) : ' + corpInfo.CorpName + #13;
        tmp := tmp + 'CeoName (��ǥ�� ����) : ' + corpInfo.CeoName + #13;
        tmp := tmp + 'BizType (����) : ' + corpInfo.BizType + #13;
        tmp := tmp + 'BizClass (����) : ' + corpInfo.BizClass + #13;
        tmp := tmp + 'Addr (�ּ�) : ' + corpInfo.Addr + #13;

        ShowMessage(tmp);
end;

procedure TfrmExample.btnListContactClick(Sender: TObject);
var
        InfoList : TContactInfoList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        { ����ȸ���� ����� ����� Ȯ���մϴ�.                                 }
        {**********************************************************************}

        try
                InfoList := cashbillService.ListContact(txtCorpNum.text, txtUserID.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        {**********************************************************************}
        { �ش� ������� ����ȸ�� ���Կ��θ� Ȯ���մϴ�.                        }
        { - LinkID�� ��Ʈ�ʸ� �ĺ��ϴ� ��������(32������)�� �����Ǿ� �ֽ��ϴ�. }
        {**********************************************************************}
        
        try
                response := cashbillService.CheckIsMember(txtCorpNum.text, LinkID);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);

end;

procedure TfrmExample.btnGetUnitCostClick(Sender: TObject);
var
        unitcost : Single;
begin
        {**********************************************************************}
        { ���ݿ����� ����ܰ��� Ȯ���մϴ�.                                    }
        {**********************************************************************}

        try
                unitcost := cashbillService.GetUnitCost(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        ShowMessage('���ݿ����� ����ܰ� : '+ FloatToStr(unitcost));
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
        {**********************************************************************}
        { �˻����ǵ��� �̿��� ���ݿ����� ����� ��ȸ�մϴ�.                    }
        { - �����׸� ���� �ڼ��� ������ "[���ݿ����� API �����Ŵ���] >       }
        {   3.4.3. Search (��� ��ȸ)" �� �����Ͻñ� �ٶ��ϴ�.                 }
        {**********************************************************************}

        // [�ʼ�] �������� { R: �������, W:�ۼ�����, I:�������� }
        DType := 'I';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        SDate := '20160901';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        EDate := '20161031';

        // ���ۻ��°� �迭. �̱���� ��ü��ȸ, �������� �� 3�ڸ��� �迭, 2,3��° �ڸ� ���ϵ� ī�� ��밡��
        // ���ۻ��°� ���̺��� "[���ݿ����� �����Ŵ���] > 5.2 ���ݿ����� �����ڵ� ���̺�" ����
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
                                QString, Page, PerPage,Order);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'code : '+IntToStr(SearchList.code) + #13;                               // ���� ����ڵ�
        tmp := tmp + 'total : '+ IntToStr(SearchList.total) + #13;                      // �� �˻���� �Ǽ�
        tmp := tmp + 'perPage : '+ IntToStr(SearchList.perPage) + #13;                  // �������� �˻�����
        tmp := tmp + 'pageNum : '+ IntToStr(SearchList.pageNum) + #13;                  // ������ ��ȣ
        tmp := tmp + 'pageCount : '+ IntToStr(SearchList.pageCount) + #13;              // ������ ����
        tmp := tmp + 'message : '+ SearchList.message + #13#13;                         // ���� �޽���

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
        {**********************************************************************}
        { ����ȸ���� ���ݿ����� API ���� ���������� Ȯ���մϴ�.              }
        {**********************************************************************}

        try
                chargeInfo := cashbillService.GetChargeInfo(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := 'unitCost (�ܰ�) : ' + chargeInfo.unitCost + #13;
        tmp := tmp + 'chargeMethod (��������) : ' + chargeInfo.chargeMethod + #13;
        tmp := tmp + 'rateSystem (��������) : ' + chargeInfo.rateSystem + #13;

        ShowMessage(tmp);

end;

end.
