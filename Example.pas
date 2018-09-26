{******************************************************************************}
{ �˺� ���ݿ����� API Delphi SDK Example                                       }
{                                                                              }
{ - ������ SDK ������ �ȳ� : http://blog.linkhub.co.kr/572                   }
{ - ������Ʈ ���� : 2018-09-26                                                 }
{ - ���� ������� ����ó : 1600-9854 / 070-4304-2991                           }
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
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, 'LOGIN');
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
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
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
                response := cashbillService.UpdateCorpInfo(txtCorpNum.text, corpInfo);
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
                resultURL := cashbillService.getPopbillURL(txtCorpNum.Text, 'CHRG');
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
                response := cashbillService.Issue(txtCorpNum.text, txtMgtKey.Text, memo);
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
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
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

        tmp := tmp +'itemKey (������Ű) : ' +  cashbillInfo.itemKey + #13;
        tmp := tmp +'mgtKey (����������ȣ) : ' +  cashbillInfo.mgtKey + #13;
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

procedure TfrmExample.btnGetURL_TBOXClick(Sender: TObject);
var
        resultURL : String;
begin
        {**********************************************************************}
        { ���ݿ����� �ӽ�(����)������ �˾� URL�� ��ȯ�մϴ�.                   }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'TBOX');
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
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'PBOX');
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
                resultURL := cashbillService.GetURL(txtCorpNum.Text, 'WRITE');
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
                resultURL := cashbillService.getPopupURL(txtCorpNum.Text, txtMgtKey.Text);
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
                resultURL := cashbillService.getPrintURL(txtCorpNum.Text, txtMgtKey.Text);
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
                resultURL := cashbillService.getEPrintURL(txtCorpNum.Text, txtMgtKey.Text);
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
                resultURL := cashbillService.getMassPrintURL(txtCorpNum.text, KeyList);
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
                resultURL := cashbillService.getMailURL(txtCorpNum.Text, txtMgtKey.Text);
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
        { - �ѽ� ���� ��û�� ����Ʈ�� �����˴ϴ�. (���۽��н� ȯ��ó��)        }
        { - ���۳��� Ȯ���� "�˺� �α���" > [���� �ѽ�] > [�ѽ�] > [���۳���]  }
        {   �޴����� ���۰���� Ȯ���� �� �ֽ��ϴ�.                            }
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
                response := cashbillService.SendSMS(txtCorpNum.text,txtMgtKey.Text, sendNum, receiveNum, contents);
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
                response := cashbillService.SendEmail(txtCorpNum.text, txtMgtKey.Text, email);
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

        tmp := tmp +'mgtKey (����������ȣ) : ' +  cashbill.mgtKey + #13;
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
        KeyList[0] := '20180926_10';
        KeyList[1] := '20180926_11';
        KeyList[2] := '20180926_12';
        KeyList[3] := '20180926_13';
        
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
                tmp := tmp +'itemKey (������Ű) : ' +  InfoList[i].itemKey + #13;
                tmp := tmp +'mgtKey (����������ȣ) : ' +  InfoList[i].mgtKey + #13;
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
                response := cashbillService.RegistContact(txtCorpNum.text, joinInfo);
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

        // ����� ���̵�
        contactInfo.id := 'testkorea';

        // ����ڸ�
        contactInfo.personName := '�׽�Ʈ �����';

        // ����ó
        contactInfo.tel := '070-7510-3715';

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
                response := cashbillService.CancelIssue(txtCorpNum.text, txtMgtKey.Text, memo);
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
                response := cashbillService.Delete(txtCorpNum.text, txtMgtKey.Text);
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
        { 1���� ���ݿ������� ��ù��� ó���մϴ�.                              }
        { - ���ݿ����� �׸� ������ "[���ݿ����� API �����Ŵ���] >            }
        {   4.1. ���ݿ����� ����" �� �����Ͻñ� �ٶ��ϴ�.                      }
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
                
        try
                response := cashbillService.RegistIssue(txtCorpNum.text, cashbill, memo);
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
                corpInfo := cashbillService.GetCorpInfo(txtCorpNum.text);
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
                InfoList := cashbillService.ListContact(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        DType, SDate, EDate, QString, Order, tmp : String;
        State, TradeType, TradeUsage, TradeOpt, TaxationType : Array Of String;
        Page, PerPage, i : Integer;
        SearchList : TCashbillSearchList;
begin
        {**********************************************************************}
        { �˻����ǵ��� �̿��� ���ݿ����� ����� ��ȸ�մϴ�.                    }
        { - �����׸� ���� �ڼ��� ������ "[���ݿ����� API �����Ŵ���] >       }
        {   3.4.3. Search (��� ��ȸ)" �� �����Ͻñ� �ٶ��ϴ�.                 }
        {**********************************************************************}

        // [�ʼ�] �������� { R: �������, W:�ۼ�����, I:�������� }
        DType := 'R';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        SDate := '20180901';

        // [�ʼ�] �˻� ��������, �ۼ�����(yyyyMMdd)
        EDate := '20180920';

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

        // �ŷ����� �迭, { N:�Ϲ� B:�������� T:���߱��� }
        SetLength(TradeOpt, 3);
        TradeOpt[0] := 'T';
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

        tmp := 'code : '+IntToStr(SearchList.code) + #13;                               // ���� ����ڵ�
        tmp := tmp + 'total : '+ IntToStr(SearchList.total) + #13;                      // �� �˻���� �Ǽ�
        tmp := tmp + 'perPage : '+ IntToStr(SearchList.perPage) + #13;                  // �������� �˻�����
        tmp := tmp + 'pageNum : '+ IntToStr(SearchList.pageNum) + #13;                  // ������ ��ȣ
        tmp := tmp + 'pageCount : '+ IntToStr(SearchList.pageCount) + #13;              // ������ ����
        tmp := tmp + 'message : '+ SearchList.message + #13#13;                         // ���� �޽���

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




procedure TfrmExample.btnRevokeRegistIssueClick(Sender: TObject);
var
        response : TResponse;
        memo, mgtKey, orgConfirmNum, orgTradeDate : String;
        smssendYN : Boolean;
begin
        {**********************************************************************}
        { 1���� ������ݿ������� ��ù��� ó���մϴ�.                          }
        { - ���ݿ����� �׸� ������ "[���ݿ����� API �����Ŵ���] >            }
        {   4.1. ���ݿ����� ����" �� �����Ͻñ� �ٶ��ϴ�.                      }
        {**********************************************************************}

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        mgtKey := txtMgtKey.Text;

        // �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        orgConfirmNum := '820116333';

        // �������ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        orgTradeDate := '20170711';

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

        ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
end;

procedure TfrmExample.btnGetPartnerURL_CHRGClick(Sender: TObject);
var
  resultURL : String;

begin
        {**********************************************************************}
        { ��Ʈ�� ����Ʈ ���� URL�� ��ȯ�մϴ�.                                 }
        { - ������å���� ���� ��ȯ�� URL�� ��ȿ�ð��� 30���Դϴ�.              }
        {**********************************************************************}
        
        try
                resultURL := cashbillService.getPartnerURL(txtCorpNum.Text, 'CHRG');
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
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
        { 1���� (�κ�) ������ݿ������� ��ù��� ó���մϴ�.                   }
        { - ���ݿ����� �׸� ������ "[���ݿ����� API �����Ŵ���] >            }
        {   4.1. ���ݿ����� ����" �� �����Ͻñ� �ٶ��ϴ�.                      }
        {**********************************************************************}

        // [�ʼ�] ���� ������ȣ 1~24�ڸ�, ����, ����, '-', '_' �����Ͽ� ����
        // ����ں��� �ߺ����� �ʵ��� ����
        mgtKey := txtMgtKey.Text;

        // �������ݿ����� ����û ���ι�ȣ
        // ���� ���� (GetInfo API) �����׸��� ����û���ι�ȣ(confirmNum) Ȯ���Ͽ� ����.
        orgConfirmNum := '820116333';

        // �������ݿ����� �ŷ�����
        // ���� ���� (GetInfo API) �����׸��� �ŷ�����(tradeDate) Ȯ���Ͽ� ����.
        orgTradeDate := '20170711';

        // ����ȳ����� ���ۿ���
        smssendYN := False;

        // �޸�
        memo := '��ù��� ������ݿ����� �޸�';

        // �κ���ҿ���,
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
                        ShowMessage('�����ڵ� : ' + IntToStr(le.code) + #10#13 + '����޽��� : ' + le.Message);
                        Exit;
                end;
        end;

        ShowMessage('�����ڵ� : ' + IntToStr(response.code) + #10#13 + '����޽��� : ' + response.Message);
end;

procedure TfrmExample.btnListEmailConfigClick(Sender: TObject);
var
        EmailConfigList : TEmailConfigList;
        tmp : string;
        i : Integer;
begin
        {**********************************************************************}
        {  ���ݿ����� �������� �׸� ���� ���ۿ��θ� ������� ��ȯ�Ѵ�.       }
        {**********************************************************************}
        
        try
                EmailConfigList := cashbillService.ListEmailConfig(txtCorpNum.text);
        except
                on le : EPopbillException do begin
                        ShowMessage('�����ڵ� : '+ IntToStr(le.code) + #10#13 +'����޽��� : '+  le.Message);
                        Exit;
                end;
        end;

        tmp := '������������ | ���ۿ���' + #13;

        for i := 0 to Length(EmailConfigList) -1 do
        begin
            if EmailConfigList[i].EmailType = 'CSH_ISSUE' then
                tmp := tmp + 'CSH_ISSUE (������ ���ݿ������� ���� �Ǿ����� �˷��ִ� ����) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;

            if EmailConfigList[i].EmailType = 'CSH_CANCEL' then
                tmp := tmp + 'CSH_CANCEL (������ ���ݿ������� ������� �Ǿ����� �˷��ִ� ����) | ' + BoolToStr(EmailConfigList[i].SendYN) + #13;
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
        { ���ݿ����� �������� �׸� ���� ���ۿ��θ� �����Ѵ�.                 }
        { ������������                                                         }
        {  CSH_ISSUE : ������ ���ݿ������� ���� �Ǿ����� �˷��ִ� ����       }
        {  CSH_CANCEL : ������ ���ݿ������� ������� �Ǿ����� �˷��ִ� ����  }
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

        ShowMessage('�����ڵ� : '+ IntToStr(response.code) + #10#13 +'����޽��� : '+  response.Message);
end;

end.
