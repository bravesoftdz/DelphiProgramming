unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Memo2: TMemo;
    edtName: TEdit;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  UserName: string;
  S: string;
begin
  UserName := 'ȫ�浿';
  S := '�ȳ��ϼ���';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  UserName: string;
  S: string;
  A, B: string;
begin
  UserName := 'ȫ�浿';

  S := '�ȳ�' + '�ϼ���.';
  S := S + UserName + '��.';
  Memo1.Lines.Add(S);

  S := 'ȫ�浿���� ���̴� ' + IntToStr(23) + '���Դϴ�.';
  Memo1.Lines.Add(S);

  A := 'a';
  B := 'b';

  A := A + B; // a + b = ab
  B := A + B; // ab + b = abb
  Memo1.Lines.Add('A: ' + A + ', B: ' + B);

  A := 'a';
  B := 'b';

  A := A + A + B; // a + a + b = aab
  Memo1.Lines.Add('A: ' + A + ', B: ' + B);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := 1 + 1;      // 2
  Str := '1' + '1';   // 11

  Memo1.Lines.Add(IntToStr(Num));
  Memo1.Lines.Add(Str);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Str: string;
  Num: Integer;
begin
  Num := Length('�ȳ��ϼ���.');
  Memo1.Lines.Add('���ڿ��� ����: ' + IntToStr(Num));

  Num := Pos('��', '�ȳ��ϼ���.');
  Memo1.Lines.Add('''��''�� ��ġ: ' + IntToStr(Num));

  Str := Copy('�ȳ��ϼ���', 3, 2);
  Memo1.Lines.Add('3���� 2�� ����: ' + Str);

  Str := StringReplace('�ȳ��ϼ���.', '�ϼ���', '��������', [rfReplaceAll]);
  Memo1.Lines.Add('���ڿ� ġȯ: ' + Str);

  Str := Trim('    �ȳ�    �ϼ���.   ');
  Memo1.Lines.Add('�յ� ���� ����: ' + Str);

  // Complete code : Ctrl + Space
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  S, S2: string;
  Name: string;
begin
  S :=  '���� �̸��� ȫ�浿�Դϴ�.';

// Name := Copy(S, 0, 0);
  Name := Copy(S, 8, 3);  // ���ڿ��� 1��°���� ����

  S2 := '�̸�: ' + Name;
  Memo1.Lines.Add(S2);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Msg, Msg2: string;
  Name: string;
begin
  Msg := Memo2.Lines.Text;
  Name := edtName.Text;

  // �޽����� [Name] �׸��� �Է��� �̸����� ġȯ�ϼ���.
//  Msg2 := StringReplace('', '', '', [rfReplaceAll]);
  Msg2 := StringReplace(Msg, '[Name]', Name, [rfReplaceAll]);

  ShowMessage(Msg2);
end;

end.
