#!/bin/bash

sudheer="Hi, ra mava this is the first script"
 #" " ivi ivali manam word ki word ki gap ichinapudu
echo "This was the first script please read $sudheer"
echo "the pid of the current script $$ "

#./12.secondtrial.sh    # Ikkada variable ane kadhu In general ga changes happen in the other script 
                        # willnot affct by other script ee way lo run chesetapudu manaki kinda vunna 
                        # variable value change avadu.same first script lo variable ki ye value vunte 
                        # adhe print Process ID anedhi different ga vastayi output lo.first di Pid($$)  
                        #  ee script avutundhi lone di.second di "secondtrial.sh" lone di.

source ./12.secondtrial.sh # ee way lo run chese tapudu kinda vunna echo lo variable value change 
                           # ayipothundhi second script lo vunna value ni istundhi.Process Id same ga
                           # vastayi

echo " After running the other script $sudheer"
