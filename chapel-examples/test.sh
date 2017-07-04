cur=$(pwd)
cd /home/jkrishnavs/chapel/chapel/compiler
make
cd $cur
echo $cur
echo $pwd
chpl mustcreateerror.chpl
