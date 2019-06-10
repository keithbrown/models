//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state CT_Tags::CCA_Super.Check (Test : in  integer) is
if this.CSRef = 1 then

   if this.CCAFlag and !this.GlobalFlag then
      this.CSRef = 2
      [] = RPT2:Test_Passed["CCA Poly Event", Test, 0]
   else
      [] = RPT3:Test_Failed["CCA Poly Event", Test, -10]
   endif

else

   if this.CSRef = 2 then
      
      instGSI = this -> R7.Global_SubI
      if instGSI.GlobalFlag then
         [] = RPT2:Test_Passed["Global Poly Event", Test, 0]
      else
         [] = RPT3:Test_Failed["Global Poly Event", Test, -10]
      endif

   else
      [] = RPT3:Test_Failed["Global Poly Event", Test, -20]
   endif

endif

generate CS2:Finished(Test) to this