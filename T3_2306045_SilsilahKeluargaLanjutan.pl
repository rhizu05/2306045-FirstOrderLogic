% Fakta: Jenis Kelamin
laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).

% Fakta: Hubungan orang tua
orang_tua(david, liza).
orang_tua(amy, liza).
orang_tua(david, john).
orang_tua(amy, john).

orang_tua(jack, susan).
orang_tua(karen, susan).
orang_tua(jack, ray).
orang_tua(karen, ray).

orang_tua(john, peter).
orang_tua(susan, peter).
orang_tua(john, mary).
orang_tua(susan, mary).

% Aturan: Ayah
ayah(X, Y) :- laki_laki(X), orang_tua(X, Y).

% Aturan: Ibu
ibu(X, Y) :- perempuan(X), orang_tua(X, Y).

% Aturan: Saudara kandung
saudara(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X \= Y.

% Aturan: Kakek
kakek(X, Y) :- laki_laki(X), orang_tua(X, Z), orang_tua(Z, Y).

% Aturan: Nenek
nenek(X, Y) :- perempuan(X), orang_tua(X, Z), orang_tua(Z, Y).
