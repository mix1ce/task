unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TMain = class(TForm)
    TBHeight: TTrackBar;
    TBWeight: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    CurrWeight: TLabel;
    CurrHeight: TLabel;
    Calculate: TButton;
    Output: TLabel;
    procedure TBHeightChange(Sender: TObject);
    procedure TBWeightChange(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.fmx}

procedure TMain.CalculateClick(Sender: TObject);
begin
  if TBWeight.Value=(TBHeight.Value-100) then Output.Text:='Ваш вес оптимален !'
  else if TBWeight.Value<(TBHeight.Value-100) then
    begin
      Output.Text:='Вам надо поправиться на ' + FloatToStrF(((TBHeight.Value-100)
      -TBWeight.Value), ffGeneral, 3, 3)+ '  кг.';
    end
  else
    begin
      Output.Text:='Вам надо похудеть на ' + FloatToStrF((TBWeight.Value-
      (TBHeight.Value-100)), ffGeneral, 3, 3)+ '  кг.';
    end;
end;

procedure TMain.TBHeightChange(Sender: TObject);
begin
  CurrHeight.Text:=FloatToStrF((TBHeight.Value), ffGeneral, 3, 3);
end;

procedure TMain.TBWeightChange(Sender: TObject);
begin
  CurrWeight.Text:=FloatToStrF((TBWeight.Value), ffGeneral, 3, 3);
end;

end.
