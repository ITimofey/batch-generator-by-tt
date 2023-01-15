unit ITim.BatchGenerator.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TBatchGenerator = class(TForm)
    DriverDeviceInstancePatch: TEdit;
    BatchFileMakeButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BatchFileOperationType: TComboBox;
    procedure BatchFileMakeButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BatchGenerator: TBatchGenerator;
  BatchFile: System.Text;

implementation

{$R *.dfm}

{$Region 'BatchFileMakeButtonClick: ��������� �������� .bat-�����'}

procedure TBatchGenerator.BatchFileMakeButtonClick(Sender: TObject);
begin

  // �������� � ����������:
  // 1) ������� .txt-����
  // 2) ������� .txt-����
  // 3) �������� ���� ���������� � ����������� �� �������� ������������
  // 4) ��������� �������� ����
  // 5) ������������� ��������� ���� � ���������� .bat

  // ������ ����������� �����:
  // @echo off
  // pnputil /restart-device "USB\ROOT_HUB20\0&12345ABCDE&6"
  // exit

  assignfile(BatchFile,'TestFile.txt');
  rewrite(BatchFile);
  write(BatchFile, 'Hello, world!');
  closefile(BatchFile);

end;

{$EndRegion}

end.
