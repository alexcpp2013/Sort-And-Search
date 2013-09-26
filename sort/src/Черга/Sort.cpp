//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Sort.h"
#include "Gen.h"
#include "MainForm.h"
#include <algorithm.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSort *frmSort;
//---------------------------------------------------------------------------
__fastcall TfrmSort::TfrmSort(TComponent* Owner)
        : TForm(Owner)
{
        sgArray->Cells[0][0] = IntToStr(1);
}
//---------------------------------------------------------------------------
void __fastcall TfrmSort::butSaveClick(TObject *Sender)
{
        frmMain->Save(sgArray);
}
//---------------------------------------------------------------------------

void __fastcall TfrmSort::butClearClick(TObject *Sender)
{
        frmMain->Clear(sgArray);
        sgArray->Cells[0][0] = "1";
        butSave->Enabled = false;
        sgArray->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSort::butHandleClick(TObject *Sender)
{
        sgArray->Enabled = true;
        butSave->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSort::butOpenClick(TObject *Sender)
{
        if(frmMain->Open(sgArray)){
                butSave->Enabled = true;
                sgArray->Enabled = true;
        }
        else{
                butSave->Enabled = false;
                sgArray->Enabled = false;
                sgArray->ColCount = 1;
        }

        for(int i = 0; i < sgArray->ColCount; i++){
                sgArray->Cells[i][0] = IntToStr(i + 1);
        }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSort::butGenClick(TObject *Sender)
{
        frmMain->Mas = sgArray;
        frmGen->eCount->Text = "1";
        frmGen->eBottom->Text = "0";
        frmGen->eTop->Text = "10";
        frmGen->Left = Left + (Width  - frmGen->Width)  / 2;
	frmGen->Top  = Top  + (Height - frmGen->Height) / 2;
	frmGen->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TfrmSort::butCancelClick(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------


void __fastcall TfrmSort::sgArrayKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
        int Col = sgArray->Selection.Left + 1;
	if(Col == sgArray->ColCount && Key == VK_RIGHT){
        	sgArray->ColCount ++;
	        sgArray->Cells[sgArray->ColCount - 1][0] = IntToStr(sgArray->ColCount);
		sgArray->Refresh();
	}
}
//---------------------------------------------------------------------------




void __fastcall TfrmSort::Button1Click(TObject *Sender)
{
        int *Data1, *Data2;
        int i, j, Cols1, Cols2;

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

        //Считывание второго массива
        Cols2 = sgArray->ColCount;
        Data2 = new int [Cols2];
        for(i = 0; i < Cols2; i++){
                try{
                        if(sgArray->Cells[i][1] == ""){
                                MessageBox(Handle, "Масив некоректно заповнений", "Помилка", MB_OK);
                                return;
                        }
                        else Data2[i] = sgArray->Cells[i][1].ToInt();
                }
                catch(EConvertError&){
                        MessageBox(Handle, "У масиві містяться нечислові вирази", "Помилка", MB_OK);
                        return;
                }
        }
}
//---------------------------------------------------------------------------

