//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state CT_Tags::Global_Super.Idle (Test : in  integer) is
instRes = find-one Results where idRes = 1

if this.GSRef = 1 then

   if instRes.TCAFlag then

      if this.TCAFlag then
         [] = RPT2:Test_Passed["TCA Poly Event", Test, 0]
      else
         [] = RPT3:Test_Failed["TCA Poly Event", Test, -10]
      endif

   else

      if instRes.CCAFlag then

         if this.CCAFlag then
            [] = RPT2:Test_Passed["CCA Poly Event", Test, 0]
         else
            [] = RPT3:Test_Failed["CCA Poly Event", Test, -10]
         endif

      else
         [] = RPT3:Test_Failed["Something terrible has happened", Test, -10]
      endif

   endif

else

   if this.GSRef = 2 then

      if this.GlobalFlag then
        this.GlobalFlag = FALSE
        [] = RPT2:Test_Passed["Global Poly Event", Test, 0]
      else
         [] = RPT3:Test_Failed["Global Poly Event", Test, -10]
      endif

   else

      if this.GSRef = 3 then

         if this.CCAFlag then
            [] = RPT2:Test_Passed["CCA Poly Event", Test, 0]
         else
            [] = RPT3:Test_Failed["CCA Poly Event", Test, -10]
         endif

      else

         if this.GSRef = 4 then

            if this.CCAFlag then
               [] = RPT2:Test_Passed["Global Poly Event", Test, 0]
            else
               [] = RPT3:Test_Failed["Global Poly Event", Test, -10]
            endif

         else
            [] = RPT3:Test_Failed["Something terrible has happened", Test, -10]
         endif

      endif

   endif

endif