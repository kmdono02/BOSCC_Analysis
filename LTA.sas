proc import datafile="C:\Users\kmdono02\Desktop\Full_Long_SAS.csv"
        out=full_long
        dbms=csv
        replace;
     getnames=yes;
run;

*Check means for correct variable coding, missingness;
proc means data=full_long mean std nmiss;
run;
