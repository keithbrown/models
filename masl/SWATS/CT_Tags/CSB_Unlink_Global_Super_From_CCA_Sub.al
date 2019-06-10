//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state CT_Tags::CCA_SubB.Unlink_Global_Super_From_CCA_Sub (Test : in  integer) is
instGS = this -> R5.Global_Super

if instGS != UNDEFINED then

   unlink this R5 instGS

   tmpInst = this -> R5.Global_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

else
   [] = RPT3:Test_Failed["Link undefined", Test, -10]
endif

generate CSB3:Finished (Test) to this