% Facts
reigns(khalid, 1900, 1950).
reigns(mohammad, 1951, 1970).
reigns(labib, 1971, 1985).
reigns(yakub, 1986, 2010).

% Rule to calculate ruling period
ruling_period(Ruler, Period) :-
    reigns(Ruler, Start, End),
    Period is End - Start.