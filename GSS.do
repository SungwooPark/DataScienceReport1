#delimit ;

   infix
      year     1 - 20
      id_      21 - 40
      educ     41 - 60
      income06 61 - 80
      happy    81 - 100
      hapmar   101 - 120
      hapcohab 121 - 140
      jobmeans 141 - 160
      depress  161 - 180
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable id_      "Respondent id number";
label variable educ     "Highest year of school completed";
label variable income06 "Total family income";
label variable happy    "General happiness";
label variable hapmar   "Happiness of marriage";
label variable hapcohab "Happiness of relt with partner";
label variable jobmeans "Work important and feel accomplishment";
label variable depress  "Told have depression";


label define gsp001x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp002x
   99       "No answer"
   98       "Don't know"
   26       "Refused"
   25       "$150000 or over"
   24       "$130000 to $149999"
   23       "$110000 to $129999"
   22       "$90000 to $109999"
   21       "$75000 to $89999"
   20       "$60000 to 74999"
   19       "$50000 to 59999"
   18       "$40000 to 49999"
   17       "$35000 to 39999"
   16       "$30000 to 34999"
   15       "$25000 to 29999"
   14       "$22500 to 24999"
   13       "$20000 to 22499"
   12       "$17500 to 19999"
   11       "$15000 to 17499"
   10       "$12500 to 14999"
   9        "$10000 to 12499"
   8        "$8 000 to 9 999"
   7        "$7 000 to 7 999"
   6        "$6 000 to 6 999"
   5        "$5 000 to 5 999"
   4        "$4 000 to 4 999"
   3        "$3 000 to 3 999"
   2        "$1 000 to 2 999"
   1        "Under $1 000"
   0        "Not applicable"
;
label define gsp003x
   9        "No answer"
   8        "Don't know"
   3        "Not too happy"
   2        "Pretty happy"
   1        "Very happy"
   0        "Not applicable"
;
label define gsp004x
   9        "No answer"
   8        "Don't know"
   3        "Not too happy"
   2        "Pretty happy"
   1        "Very happy"
   0        "Not applicable"
;
label define gsp005x
   9        "No answer"
   8        "Don't know"
   3        "Not too happy"
   2        "Pretty happy"
   1        "Very happy"
   0        "Not applicable"
;
label define gsp006x
   9        "No answer"
   8        "Don't know"
   5        "Fifth"
   4        "Fourth"
   3        "Third"
   2        "Second"
   1        "Most impt"
   0        "Not applicable"
;
label define gsp007x
   9        "No answer"
   8        "Don't know"
   2        "No"
   1        "Yes"
   0        "Not applicable"
;


label values educ     gsp001x;
label values income06 gsp002x;
label values happy    gsp003x;
label values hapmar   gsp004x;
label values hapcohab gsp005x;
label values jobmeans gsp006x;
label values depress  gsp007x;


