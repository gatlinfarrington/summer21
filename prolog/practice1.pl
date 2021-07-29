show(seinfeld, 1989, 8.9).
show(twin_peaks, 1990, 8.9).
show(the_xfiles, 1993, 8.7).
show(friends, 1994, 8.9).
show(the_shield, 2002, 8.7).
show(the_wire, 2002, 9.4).
show(firefly, 2002, 9.1).
show(friday_night_lights, 2006, 8.6).
show(the_walking_dead, 2010, 8.4).
show(game_of_thrones, 2011, 9.4).
show(silicon_valley, 2014, 8.5).
show(mr_robot, 2015, 8.6).
show(atlanta, 2016, 8.5).

good_show(X) :- show(X, Year, Rating), Rating > 8.9.
show_pair(X, A) :- show(X, Year, Rating), show(A, B, C), Year is B.
quad(X, Y) :- Y is X*4.

bloop(X,Y) :- X >= 0, Y is 2 * X.
bloop(X,Y) :- X<0, Y is X/2.

mult(X,Y,Z) :- Z is X*Y.

bigger(X,Y,Z) :- Z > X, Z>Y.

absol(X,Y) :- X<0, Y is X * -1.
absol(X,Y) :- X>=0, Y is X.
