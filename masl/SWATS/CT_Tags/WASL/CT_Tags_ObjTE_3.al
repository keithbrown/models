define action CT_Tags_ObjTE_3
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

instTS  = find-one TCA_Super where idTS = 1
instTSD = find-one TCA_SubD where idTSD = 1

newTSD = instTS -> R6.TCA_SubD
if newTSD = UNDEFINED then
   link instTS R6 instTSD

   newTSD = instTS -> R6.TCA_SubD

   if newTSD != UNDEFINED then

      if newTSD.idTSD = 1 then
         this.TELinked = TRUE
      endif

   endif

endif
   generate ObjTE3:Finished (Test) to this


enddefine
