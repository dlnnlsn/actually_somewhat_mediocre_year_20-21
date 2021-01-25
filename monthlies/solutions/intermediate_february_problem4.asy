import olympiad;

settings.outformat = "eps";
size(10cm);

pair A = (0, 3);
pair B = (4, 0);
pair C = (0, 0);
pair P = (2, 1);

pair M = (A + C)/2;
pair N = (A + B)/2;

pair D = foot(P, B, C);

draw(A--B--C--cycle);
draw(B--P--C);
draw(M--N);
draw(P--D);

draw(rightanglemark(B, C, A, 3pt));
draw(rightanglemark(N, M, A, 3pt));
draw(rightanglemark(B, D, P, 3pt));

add(pathticks(A--M, 1, 0.5pt, 2pt));
add(pathticks(M--C, 1, 0.5pt, 2pt));
add(pathticks(A--N, 2, 0.5pt, 2pt));
add(pathticks(N--B, 2, 0.5pt, 2pt));

dot("$A$", A, NW);
dot("$B$", B, SE);
dot("$C$", C, SW);
dot("$M$", M, W);
dot("$N$", N, E);
dot("$P$", P, N);
dot("$D$", D, S);