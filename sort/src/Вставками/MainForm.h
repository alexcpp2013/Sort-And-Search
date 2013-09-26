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
        TButton *butClose;
        TOpenDialog *dOpen;
        TSaveDialog *dSave;
        TPageControl *PageControl1;
        TTabSheet *tsArray;
        TGroupBox *GroupBox2;
        TGroupBox *GroupBox1;
        TButton *butHandle;
        TButton *butGen;
        TButton *butOpen;
        TStringGrid *sgArray;
        TButton *butSave1;
        TButton *butClear1;
        TButton *butSort;
        TGroupBox *GroupBox5;
        TLabel *lblRes;
        TButton *butSave2;
        TButton *butClear2;
        TGroupBox *GroupBox6;
        TButton *Button1;
        TEdit *eResult;
        TButton *Button2;
        TStringGrid *sgRet;
        TStringGrid *sgData;
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
        void __fastcall butSortClick(TObject *Sender);
        void __fastcall butSave2Click(TObject *Sender);
        void __fastcall FormPaint(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        TStringGrid *Mas;
        void __fastcall DataShow(int Row, int Col1, int Col2, int *Data, int n);
        void __fastcall DataShow(int *Data, int n);
        void __fastcall Save(TStringGrid *Grid);
        int __fastcall Open(TStringGrid *Grid);
        void __fastcall Clear(TStringGrid *Grid);
        __fastcall TfrmMain(TComponent* Owner);
        //int __fastcall TfrmMain::QuickSort(int *Data, int S, int E, int n);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
class sort_insertion {
    private:
        int *X;           //List of data elements
        int n;            //Number of data elements
        int scan_no;
    public:
          sort_insertion (int size) { X = new int[n=size]; }
          ~sort_insertion( ) { delete [ ]X; }
          void load_list (int input[ ] );

          void insertion_sort( int input[ ]);
};
class sort_insertion1 {
    private:
        int *X;           //List of data elements
        int n;            //Number of data elements
        int scan_no;
    public:
          sort_insertion1 (int size) { X = new int[n=size]; }
          ~sort_insertion1( ) { delete [ ]X; }
          void load_list (int input[ ] );

          void insertion_sort1( int input[ ]);
};

#endif
