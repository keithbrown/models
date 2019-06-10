define action CT_Tags_ObjTE_1
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

if this.TERef = 1 then

   if !this.TEPassed then
      this.TEPassed = TRUE
      [] = RPT2:Test_Passed["Gen event to TCA object", Test, 0]
   else

      if this.TELinked then  
         [] = RPT2:Test_Passed["TCA Super TCA Sub linked", Test, 0]
      else
         [] = RPT2:Test_Passed["TCA Super TCA Sub unlinked", Test, -10]
      endif

   endif

else
   [] = RPT3:Test_Failed["Gen event to TCA object", Test, this.TERef]
endif




enddefine
