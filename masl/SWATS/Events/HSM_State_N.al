//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state Events::Huge_State_Machine.State_N (Test_No : in  integer,
                                          Count   : in  integer) is
temp = Count
temp = temp + 1

generate HSM1:Increment(Test_No, temp) to this