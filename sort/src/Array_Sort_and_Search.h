//---------------------------------------------------------------------------

#ifndef Array_Sort_and_SearchH
#define Array_Sort_and_SearchH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TArray : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControlSort_and_Search;
        TTabSheet *Sort;
        TTabSheet *Search;
        TButton *ButtonExit_Array;
        TLabel *Label_1;
        TComboBox *ComboBox_Array;
        TRadioGroup *RadioGroupSort;
        TButton *ButtonOk1;
        TButton *ButtonOk2;
        TRadioGroup *RadioGroup1;
        TButton *Button1;
        void __fastcall ButtonExit_ArrayClick(TObject *Sender);
        void __fastcall ComboBox_ArrayChange(TObject *Sender);
        void __fastcall ButtonOk1Click(TObject *Sender);
        void __fastcall RadioGroupSortClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TArray(TComponent* Owner);
        int *Array1;
};
//---------------------------------------------------------------------------
extern PACKAGE TArray *Array;
//---------------------------------------------------------------------------
#endif
