
#!/bin/bash

#s2

#Converting pdf to text file
$(pdftotext -layout result_MDLs2.pdf result_MDLs2.txt)

#Separating CS Results from result_MDLs2.txt
grep -A 361 "MDL16CS001" result_MDLs2.txt >> temp.txt

#Removing newlines,tabs,null spaces, special characters from temp.txt
tr -d " \n\t\r\014" <temp.txt>intr1.txt

#Copying intr1.txt back to temp.txt
cp intr1.txt temp.txt

#Removing intr1.txt
rm intr1.txt

#Separating each regno and respective marks from a single continuous long stream.
sed 's/MDL/\nMDL/g' temp.txt >> intr1.txt

#Copying intr1.txt to temp.txt
cp intr1.txt temp.txt

#Removing intr1.txt
rm intr1.txt

#Creating empty file grades.txt
rm grades.txt
touch grades.txt

#Cutting out the grades alone from temp.txt
for i in {2..10}
do 
 paste grades.txt <(cut -d'(' -f$i temp.txt | cut -d')' -f1) > temp1.txt
 mv temp1.txt grades.txt
done

#Creating an array credits2 with respective credits in the order of subjects
credits2=(4 4 3 1 1 4 3 3 1)

#Reading each entry from grades.txt  and calculating sgpa for s2
while read -r line
  do
  sum=0
  sgpa=0
  for i in {2..10}
   do
   case "$(echo $line | cut -d' ' -f$i )" in
          "O") sum=$(bc -l <<< "(10 * ${credits2[i-2]})");;
 
          "A+") sum=$(bc -l <<< "(9 * ${credits2[i-2]})");;

          "A") sum=$(bc -l <<< "(8.5 * ${credits2[i-2]})");;

          "B+") sum=$(bc -l <<< "(8 * ${credits2[i-2]})");;

          "B") sum=$(bc -l <<< "(7 * ${credits2[i-2]})");;

          "C") sum=$(bc -l <<< "(6 * ${credits2[i-2]})");;

          "P") sum=$(bc -l <<< "(5 * ${credits2[i-2]})");;

          *) sum=$(bc -l <<< "(0 * ${credits2[i-2]})");;

    esac
    sgpa=$(bc -l <<<  "($sgpa + $sum)")

done
$(bc <<< "scale = 2; ($sgpa / 23)" >> s2sgpa.txt)
#echo $sgpa >> s2sgpa.txt
done<grades.txt
cut -f 4 c4b.txt > t1.txt
paste <(cut -c 1-10 < temp.txt) s2sgpa.txt > t2.txt

join  t1.txt  t2.txt > SGPA2.txt

rm temp.txt t1.txt t2.txt s2sgpa.txt

#s1

#Converting pdf to text file
$(pdftotext -layout result_MDL.pdf result_MDL.txt)

#Separating CS Results from result_MDLs2.txt
grep -A 361 "MDL16CS001" result_MDL.txt >> temp1.txt

#Removing newlines,tabs,null spaces, special characters from temp.txt
tr -d " \n\t\r\014" <temp1.txt>intr2.txt

#Copying intr1.txt back to temp.txt
cp intr2.txt temp1.txt

#Removing intr1.txt
rm intr2.txt

#Separating each regno and respective marks from a single continuous long stream.
sed 's/MDL/\nMDL/g' temp1.txt >> intr2.txt

#Copying intr1.txt to temp.txt
cp intr2.txt temp1.txt

#Removing intr1.txt
rm intr2.txt

#Creating empty file grades.txt
rm grades1.txt
touch grades1.txt

#Cutting out the grades alone from temp.txt
for i in {2..10}
do 
 paste grades1.txt <(cut -d'(' -f$i temp1.txt | cut -d')' -f1) > temp2.txt
 mv temp2.txt grades1.txt
done

#Creating an array credits2 with respective credits in the order of subjects
credits1=(4 4 3 3 3 3 1 1 1)

#Reading each entry from grades.txt  and calculating sgpa for s2
while read -r line
  do
  sum=0
  sgpa=0
  for i in {2..10}
   do
   case "$(echo $line | cut -d' ' -f$i )" in
          "O") sum=$(bc -l <<< "(10 * ${credits2[i-2]})");;
 
          "A+") sum=$(bc -l <<< "(9 * ${credits2[i-2]})");;

          "A") sum=$(bc -l <<< "(8.5 * ${credits2[i-2]})");;

          "B+") sum=$(bc -l <<< "(8 * ${credits2[i-2]})");;

          "B") sum=$(bc -l <<< "(7 * ${credits2[i-2]})");;

          "C") sum=$(bc -l <<< "(6 * ${credits2[i-2]})");;

          "P") sum=$(bc -l <<< "(5 * ${credits2[i-2]})");;

          *) sum=$(bc -l <<< "(0 * ${credits2[i-2]})");;

    esac
    sgpa=$(bc -l <<<  "($sgpa + $sum)")

done
$(bc <<< "scale = 2; ($sgpa / 23)" >> s1sgpa.txt)
#echo $sgpa 
done<grades1.txt
cut -f 4 c4b.txt > t2.txt
paste <(cut -c 1-10 < temp1.txt) s1sgpa.txt > t3.txt

join  t2.txt  t3.txt > SGPA1.txt

rm temp1.txt t2.txt t3.txt s1sgpa.txt

