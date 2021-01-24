import olympiad;

settings.outformat = "eps";
size(10cm);

pair A = dir(203);
pair B = dir(70);
pair C = dir(337);
pair M = foot(A, B, C);
pair N = foot(C, A, B);
pair Y = extension(A, C, M, N);
pair X = N + M - B;

pair mxn = bisectorpoint(M, X, N);
pair myc = bisectorpoint(M, Y, C);

pair Z = extension(X, mxn, Y, myc);
pair xz = Z + 0.1 * dir(Z - X);
pair zx = X + 0.1 * dir(X - Z);
pair yz = Z + 0.1 * dir(Z - Y);

draw(A--B--C--cycle);
draw(A--M);
draw(C--N);
draw(N--X--M);
draw(M--Y--C);
draw(Y--yz, dashed);
draw(zx--X--xz, dashed);

dot("$A$", A, S);
dot("$B$", B, dir(B));
dot("$C$", C, S);
dot("$M$", M, NE);
dot("$N$", N, NW);
dot("$Y$", Y, S);
dot("$X$", X, S);