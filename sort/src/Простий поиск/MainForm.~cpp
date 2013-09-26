//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "Gen.h"
#include "Sort.h"
#include "stdio.h"
#include "Math.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMain *frmMain;
int *Data1;
int Cols1;
unsigned long int Result = 0;
int Find = 0;
int DS = 0;

//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
        : TForm(Owner)
{
        sgArray->Cells[0][0] = IntToStr(1);

       

        
}
//---------------------------------------------------------------------------
int __fastcall TfrmMain::Open(TStringGrid *Grid)
{
        FILE *File = NULL;
        int *Arr;
        int i, j, Cols, Rows, Res;
        AnsiString FN = "";

        try{
                if(dOpen->Execute()){
                        FN = dOpen->FileName;
                        if(FN != ""){
                                File = fopen(FN.c_str(), "rb");
                                if(!File){
                                        MessageBox(Handle, "Помилка відкриття файлу", "Помилка", MB_OK);
                                        return 0;
                                }

                                for(j = 0; j < Grid->ColCount; j++)
                                        Grid->Cells[j][1] = "";

                                fread(&Cols, sizeof(Cols), 1, File);
                                Grid->ColCount = Cols;
                                Arr = new int [Cols];
                                fread((void*)Arr, sizeof(int), Cols, File);

                                for(j = 0; j < Grid->ColCount; j++){
                                        try{
                                                Grid->Cells[j][1] = IntToStr(Arr[j]);
                                        }
                                        catch(EConvertError&){
                                                Grid->Cells[j][1] = "0";
                                        }
                                }


                                if(Arr) delete[]Arr;
                                fclose(File);
                                File = NULL;
                                Res = 1;
                        }
                }
        }
        catch (Exception&)
        {
                Res = 0;
                MessageBox(Handle, "Помилка відкриття файлу", "Помилка", MB_OK);
        }
        if(Arr) delete[]Arr;
        return Res;
}
//----------------------------------------------------------------------------
int __fastcall TfrmMain::Simple(int Value)
{
        int Cols, i;
        //int *X;

        Cols = frmMain->sgArray->ColCount;
        //for (int i = 0; i < Cols; i++) X[i] = Data1[i];
        for(i = 0; i < Cols; i++){
                try{
                        if(frmMain->sgArray->Cells[i][1] == ""){
                                MessageBox(Handle, "Масив некоректно заповнений", "Помилка", MB_ICONERROR);
                                return 0;
                        }
                        else{


     if(Value == frmMain->sgArray->Cells[i][1].ToInt())

     return i + 1;
     }
                }
                catch(EConvertError&){
                        MessageBox(Handle, "У масиві містяться нечислові вирази", "Помилка", MB_ICONERROR);
                        return 0;
                }
        }
        return -1;
}
//------------------------------------------------------
void __fastcall TfrmMain::Save(TStringGrid *Grid)
{
        FILE *File = NULL;
        int *Arr;
        int i, j, Cols, Rows;
        AnsiString FN;

        if(dSave->Execute()){
                FN = dSave->FileName;
                if(FN.SubString(FN.Length() - 3, 4) != ".sda"){
                        FN += ".sda";
                }
                File = fopen(FN.c_str(), "wb");
                if(!File){
                        MessageBox(Handle, "Помилка збереження файлу", "Помилка", MB_OK);
                        return;
                }
                Cols = Grid->ColCount;
                Arr = new int[Cols];
                for(j = 0; j < Grid->ColCount; j++){
                        try{
                                if(Grid->Cells[j][1] == ""){
                                        MessageBox(Handle, "Масив некоректно заповнений", "Помилка", MB_OK);
                                        return;
                                }
                                else Arr[j] = Grid->Cells[j][1].ToInt();
                        }
                        catch(EConvertError&){
                                MessageBox(Handle, "У масиві містяться нечислові вирази", "Помилка", MB_OK);
                        }
                }

                fwrite(&Cols, sizeof(Cols), 1, File);
                fwrite((void*)Arr, sizeof(int), Cols, File);
                if(Arr){ delete[]Arr;  Arr = NULL;}
                fclose(File);
                File = NULL;
        }
        if(Arr){ delete[]Arr;  Arr = NULL;}
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::Clear(TStringGrid *Grid)
{
        int i, j;
        for(i = 0; i < Grid->RowCount; i++)
                for(j = 0; j < Grid->ColCount; j++)
                        Grid->Cells[j][i] = "";
        Grid->ColCount = 2;
        Grid->FixedCols = 1;
        Grid->ColCount = 1;
        Grid->RowCount = 2;

}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::DataShow(int Row, int Col1, int Col2, int *Data, int n)
{
       



       
}
//----------------------------------------------------------------------------
void __fastcall TfrmMain::DataShow(int *Data, int n)
{


}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::butCloseClick(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::butHandleClick(TObject *Sender)
{
        sgArray->Enabled = true;
        butSave1->Enabled = true;
        butSort->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::sgArrayKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
        int Col = sgArray->Selection.Left + 1;
	if(Col == sgArray->ColCount && Key == VK_RIGHT){
        	sgArray->ColCount ++;
	        sgArray->Cells[sgArray->ColCount - 1][0] = IntToStr(sgArray->ColCount);
		sgArray->Refresh();
	}        
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::butGenClick(TObject *Sender)
{
        Mas = sgArray;
        frmGen->eCount->Text = "1";
        frmGen->eBottom->Text = "0";
        frmGen->eTop->Text = "10";
        frmGen->Left = Left + (Width  - frmGen->Width)  / 2;
	frmGen->Top  = Top  + (Height - frmGen->Height) / 2;
	frmGen->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::butOpenClick(TObject *Sender)
{
        if(Open(sgArray)){
                butSave1->Enabled = true;
                butSort->Enabled = true;
                sgArray->Enabled = true;
        }
        else{
                butSave1->Enabled = false;
                butSort->Enabled = false;
                sgArray->Enabled = false;
                sgArray->ColCount = 1;
        }

        for(int i = 0; i < sgArray->ColCount; i++){
                sgArray->Cells[i][0] = IntToStr(i + 1);
        }
}
//---------------------------------------------------------------------------



void __fastcall TfrmMain::butSave1Click(TObject *Sender)
{
        Save(sgArray);
}
//---------------------------------------------------------------------------


void __fastcall TfrmMain::butClear1Click(TObject *Sender)
{
        Clear(sgArray);
        sgArray->Cells[0][0] = "1";
        butSave1->Enabled = false;
        sgArray->Enabled = false;
        butSort->Enabled = false;
}
//---------------------------------------------------------------------------


void __fastcall TfrmMain::butSortClick(TObject *Sender)
{

        Result = 0;
        int i, j;

        //Считывание первого массива
        Cols1 = frmMain->sgArray->ColCount;
        Data1 = new int [Cols1];
        for(i = 0; i < Cols1; i++){
                try{
                        if(frmMain->sgArray->Cells[i][1] == ""){
                                MessageBox(Handle, "Масив некоректно заповнений", "Помилка", MB_OK);
                                return;
                        }
                        else Data1[i] = frmMain->sgArray->Cells[i][1].ToInt();
                }
                catch(EConvertError&){
                        MessageBox(Handle, "У масиві містяться нечислові вирази", "Помилка", MB_OK);
                        return;
                }
        }




        int Ans;

        try{

                Ans = Simple(Edit1->Text.ToInt());

        }
        catch(EConvertError&){
                MessageBox(Handle, "Значення елементу задано невірно", "Помилка", MB_ICONERROR);
        }

        if(Ans){
                if(Ans > 0){
                        frmMain->eResult->Text = (IntToStr(Ans));

                        }


                else{
                        MessageBox(Handle, "Шуканий елемент не знайдено", "Увага", MB_ICONINFORMATION);
                }
        }





        

 }
        
//---------------------------------------------------------

void __fastcall TfrmMain::FormPaint(TObject *Sender)
{
       butClose->Left = PageControl1->Left + PageControl1->Width - 100;
       butClose->Top = PageControl1->Top + PageControl1->Height - 40;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::Button1Click(TObject *Sender)
{
        if (Data1){
                delete Data1;
                Data1 = NULL;}
        Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::Button2Click(TObject *Sender)
{
        Clear(sgArray);
        sgArray->Cells[0][0] = "1";
        butSave1->Enabled = false;
        sgArray->Enabled = false;
        butSort->Enabled = false;
       
       

        Result = 0;
        Find = 0;
       // frmMain->eResult->Text = IntToStr (Result);
       // frmMain->Edit1->Text = IntToStr (Find);
       frmMain->eResult->Text = "";
       frmMain->Edit1->Text = "";

       
        
       
        if (Data1){
                delete Data1;
                Data1 = NULL;}

               
}
//---------------------------------------------------------------------------


