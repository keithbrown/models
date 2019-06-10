//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state UDT::An_Active_Object.It_Failed (Reason : in  Active_Object_Status_Type) is
Failed_Because = 0

if Reason = 'Enumeral' then
   Failed_Because = 1
else

   if Reason = 'Number' then
      Failed_Because = 2
   else
      Failed_Because = 9
   endif

endif

this_test = this.The_Test_Number

[] = RPT3:Test_Failed["Active UDT Object", this_test,  Failed_Because]

