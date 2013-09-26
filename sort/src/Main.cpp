//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "Array_Sort_and_Search.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ButtonExitClick(TObject *Sender)
{
        
        Close();
}
//---------------------------------------------------------------------------
int __fastcall TMainForm::FillGrid(TStringGrid *Grid, int *Array)
{
    int i,j;
    int Cols;

    Cols = Grid->ColCount - 1;
    for(i=1; i<Grid->RowCount; i++ ){
        for(j=1; j<Grid->ColCount; j++ ){
            try{
                Grid->Cells[j][i] = FloatToStr(Array[(i - 1) * Cols + (j - 1)]);
            }
            catch(EConvertError&){
                return 2;
            }
        }
    }
    return 0;
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::ButtonArrayClick(TObject *Sender)
{
        Array->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button1Click(TObject *Sender)
{
        WinExec("Tree",1);        
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button2Click(TObject *Sender)
{
        WinExec("L",1);        
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button3Click(TObject *Sender)
{
         WinExec("Graw",1);        
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button4Click(TObject *Sender)
{
         WinExec("Hash",1);        
}
//---------------------------------------------------------------------------

