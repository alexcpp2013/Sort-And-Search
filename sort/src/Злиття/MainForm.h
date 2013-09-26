//---------------------------------------------------------------------------

#ifndef MainFormH
#define MainFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <Grids.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TfrmMain : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *tsArray;
        TOpenDialog *dOpen;
        TSaveDialog *dSave;
        TGroupBox *GroupBox2;
        TGroupBox *GroupBox1;
        TButton *butHandle;
        TButton *butGen;
        TButton *butOpen;
        TStringGrid *sgArray;
        TButton *butSave1;
        TButton *butClear1;
        TGroupBox *GroupBox5;
        TStringGrid *sgRet;
        TButton *butSave2;
        TButton *butClear2;
        TGroupBox *GroupBox6;
        TStringGrid *sgData;
        TLabel *lblRes;
        TGroupBox *GroupBox3;
        TGroupBox *GroupBox4;
        TButton *butHandle2;
        TButton *butGen2;
        TButton *butOpen2;
        TStringGrid *sgArray2;
        TButton *butSave;
        TButton *butClear;
        TButton *butSort;
        TEdit *eResult;
        TButton *Button2;
        TButton *Button1;
        void __fastcall butCloseClick(TObject *Sender);
        void __fastcall butHandleClick(TObject *Sender);
        void __fastcall sgArrayKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall butGenClick(TObject *Sender);
        void __fastcall butOpenClick(TObject *Sender);
        void __fastcall sgRetKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall butSave1Click(TObject *Sender);
        void __fastcall butClear1Click(TObject *Sender);
        void __fastcall butClear2Click(TObject *Sender);
        void __fastcall butSave2Click(TObject *Sender);
        void __fastcall FormPaint(TObject *Sender);
        void __fastcall butSaveClick(TObject *Sender);
        void __fastcall butClearClick(TObject *Sender);
        void __fastcall butHandle2Click(TObject *Sender);
        void __fastcall butOpen2Click(TObject *Sender);
        void __fastcall butGen2Click(TObject *Sender);
        void __fastcall butSortClick(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall sgArray2KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
private:	// User declarations
public:		// User declarations
        TStringGrid *Mas;
        int *Data1, *Data2;
        void Merge_Sort (int c[], int a[], int b[], int N,int M);
        void Merge_Sort1 (int c[], int a[], int b[], int N,int M);
        int Data3 [20200];
        void __fastcall DataShow(int Row, int Col1, int Col2, int *Data, int n);
        void __fastcall DataShow(int *Data, int n);
        void __fastcall Save(TStringGrid *Grid);
        int __fastcall Open(TStringGrid *Grid);
        void __fastcall Clear(TStringGrid *Grid);
        __fastcall TfrmMain(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
#endif
