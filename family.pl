female(ayeh).
female(noor).
female(zainab).
female(manar).
male(haidar).

parent(haidar, zainab).
parent(haidar, noor).
parent(haidar, ayeh).
parent(manar, zainab).
parent(manar, noor).
parent(manar, ayeh).

sister(noor, zainab).
sister(zainab, noor).
sister(noor, ayeh).
sister(ayeh, noor).
sister(ayeh, zainab).
sister(zainab, ayeh).

isMother(Mother, Child):-
    female(Mother),
    parent(Mother, Child).

isFather(Father, Child):-
    male(Father),
    parent(Father, Child).

isChild(Child, Father):-
    isFather(Father, Child).

isChild(Child, Mother):-
    isMother(Mother, Child).
 
isSibling(Sister1, Sister2):-
    sister(Sister1, Sister2).
    
