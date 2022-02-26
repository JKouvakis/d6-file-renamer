unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShellCtrls, FileCtrl, StrUtils;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ShellTreeView1: TShellTreeView;
    Button1: TButton;
    FileListBox1: TFileListBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Label13: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit14: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Edit16: TEdit;
    Label18: TLabel;
    Edit17: TEdit;
    Label19: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Label24: TLabel;
    Edit23: TEdit;
    Label25: TLabel;
    Edit24: TEdit;
    CheckBox1: TCheckBox;
    Edit25: TEdit;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
  public
  end;

var
  Form1: TForm1;
  function changechar(var s:string):string; forward;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var before, after, char, char2:string;
     i,j:integer;
begin
  For i:=0 to FileListBox1.Count -1 do
    begin
      before := FileListBox1.Items.Strings[i];
      after := '';
      For j:=1 to Length(before) do
        begin
          char:=Midstr(before,j,1);
          char2:=changechar(char);
          after:=after + char2;
        end;
      if checkbox2.Checked=True Then
        after:=uppercase(after);
      RenameFile(before,after);
    end;
end;

procedure TForm1.ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  FileListBox1.Directory := ShellTreeView1.Path;
end;

function changechar(var s:string):string;
begin
 If (s='�') or (s='�') then
   Result:=Form1.Edit1.Text
 else if s='�' then
   Result:=Form1.Edit2.Text
 else if s='�' then
   Result:=Form1.Edit3.Text
 else if s='�' then
   Result:=Form1.Edit4.Text
 else if (s='�') or (s='�') then
   Result:=Form1.Edit5.Text
 else if s='�' then
   Result:=Form1.Edit6.Text
 else if (s='�') or (s='�') then
   Result:=Form1.Edit7.Text
 else if s='�' then
   Result:=Form1.Edit8.Text
 else if (s='�') or (s='�') or (s='�') then
   Result:=Form1.Edit9.Text
 else if s='�' then
   Result:=Form1.Edit10.Text
 else if s='�' then
   Result:=Form1.Edit11.Text
 else if s='�' then
   Result:=Form1.Edit12.Text
 else if s='�' then
   Result:=Form1.Edit13.Text
 else if s='�' then
   Result:=Form1.Edit14.Text
 else if (s='�') or (s='�') then
   Result:=Form1.Edit15.Text
 else if s='�' then
   Result:=Form1.Edit16.Text
 else if s='�' then
   Result:=Form1.Edit17.Text
 else if s='�' then
   Result:=Form1.Edit18.Text
 else if s='�' then
   Result:=Form1.Edit19.Text
 else if (s='�') or (s='�') or (s='�') then
   Result:=Form1.Edit20.Text
 else if s='�' then
   Result:=Form1.Edit21.Text
 else if s='�' then
   Result:=Form1.Edit22.Text
 else if s='�' then
   Result:=Form1.Edit23.Text
 else if (s='�') or (s='�') then
   Result:=Form1.Edit24.Text
 else If (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit1.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit2.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit3.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit4.Text)
 else if (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit5.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit6.Text)
 else if (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit7.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit8.Text)
 else if (s='�') or (s='�') or (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit9.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit10.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit11.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit12.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit13.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit14.Text)
 else if (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit15.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit16.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit17.Text)
 else if (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit18.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit19.Text)
 else if (s='�') or (s='�') or (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit20.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit21.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit22.Text)
 else if s='�' then
   Result:=lowercase(Form1.Edit23.Text)
 else if (s='�') or (s='�') then
   Result:=lowercase(Form1.Edit24.Text)
 else if (s=' ') and (Form1.CheckBox1.Checked=True) then
   Result:=Form1.Edit25.Text
 else
   Result:=s;
end;

end.
