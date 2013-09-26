//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Gen.h"
#include "Sort.h"
#include "MainForm.h"
#include "stdlib.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmGen *frmGen;
//---------------------------------------------------------------------------
__fastcall TfrmGen::TfrmGen(TComponent* Owner)
        : TForm(Owner)
{


}
//---------------------------------------------------------------------------
void __fastcall TfrmGen::butOkClick(TObject *Sender)
{
        int n, Top, Bot;
        int *Arr;

        try{
                n = eCount->Text.ToInt();
                Top = eTop->Text.ToInt();
                Bot = eBottom->Text.ToInt();
        }
        catch (EConvertError&){
                MessageBox(NULL, "Ви ввели нечислове значення!" , "Помилка", MB_ICONERROR);
        }

        Arr = new int [n];
        randomize();
        for(int i = 0; i < n; i++)
                Arr[i] = random(Top - Bot) + Bot;

        frmMain->Mas->ColCount = n;
        for(int i = 0; i < n; i++){
                frmMain->Mas->Cells[i][1] = IntToStr(Arr[i]);
                frmMain->Mas->Cells[i][0] = IntToStr(i + 1);
        }

        if(Arr) delete[]Arr;
        frmMain->Mas->Enabled = true;
        if(frmMain->Mas == frmMain->sgArray){
                frmMain->butSave1->Enabled = true;
                frmMain->butSort->Enabled = true;
        }
        else{
                frmSort->butSave->Enabled = true;
        }
        Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmGen::butCancelClick(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------



