Y=2018
RANDOM=$$
for jhgdfshdj in {2018}
do
  mkdir $Y
  cd $Y
  for M in {01,02,03,04,05}
  do
    mkdir $M
    cd $M
    for D in {01..31}
    do
      mkdir $D
      cd $D
      DD=$(($RANDOM/1000))
      echo "???" > commit.md
      if [ true ]
      #if
       then
         echo "$DD ********************************"
         S=$(jot -r 1 6 17)
         for i in {7..$S}
         do
           echo "fine with me" > commit.md
           export GIT_COMMITTER_DATE="$Y-$M-$D 12:00:00"
           export GIT_AUTHOR_DATE="$Y-$M-$D 12:00:00"
           git add commit.md -f
           git commit --date="$Y-$M-$D 12:00:00" -m "$i on $M $D $Y"
         done
       else
           echo "-----------------------------"
      fi
      #echo $(($RANDOM/1000))
      # jot -r 1 0 10
      cd ../
    done
    cd ../
  done
  cd ../
done
git push origin master
git rm -rf 20**
git rm -rf 19**
git commit -am "cleanup"
git push origin master
