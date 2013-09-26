//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <algorithm.h>
#include "MainForm.h"
#include "Gen.h"
#include "Sort.h"
#include "stdio.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMain *frmMain;
int *Data1;
int Cols1;
int N = 0;
int Data2 [10100];
unsigned long int Result = 0;

//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
        : TForm(Owner)
{
        sgArray->Cells[0][0] = IntToStr(1);

        sgRet->Cells[0][0] = IntToStr(1);

        
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
                                        MessageBox(Handle, "������� �������� �����", "�������", MB_OK);
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
                MessageBox(Handle, "������� �������� �����", "�������", MB_OK);
        }
        if(Arr) delete[]Arr;
        return Res;
}
//----------------------------------------------------------------------------
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
                        MessageBox(Handle, "������� ���������� �����", "�������", MB_OK);
                        return;
                }
                Cols = Grid->ColCount;
                Arr = new int[Cols];
                for(j = 0; j < Grid->ColCount; j++){
                        try{
                                if(Grid->Cells[j][1] == ""){
                                        MessageBox(Handle, "����� ���������� ����������", "�������", MB_OK);
                                        return;
                                }
                                else Arr[j] = Grid->Cells[j][1].ToInt();
                        }
                        catch(EConvertError&){
                                MessageBox(Handle, "� ����� �������� �������� ������", "�������", MB_OK);
                        }
                }

                fwrite(&Cols, sizeof(Cols), 1, File);
                fwrite((void*)Arr, sizeof(int), Cols, File);
                if(Arr){ delete[]Arr; Arr = NULL;}
                fclose(File);
                File = NULL;
        }
        if(Arr){ delete[]Arr; Arr = NULL;}
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
        frmMain->sgData->RowCount = Row + 1;
        frmMain->sgData->ColCount = n + 1;

        frmMain->sgData->Cells[0][Row] = IntToStr(Col1 + 1) + "<->" + IntToStr(Col2 + 1);
        for(int j = 0; j < n; j++){
                frmMain->sgData->Cells[j + 1][Row] = Data[j];
                frmMain->sgData->Cells[j + 1][0] = IntToStr(j + 1);
        }
}
//----------------------------------------------------------------------------
void __fastcall TfrmMain::DataShow(int *Data, int n)
{
        frmMain->sgData->RowCount = n + 1;
        frmMain->sgData->ColCount = n + 1;

        for(int i = 0; i < n; i++){
                for(int j = 0; j < i + 1; j++){
                        frmMain->sgData->Cells[j + 1][i + 1] = Data[j];
                        frmMain->sgData->Cells[j + 1][0] = IntToStr(j + 1);
                }
        }
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

void __fastcall TfrmMain::sgRetKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{
        int Col = sgRet->Selection.Left + 1;

	if(Col == sgRet->ColCount && Key == VK_RIGHT){
        	sgRet->ColCount ++;
	        sgRet->Cells[sgRet->ColCount - 1][0] = IntToStr(sgRet->ColCount);
		sgRet->Refresh();
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

void __fastcall TfrmMain::butClear2Click(TObject *Sender)
{
        Clear(sgRet);
        sgRet->Cells[0][0] = "1";
        butSave2->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::butSortClick(TObject *Sender)
{


        Result = 0;
        int i, j;
        N = 0;

        //���������� ������� �������
        Cols1 = frmMain->sgArray->ColCount;
        Data1 = new int [Cols1];
        for(i = 0; i < Cols1; i++){
                try{
                        if(frmMain->sgArray->Cells[i][1] == ""){
                                MessageBox(Handle, "����� ���������� ����������", "�������", MB_OK);
                                return;
                        }
                        else Data1[i] = frmMain->sgArray->Cells[i][1].ToInt();
                }
                catch(EConvertError&){
                        MessageBox(Handle, "� ����� �������� �������� ������", "�������", MB_OK);
                        return;
                }
        }


        if(Cols1 <= 15){
        sort_selection M4 (Cols1);
                        M4.selection_sort(Data1);
                        M4.~sort_selection( );
        }
        if (Cols1 > 15){
        sort_selection1 M4 (Cols1);
                        M4.selection_sort1(Data1);
                        M4.~sort_selection1( );



        }






}
//----------------------------------------------------------
void sort_selection::load_list(int input[ ])
{
    for (int i = 0; i < n; i++)
        X[i] = input[i];
}



void sort_selection::selection_sort( int input[ ])
{
    char *title;
    load_list(input);



    for ( int j = 0; j < (n-1); j++)
    {

            int lowest = j;
            for ( int k = j+1; k < n ; k++)
                       {
	       if (X[k] < X[lowest]){

 lowest = k;}



		       }
                frmMain->sgData->ColCount = n+1;
                if(j != lowest){
		       for (int i11 = 0; i11 < n; i11++){
                        frmMain->sgData->Cells[i11 + 1][frmMain->sgData->RowCount - 1] = X[i11];}}

                       int temp;
                       temp = X[j];
                       X[j] = X[lowest];
		       X[lowest] = temp;
		       if(j != lowest){
                        frmMain->sgData->Cells[0][frmMain->sgData->RowCount - 1] = IntToStr (j+1) + " -> " + IntToStr(lowest+1);
                        frmMain->sgData->RowCount++;
                        Result++;

                }

    }
 for( int i1 = 0; i1<n; i1++){frmMain->sgData->Cells[i1+1][0] = (i1+1);};
     frmMain->sgRet->ColCount = n;
               for (int i = 0; i < n; i++) {
                frmMain->sgRet->Cells[i][1] = X[i];
                frmMain->sgRet->Cells[i][0] = (i+1);
                }
                frmMain->eResult->Text = IntToStr (Result);
                frmMain->butSave2->Enabled = true;




}
//---------------------------------------------------------------------------
void sort_selection1::load_list(int input[ ])
{
    for (int i = 0; i < n; i++)
        X[i] = input[i];
}



void sort_selection1::selection_sort1( int input[ ])
{
    char *title;
    load_list(input);



    for ( int j = 0; j < (n-1); j++)
    {

            int lowest = j;
            for ( int k = j+1; k < n ; k++)
                       {
	       if (X[k] < X[lowest]){

 lowest = k;}



		       }



                       int temp;
                       temp = X[j];
                       X[j] = X[lowest];
		       X[lowest] = temp;
		       if(j != lowest){

                        Result++;

                }

    }
 
    frmMain->sgRet->ColCount = n;
               for (int i = 0; i < n; i++) {
                frmMain->sgRet->Cells[i][1] = X[i];
                frmMain->sgRet->Cells[i][0] = (i+1);
                }
                frmMain->eResult->Text = IntToStr (Result);
                frmMain->butSave2->Enabled = true;




}
//---------------------------------------------------------
void __fastcall TfrmMain::butSave2Click(TObject *Sender)
{
        Save(sgRet);
}
//---------------------------------------------------------------------------

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
        Clear(sgRet);
        sgRet->Cells[0][0] = "1";
        butSave2->Enabled = false;
        Result = 0;
        frmMain->eResult->Text = IntToStr (Result);
        frmMain->butSave2->Enabled = false;
        Clear(sgData);
        sgData->Cells[1][0] = "1";
        Clear(sgData);
        if (Data1){
                delete Data1;
                Data1 = NULL;} 

               
}
//---------------------------------------------------------------------------

