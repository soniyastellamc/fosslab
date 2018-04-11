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
	print "Arithmetic Operations \n";	
	$a = 5;
	print "Value of a: $a \n";
    	$b = $a + 10;       # $b is now equal to 15.
	print "$a + 10 = $b \n";
    	$c = $b * 10;       # $c is now equal to 150.
	print "$b * 10 = $c \n";
	$d = $c / 10; #$d is now equal to 15.
	print "$c /10 = $d \n";
    	$a = $a - 1;        # $a is now 4.
	print "$a - 1 = $a \n";
	
	$a = 5;
   	$a++;        # $a is now 6;added 1 to it.
   	$a += 10;    # it's 16;added 10.
   	$a /= 2;     # divided it by 2, so it's 8.

	#Concatenation
	print "Concatenation \n";
	$a = "8";    	 # $a is a string.
   	$b = $a + "1";   # "1" is a string too.
   	$c = $a . "1";   # But $b and $c have different values!
	print " a, b=added 1 to a, c=concatenated 1 to a: $a,$b,$c\n";

	#Arrays
	@array = (1,2,3,4);
	print "Complete array: @array \n";
	print "Printing Individual Elements: $array[0] $array[1] $array[2] $array[3] \n";
 
	print"Adding an element to the end of the array\n";
	push(@array,5);
	print "\@array = @array \n";

	print"Adding an element to the beginning of an array\n";
	unshift(@array,0);
	print "\@array= @array \n";

	print"Deleting an element from the beginning of an array\n";
	pop(@array);
	print "\@array = @array \n";

	print"Deleting an element from the end of an array\n";
	shift(@array);
	print "\@array = @array \n";
	
	#Standard comparisons for integers: <, >, <=, >= , ==, !=
	#String comparison: eq, ne, lt, le, gt, ge (alphabetical order)

	$i="One";
	if($i eq "One")
 	{print "Successful Comparison\n";}  #Comparison of strings

	#Conditionals Implementation
	$j="Two";
	if($i ge $j)
	{print "$i is greater \n";}
	else
	{print "$j is greater \n";}

	#Loop Implementaion
	print"Loop Implementation\n";
	for $i(2,4,6)
	{print "$i \n";}

	$i=1;
	while($i<3)
	{
	print "$i \n";
	$i+=1;
	}

	for($i=1;$i<3;$i++)
	{print "$i \n";}

	#Variable type - Hash
	%hash=('a',0,'b',1);
	print "Key Values for hash: $hash{a} $hash{b} \n";

	$string = "cat
lion
zebra";
	print "Multiline strings in Perl: $string \n";
