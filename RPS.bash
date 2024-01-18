#Rock Paper Scissor

echo "======= ROUND 1 ======="
echo "Rock, Paper, or Scissor? Best two out of three!"
score=0
sleep 1
echo "Type your choice now."
read choice1
echo You picked $choice1.
sleep 1
echo I picked scissor.
sleep 1
if [ $choice1 == rock ] 
then
echo "You win! Rock beats scissor!"
newscore=$(expr $score + 1)
vnewscore=$(expr $score + 0)
elif [ $choice1 == paper ]
then
echo "You lose. Paper beats rock!"
newscore=$(expr $score + 0)
vnewscore=$(expr $score + 1)
else
echo "Tie!"
newscore=$(expr $score + 0)
vnewscore=$(expr $score + 0)
fi
sleep 1
echo Go again.
sleep 1
echo "======= ROUND 2 ======="
echo "Rock, Paper, or Scissor?" 
sleep 1
echo Type your choice now.
read choice2
echo You picked $choice2.
sleep 1
echo I picked rock.
sleep 1
if [ $choice2 == paper ] 
then
echo "You win! Paper beats rock!"
newnewscore=$(expr $newscore + 1)
vnewnewscore=$(expr $vnewscore + 0)
elif [ $choice2 == scissor ]
then
echo "You lose. Rock beats scissor!"
newnewscore=$(expr $newscore + 0)
vnewnewscore=$(expr $vnewscore + 1)
else
echo "Tie!"
newnewscore=$(expr $newscore + 0)
vnewnewscore=$(expr $vnewscore + 0)
fi
sleep 1
if [ $newnewscore == 2 ]
then
echo You won two out of three!
sleep 1
echo You win!
exit 0
elif [ $vnewnewscore == 2 ]
then
echo "I won two out of three. You lose!"
exit 0
else
echo "Go again. It's a close game!"
sleep 1
echo "======= FINAL ROUND! ======="
echo "Rock, Paper, or Scissor? Type your choice now."
read choice3
echo You picked $choice3.
sleep 1
echo I picked paper.
sleep 1
if [ $choice3 == scissor ] 
then
echo "You win! Scissor beats paper!"
finalscore=$(expr $newnewscore + 1)
vfinalscore=$(expr $vnewnewscore + 0)
sleep 1
elif [ $choice3 == rock ]
then
finalscore=$(expr $newnewscore + 0)
vfinalscore=$(expr $vnewnewscore + 1)
echo "You lose. Paper beats rock!"
sleep 1
else
echo "Tie!"
sleep 1
finalscore=$(expr $newnewscore + 0)
vfinalscore=$(expr $vnewnewscore + 0)
fi
fi
if [ $finalscore -gt $vfinalscore ]
then
echo "You won best two out of three! Congratulations!"
exit 0
elif [ $finalscore -lt $vfinalscore ]
then
echo "Sorry. You lost the game. :("
exit 0
else
echo "Wow, we tied! Good game!"
exit 0
fi
