#
errfile="newlist.txt"
file="./list.txt"
test="err.txt"
path="/home/jkrishnavs/chapel/chapel/test"
rm $file
rm $test
# using cut command after reversing the string and then reversing back
cat  $errfile | cut -f6 -d' ' | cut -f1 -d']' &>$file
cat $file | rev | cut -f1 -d"/"| rev &>$test
while IFS= read line
do
    f=$path/$line.chpl
    echo $f
    time chpl $f
done < $file

# while IFS= read line
# do
#     chpl $line.chpl
# done < $test

