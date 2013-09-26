//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Array_Sort_and_Search.h"

#include <stdlib.h>


#include "Main.h"


//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TArray *Array;
//---------------------------------------------------------------------------
__fastcall TArray::TArray(TComponent* Owner)
        : TForm(Owner)
{
        Array1 = NULL;
}
//---------------------------------------------------------------------------

void __fastcall TArray::ButtonExit_ArrayClick(TObject *Sender)
{
        /*if (fSort->Data) {
                delete[]fSort->Data;
                fSort->Data = NULL;
                }*/
        //if (Array1) delete[] Array1;
        Close();

}
//---------------------------------------------------------------------------


void __fastcall TArray::ComboBox_ArrayChange(TObject *Sender)
{
        ButtonOk2->Enabled = true;

}
//---------------------------------------------------------------------------

//int C[] = {1,2,3};
void __fastcall TArray::ButtonOk1Click(TObject *Sender)
{
        switch (RadioGroupSort->ItemIndex)
        {
                case 0: WinExec ("E",1); break;
                case 1: WinExec ("D",1); break;
                case 2: WinExec ("F",1); break;
                case 3: WinExec ("A",1); break;
                case 4: WinExec ("B",1); break;
                case 5: WinExec ("C",1); break;
                case 6: WinExec ("R",1); break;
                case 7: WinExec ("H",1);
        }






}
//---------------------------------------------------------------------------




void __fastcall TArray::RadioGroupSortClick(TObject *Sender)
{
        ButtonOk1->Enabled = true;
}
//---------------------------------------------------------------------------





void __fastcall TArray::Button1Click(TObject *Sender)
{
switch (RadioGroup1->ItemIndex)
        {
                case 0: WinExec ("LinSearch",1); break;
                case 1: WinExec ("BeenSearch",1);
        }
        
}
//---------------------------------------------------------------------------

void __fastcall TArray::RadioGroup1Click(TObject *Sender)
{
        Button1->Enabled = true;        
}
//---------------------------------------------------------------------------

