//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state UDT::An_Active_Object.It_Passed (Reason : in  Active_Object_Status_Type) is
this_test = this.The_Test_Number

if this.Why = Reason then 

   if this.Why = 'OK' then
      [] = RPT2:Test_Passed["Active UDT Object", this_test, 0]
   else
      [] = RPT3:Test_Failed["Active UDT Object", this_test,  -99]
   endif

else
      [] = RPT3:Test_Failed["Active UDT Object", this_test,  -999]
endif
