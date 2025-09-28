numofdays(jan, 31).
numofdays(feb, 28).
numofdays(mar, 31).
numofdays(apr, 30).
numofdays(may, 31).
numofdays(jun, 30).
numofdays(jul, 31).
numofdays(aug, 31).
numofdays(sep, 30).
numofdays(oct, 31).
numofdays(nov, 30).
numofdays(dec, 31).
nextmonth(jan, feb).
nextmonth(feb, mar).
nextmonth(mar, apr).
nextmonth(apr, may).
nextmonth(may, jun).
nextmonth(jun, jul).
nextmonth(jul, aug).
nextmonth(aug, sep).
nextmonth(sep, oct).
nextmonth(oct, nov).
nextmonth(nov, dec).
nextmonth(dec, jan).
nextdate(date(M, D1), date(M, D2)) :-
    numofdays(M, D),
    D1 > 0, D1 < D,
    D2 is D1 + 1.	
nextdate(date(M1, D1), date(M2, 1)) :-
    numofdays(M1, D),
    D1 =:= D,
    nextmonth(M1, M2).