//---------------------------------------------------------------------------

#ifndef GenH
#define GenH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TfrmGen : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TEdit *eCount;
        TEdit *eBottom;
        TEdit *eTop;
        TButton *butOk;
        TButton *butCancel;
        void __fastcall butOkClick(TObject *Sender);
        void __fastcall butCancelClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TfrmGen(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmGen *frmGen;
//---------------------------------------------------------------------------
#endif
