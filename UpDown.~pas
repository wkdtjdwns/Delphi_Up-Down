unit UpDown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TMain = class(TForm)
    Panel1: TPanel;
    HelpText: TMemo;
    RangeText: TStaticText;
    LifeText: TStaticText;
    TextDisplay: TEdit;
    DecisionBtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TextDisplayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDisplayClick(Sender: TObject);
    procedure DecisionBtnClick(Sender: TObject);
  private
    { Private declarations }
    ranNum, maxNum, life: Integer;
    procedure Reset();
    procedure CheckAnswer(answer: string);
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses Math;

{$R *.dfm}

procedure TMain.Reset();
const
  rangeArr: array[0..4] of Integer = (50, 100, 150, 250, 500);
var
  idx: Integer;
begin
  Randomize; // 랜덤 호출

  // 랜덤 숫자 결정
  idx := Random(5);
  maxNum := rangeArr[idx];
  ranNum := Random(maxNum) + 1;

  RangeText.Caption := 'Range: 1 ~ ' + IntToStr(maxNum);

  // 체력 설정
  life := 10;
  LifeText.Caption := 'Life: ' + IntToStr(life);

  HelpText.Lines.Clear;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  Reset();
end;

procedure TMain.CheckAnswer(answer: string);
begin
  try
    try
      if StrToInt(answer) > maxNum then
      begin
        ShowMessage('숫자가 너무 큽니다!' + sLineBreak + '숫자 범위를 다시 봐주세요!');
        Exit;
      end;

      if StrToInt(answer) < ranNum then
        HelpText.Lines.Add(answer + ' → Up!')
      else if StrToInt(answer) > ranNum then
        HelpText.Lines.Add(answer + ' → Down!')
      else
      begin
        HelpText.Lines.Add(answer + ' → Correct!');
        ShowMessage('Click "Ok" to Restart!');

        Reset();
      end;

      Dec(life);
      LifeText.Caption := 'Life: ' + IntToStr(life);

      if life <= 0 then
      begin
        ShowMessage('Game Over!' + sLineBreak + 'Click "Ok" to Restart!');
        Reset();
      end;

    except
      on E: EConvertError do // 형변환 실패
        ShowMessage('숫자를 입력해 주세요!');
    end;
  finally
    TextDisplay.Text := '';
  end;
end;

procedure TMain.TextDisplayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    CheckAnswer(TextDisplay.Text);
end;

procedure TMain.TextDisplayClick(Sender: TObject);
begin
  TextDisplay.Text := '';
end;

procedure TMain.DecisionBtnClick(Sender: TObject);
begin
  CheckAnswer(TextDisplay.Text);
end;

end.
