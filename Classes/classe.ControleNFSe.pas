unit classe.ControleNFSe;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, ComCtrls, classe.Controle, DateUtils;

type
  TControleNFSe = Class
    private
    FDataEmissao: TDateTime;
    FIDCliente: Integer;
    FNumeroNota: Integer;
    FValorPis: Real;
    FValorCofins: Real;
    FValorISS: Real;
    FValorCSSL: Real;
    FValorTotal: Real;
    FValorIRRF: Real;
    FNomeCliente: String;
    FControle : TControle;
    FCodigoEmpresa: String;
    FSerie: String;

    public
      property NumeroNota : Integer read FNumeroNota write FNumeroNota;
      property DataEmissao : TDateTime read FDataEmissao write FDataEmissao;
      property ValorTotal : Real read FValorTotal write FValorTotal;
      property ValorISS : Real read FValorISS write FValorISS;
      property ValorIRRF : Real read FValorIRRF write FValorIRRF;
      property ValorCofins : Real read FValorCofins write FValorCofins;
      property ValorPis : Real read FValorPis write FValorPis;
      property ValorCSSL : Real read FValorCSSL write FValorCSSL;
      property IDCliente : Integer read FIDCliente write FIDCliente;
      property NomeCliente : String read FNomeCliente write FNomeCliente;
      property CodigoEmpresa : String read FCodigoEmpresa write FCodigoEmpresa;
      property Serie : String read FSerie write FSerie;
      constructor create(pConexaoControle:TControle);
      destructor destroy; override;
      function PesquisaNFSe(pDataInicial, pDataFinal : TDateTime) : TControleNFSe;

  end;

implementation

{ TControleNFSe }

constructor TControleNFSe.create(pConexaoControle: TControle);
begin
  FControle := pConexaoControle;
end;

destructor TControleNFSe.destroy;
begin
  inherited;
end;

function TControleNFSe.PesquisaNFSe(pDataInicial, pDataFinal: TDateTime): TControleNFSe;
begin
  FControle.sqlGeral.Close;
  FControle.sqlGeral.SQL.Clear;
  FControle.sqlGeral.SQL.ADD('select NFE.NUMERO, ');
  FControle.sqlGeral.SQL.ADD('NFE.COD_CADCLI, ');
  FControle.sqlGeral.SQL.ADD('NFE.DATA_EMISSAO, ');
  FControle.sqlGeral.SQL.ADD('NFE.CEMP, ');
  FControle.sqlGeral.SQL.ADD('NFE.SERIE, ');
  FControle.sqlGeral.SQL.ADD('NFE.VALOR_TOTAL, ');
  FControle.sqlGeral.SQL.ADD('NFE.ISSQN_VALOR, ');
  FControle.sqlGeral.SQL.ADD('NFE.IRRF_VALOR, ');
  FControle.sqlGeral.SQL.ADD('NFE.PIS_VALOR, ');
  FControle.sqlGeral.SQL.ADD('NFE.COFINS_VALOR, ');
  FControle.sqlGeral.SQL.ADD('NFE.CSLL_VALOR ');
  FControle.sqlGeral.SQL.ADD('from FAT_NF_SERVICO NFE ');
  FControle.sqlGeral.SQL.ADD('inner join CAD_COLABORADOR C on C.COD_CADCOLABORADOR = NFE.COD_CADCLI ');
  FControle.sqlGeral.SQL.ADD('inner join CAD_PESSOA P on C.CODIGO_PESSOA = P.CODIGO_PESSOA  ');
  FControle.sqlGeral.SQL.ADD('WHERE NFE.DATA_EMISSAO between :DataInicial and :DataFinal');
  FControle.sqlGeral.params[00].AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', pDataInicial));
  FControle.sqlGeral.params[01].Asdate := StrToDate(FormatDateTime('dd/mm/yyyy', pDataFinal));

  FControle.sqlGeral.Open;

//  if not FControle.sqlGeral.IsEmpty then
//  begin
//    Self.NomeProjeto  := FControle.sqlGeral.FieldByName('Nome_Projeto').AsString;
//    Self.Id_Pessoa    := FControle.sqlGeral.FieldByName('Id_Pessoa').Asinteger;
//    Self.Preco_Kg     := FControle.sqlGeral.FieldByName('Peso').AsFloat;
//    Self.Vlr_Dobra    := FControle.sqlGeral.FieldByName('Vlr_Dobra').AsFloat;
//    Self.Vlr_Unitario := FControle.sqlGeral.FieldByName('Vlr_Unitario').AsFloat;
//    Self.Comprimento  := FControle.sqlGeral.FieldByName('Comprimento').AsFloat;
//    Self.Largura      := FControle.sqlGeral.FieldByName('Largura').AsFloat;
//    Self.Espessura    := FControle.sqlGeral.FieldByName('Espessura').AsFloat;
//    Self.Id_Produto   := FControle.sqlGeral.FieldByName('Id_Produto').AsInteger;
//  end
//  else
//  begin
//    Self.NomeProjeto  := '';
//    Self.Id_Pessoa    := 0;
//    Self.Preco_Kg     := 0;
//    Self.Vlr_Dobra    := 0;
//    Self.Vlr_Unitario := 0;
//    Self.Comprimento  := 0;
//    Self.Largura      := 0;
//    Self.Espessura    := 0;
//    Self.Id_Produto   := 0;
//  end;
end;

end.
