//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state Events::Top_Level.Check () is
[] = Events5::Dump_Text["Top Level"]

temp = this.Result
temp = temp + 1
this.Result = temp