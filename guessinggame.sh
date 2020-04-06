function guessinggame {

 local dir_files=$(ls -la | egrep ^- | wc -l | egrep -o [0-9]+)

 echo How many files are in the current directory?
 read response

 while [[ $response != $dir_files ]]
 do

  if [[ $response =~ [^0-9] ]]
  then
   echo "Plaese enter a positive integer"
  elif [[ $response =~ ^[0-9]+$ ]]
  then

   if [[ $response -gt $dir_files ]]
   then
    echo "The number was too high. Try again."
   elif [[ $response -lt $dir_files ]]
   then
    echo "The number was too low. Try again."
   fi

  fi
  read response
 done

 if [[ $response -eq $dir_files ]]
 then
  echo "Congratulations! This is the correct number."
 fi
}

guessinggame
