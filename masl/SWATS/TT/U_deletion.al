//
// UK Crown Copyright (c) 2019. All rights reserved.
//

terminal state TT::Unsupported.deletion () is
the_test = this -> R2.Test
unlink this R2 the_test 
delete the_test
delete this
