//
// UK Crown Copyright (c) 2019. All rights reserved.
//

state TT::Time_Remaining.complete () is
the_test_scheduler = find-one Test_Scheduler
the_test = this -> R2.Test
generate TS2:test_complete(the_test) to the_test_scheduler