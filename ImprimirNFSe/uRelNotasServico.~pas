unit uRelNotasServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, DB,
  Buttons, ExtCtrls, DBXpress, SqlExpr, uDMConsNFSe, uDMConection, DBCtrls,
  RxLookup, SMDBGrid, Menus;

type
  TuRelImprimirNFSe = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsPadrao: TDataSource;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateInicial: TDateEdit;
    DateFinal: TDateEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    comboEmpresa: TRxDBLookupCombo;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    SelecionarTodos1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SelecionarTodos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    fDMConsNFSe : TDMConsNFSe;
    { Public declarations }
  end;

var
  uRelImprimirNFSe: TuRelImprimirNFSe;

implementation


{$R *.dfm}

procedure TuRelImprimirNFSe.FormShow(Sender: TObject);
begin
  DateInicial.Date := 43466;
  DateFinal.Date := 43496;  
  fDMConsNFSe.cdsEmpresa.Close;
  fDMConsNFSe.cdsEmpresa.Open;
end;

procedure TuRelImprimirNFSe.BitBtn2Click(Sender: TObject);
begin
  if DateInicial.Date < 10 then
  begin
    MessageDlg('Informe data inicial',mtInformation,[mbOK],0);
    DateInicial.SetFocus;
    Exit;
  end;
  if DateFinal.Date < 10 then
  begin
    MessageDlg('Informe data final',mtInformation,[mbOK],0);
    DateFinal.SetFocus;
    Exit;
  end;
  if comboEmpresa.Value = '' then
  begin
    MessageDlg('Informe a Empresa',mtInformation,[mbOK],0);
    comboEmpresa.SetFocus;
    Exit;
  end;

  fDMConsNFSe.cdsConsNFSe.Close;
  fDMConsNFSe.sdsConsNFSe.ParamByName('Empresa').AsString := comboEmpresa.Value;
  fDMConsNFSe.sdsConsNFSe.ParamByName('DataInicial').AsDate := DateInicial.Date;
  fDMConsNFSe.sdsConsNFSe.ParamByName('DataFinal').AsDate := DateFinal.Date;
  fDMConsNFSe.cdsConsNFSe.Open;
end;

procedure TuRelImprimirNFSe.FormCreate(Sender: TObject);
begin
  fDMConsNFSe := TDMConsNFSe.Create(Self);
end;

procedure TuRelImprimirNFSe.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMConsNFSe);
end;

procedure TuRelImprimirNFSe.BitBtn1Click(Sender: TObject);
begin
  if fDMConsNFSe.cdsConsNFSe.IsEmpty then
  begin
    MessageDlg('Nenhuma nota encontrada, refaça a consulta!', mtError,[mbOK],0);
    Exit;
  end;
  fDMConsNFSe.cdsConsNFSe.DisableControls;
  try
    fDMConsNFSe.cdsConsNFSe.First;
    while not fDMConsNFSe.cdsConsNFSe.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        fDMConsNFSe.imprimirNFSe;
      end;
      fDMConsNFSe.cdsConsNFSe.Next;
    end;
  finally
    fDMConsNFSe.cdsConsNFSe.EnableControls
  end;
end;

procedure TuRelImprimirNFSe.SelecionarTodos1Click(Sender: TObject);
begin
  fDMConsNFSe.cdsConsNFSe.DisableControls;
  try
    fDMConsNFSe.cdsConsNFSe.First;
    while not fDMConsNFSe.cdsConsNFSe.Eof do
    begin
      SMDBGrid1.SelectedRows.CurrentRowSelected := not SMDBGrid1.SelectedRows.CurrentRowSelected;
      fDMConsNFSe.cdsConsNFSe.Next;
    end;
    fDMConsNFSe.cdsConsNFSe.First
  finally
    fDMConsNFSe.cdsConsNFSe.EnableControls;
  end;
end;

end.

