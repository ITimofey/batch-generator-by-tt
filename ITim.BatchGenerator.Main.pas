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
    DriverDeviceName: TEdit;
    BatchFileMakeButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BatchFileOperationType: TComboBox;
    DriverDevicePath: TEdit;
    Label3: TLabel;
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

{$Region 'BatchFileMakeButtonClick: Процедура создания .bat-файла'}

procedure TBatchGenerator.BatchFileMakeButtonClick(Sender: TObject);
begin
  // Пример содержимого файла:
  // @echo off
  // pnputil /restart-device "USB\ROOT_HUB20\0&12345ABCDE&6"
  // exit

  case BatchFileOperationType.ItemIndex of
    0: begin
      AssignFile(BatchFile, 'Restart_' + DriverDeviceName.Text + '.bat');
      Rewrite(BatchFile);
      write(BatchFile, '@echo off' + #13
        + 'pnputil /restart-device "' + DriverDevicePath.Text + '"' + #13
        + 'exit');
      CloseFile(BatchFile);
      ShowMessage('BATCH-файл создан успешно!');
    end;
  end;
end;

{$EndRegion}

end.
