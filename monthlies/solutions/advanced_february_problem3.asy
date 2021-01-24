import olympiad;

settings.outformat = "eps";
size(10cm);

pair A = (0, 1), B = (1, 1), C = (1, 0), D = (0, 0);
draw(A--B--C--D--cycle);

dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, S);
dot("$D$", D, SW);

pair P = (0, 3/4);
dot("$P$", P, W);

pair q = rotate(45, B) * P;
pair Q = extension(C, D, B, q);
dot("$Q$", Q, S);

draw(P--B--Q--cycle);

pair R = C + rotate(90) * (P - A);
dot("$R$", R, S);

draw(C--R--B);

add(pathticks(A--P, 1, 0.5, 0.5pt, 2pt));
add(pathticks(C--R, 1, 0.5, 0.5pt, 2pt));
add(pathticks(A--B, 2, 0.5, 0.5pt, 2pt));
add(pathticks(B--C, 2, 0.5, 0.5pt, 2pt));
add(pathticks(B--P, 3, 0.5, 0.5pt, 2pt));
add(pathticks(B--R, 3, 0.5, 0.5pt, 2pt));
draw(anglemark(C, B, R, 3pt));
draw(anglemark(A, B, P, 3pt));
draw(anglemark(P, B, Q, 4pt, 3.5pt));
draw(anglemark(Q, B, R, 5pt, 4.5pt));
draw(rightanglemark(B, C, R, 2pt));
draw(rightanglemark(D, A, B, 2pt));