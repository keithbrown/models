//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state CT_Tags::Global_SubC.Unlink_Global_Super_from_Global_Sub (Test : in  integer) is
instGS = this -> R5.Global_Super

instRes = find-one Results where idRes = 1

temp = instGS.GSRef

instRes.ResRef = temp


unlink this R5 instGS

tmpInst = this -> R5.Global_Super

   if tmpInst = UNDEFINED then
      [] = RPT2:Test_Passed["Unlink succesefull", Test, 0]
   else
      [] = RPT3:Test_Failed["Unlink unsuccesefull", Test, -10]
   endif

generate GSC3:Finished (Test) to this