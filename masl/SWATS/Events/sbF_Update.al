//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state Events::SubF.Update (Test : in  integer) is
# find the supertype
my_super = this -> R6.SuperA

temp = my_super.ResultA + 40
my_super.ResultA = temp