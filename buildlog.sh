
if [ -z "$1" ];then
 echo "must give kernel name"
 exit 1
fi

gitlog="/boot/$1/git.log"

echo "-----------------" > $gitlog
echo "Kernel repo" >> $gitlog
git branch -a >> $gitlog
git log | head -20 >> $gitlog
echo "" >> $gitlog
echo "git diff" >> $gitlog
git diff >> $gitlog
echo "" >> $gitlog
 
cd ../../
echo "-----------------" >> $gitlog
echo "SVA repo" >> $gitlog

git branch -a >> $gitlog
git log | head -20 >> $gitlog
echo "" >> $gitlog
echo "git diff" >> $gitlog
git diff >> $gitlog
echo "" >> $gitlog

