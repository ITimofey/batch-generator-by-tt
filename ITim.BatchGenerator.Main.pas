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

{$Region 'BatchFileMakeButtonClick: Процедура создания .bat-файла'}

procedure TBatchGenerator.BatchFileMakeButtonClick(Sender: TObject);
begin

  // Алгоритм к реализации:
  // 1) создать .txt-файл
  // 2) открыть .txt-файл
  // 3) записать туда содержимое в зависимости от заданной конфигурации
  // 4) сохранить тектовый файл
  // 5) переименовать текстовый файл в расширение .bat

  // Пример содержимого файла:
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
