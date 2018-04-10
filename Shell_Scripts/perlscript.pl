#!/usr/local/bin/perl
	
     	print "Hello World!\n";
	
	#Text is displayed using print command 
	print "This is a single statement.";
	print"\n";
	
	#Double quotes mean their contents should be interpreted
	print "This string\nshows up on two lines.";
	
	#Single quotes mean that their contents must be taken literally
    	print 'This string \n shows up on only one.';
	print"\n";
	
	#Three variable types- Scalars,Arrays and Hashes
	
	#Scalars-Number or a String
	$a = 5;
    	$str1 = 'apple';
    	$str2 = "This is a String.";
	
	$count = 5; 
    	$report = "There are $count apples.";
    	print " The report is: $report\n";

	#Arithmetic Operations on Numbers
	$a = 5;
    	$b = $a + 10;       # $b is now equal to 15.
    	$c = $b * 10;       # $c is now equal to 150.
    	$a = $a - 1;        # $a is now 4, and algebra teachers are cringing.
	
	$a = 5;
   	$a++;        # $a is now 6; we added 1 to it.
   	$a += 10;    # Now it's 16; we added 10.
   	$a /= 2;     # And divided it by 2, so it's 8.

	#Concatenation
	$a = "8";    	 # Note the quotes.  $a is a string.
   	$b = $a + "1";   # "1" is a string too.
   	$c = $a . "1";   # But $b and $c have different values!

	#Arrays
	@lotto_numbers = (1, 2, 3, 4, 5, 6);  
    	@months = ("July", "August", "September");
	
	#
