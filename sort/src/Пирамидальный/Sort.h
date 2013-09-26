//---------------------------------------------------------------------------

#ifndef SortH
#define SortH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmSort : public TForm
{
__published:	// IDE-managed Components
        TButton *butOK;
        TButton *butCancel;
        TGroupBox *GroupBox3;
        TGroupBox *GroupBox4;
        TButton *butHandle;
        TButton *butGen;
        TButton *butOpen;
        TStringGrid *sgArray;
        TButton *butSave;
        TButton *butClear;
        TButton *Button1;
        void __fastcall butCancelClick(TObject *Sender);
        void __fastcall butSaveClick(TObject *Sender);
        void __fastcall butClearClick(TObject *Sender);
        void __fastcall butHandleClick(TObject *Sender);
        void __fastcall butOpenClick(TObject *Sender);
        void __fastcall butGenClick(TObject *Sender);
        void __fastcall sgArrayKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
       
        __fastcall TfrmSort(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSort *frmSort;
//---------------------------------------------------------------------------
#endif
