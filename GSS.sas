PROC FORMAT;

  VALUE GSP001X
    99       = "No answer"
    98       = "Don't know"
    97       = "Not applicable"
  ;
  VALUE GSP002X
    99       = "No answer"
    98       = "Don't know"
    26       = "Refused"
    25       = "$150000 or over"
    24       = "$130000 to $149999"
    23       = "$110000 to $129999"
    22       = "$90000 to $109999"
    21       = "$75000 to $89999"
    20       = "$60000 to 74999"
    19       = "$50000 to 59999"
    18       = "$40000 to 49999"
    17       = "$35000 to 39999"
    16       = "$30000 to 34999"
    15       = "$25000 to 29999"
    14       = "$22500 to 24999"
    13       = "$20000 to 22499"
    12       = "$17500 to 19999"
    11       = "$15000 to 17499"
    10       = "$12500 to 14999"
    9        = "$10000 to 12499"
    8        = "$8 000 to 9 999"
    7        = "$7 000 to 7 999"
    6        = "$6 000 to 6 999"
    5        = "$5 000 to 5 999"
    4        = "$4 000 to 4 999"
    3        = "$3 000 to 3 999"
    2        = "$1 000 to 2 999"
    1        = "Under $1 000"
    0        = "Not applicable"
  ;
  VALUE GSP003X
    9        = "No answer"
    8        = "Don't know"
    3        = "Not too happy"
    2        = "Pretty happy"
    1        = "Very happy"
    0        = "Not applicable"
  ;
  VALUE GSP004X
    9        = "No answer"
    8        = "Don't know"
    3        = "Not too happy"
    2        = "Pretty happy"
    1        = "Very happy"
    0        = "Not applicable"
  ;
  VALUE GSP005X
    9        = "No answer"
    8        = "Don't know"
    3        = "Not too happy"
    2        = "Pretty happy"
    1        = "Very happy"
    0        = "Not applicable"
  ;
  VALUE GSP006X
    9        = "No answer"
    8        = "Don't know"
    5        = "Fifth"
    4        = "Fourth"
    3        = "Third"
    2        = "Second"
    1        = "Most impt"
    0        = "Not applicable"
  ;
  VALUE GSP007X
    9        = "No answer"
    8        = "Don't know"
    2        = "No"
    1        = "Yes"
    0        = "Not applicable"
  ;


DATA GSS.GSS;

   LENGTH
      YEAR     20
      ID_      20
      EDUC     20
      INCOME06 20
      HAPPY    20
      HAPMAR   20
      HAPCOHAB 20
      JOBMEANS 20
      DEPRESS  20   ;

   LABEL
      YEAR     ="Gss year for this respondent                       "
      ID_      ="Respondent id number"
      EDUC     ="Highest year of school completed"
      INCOME06 ="Total family income"
      HAPPY    ="General happiness"
      HAPMAR   ="Happiness of marriage"
      HAPCOHAB ="Happiness of relt with partner"
      JOBMEANS ="Work important and feel accomplishment"
      DEPRESS  ="Told have depression"
   ;

   INPUT
      YEAR     1 - 20
      ID_      21 - 40
      EDUC     41 - 60
      INCOME06 61 - 80
      HAPPY    81 - 100
      HAPMAR   101 - 120
      HAPCOHAB 121 - 140
      JOBMEANS 141 - 160
      DEPRESS  161 - 180   ;

   FORMAT
      EDUC     GSP001X.
      INCOME06 GSP002X.
      HAPPY    GSP003X.
      HAPMAR   GSP004X.
      HAPCOHAB GSP005X.
      JOBMEANS GSP006X.
      DEPRESS  GSP007X.   ;

PROC CONTENTS DATA=GSS.GSS;

RUN;
