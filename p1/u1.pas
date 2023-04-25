unit u1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    txtFm: TEdit;
    txtIm: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    gr21: TRadioButton;
    gr22: TRadioButton;
    gr23: TRadioButton;
    gr24: TRadioButton;
    gr25: TRadioButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  gruppa: string;
  language: string;
begin
  if gr21.Checked then
    gruppa := '21ИС-21'
  else if gr22.Checked then
    gruppa := '22ИС-21'
  else
    gruppa := 'Ошибка';

  ShowMessage('Фамилия: ' + txtFm.Text + #13#10 + 'Имя: ' + txtIm.Text + #13#10
    + 'Группа: ' + gruppa);
end;

end.

