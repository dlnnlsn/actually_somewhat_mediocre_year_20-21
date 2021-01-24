import olympiad;

settings.outformat = "eps";
size(15cm);

pair A = dir(203);
pair B = dir(70);
pair C = dir(337);
pair M = foot(A, B, C);
pair N = foot(C, A, B);
pair Y = extension(A, C, M, N);
pair X = N + M - B;
pair P = extension(M, X, A, C);
pair Q = extension(N, X, A, C);

pair mxn = bisectorpoint(M, X, N);
pair myc = bisectorpoint(M, Y, C);

pair Z = extension(X, mxn, Y, myc);
pair zx = X + 0.1 * dir(X - Z);

pair S = extension(X, Z, M, N);
pair T = extension(Y, Z, M, P);

draw(Y--M--N--P--Q--Y);
draw(M--Q);
draw(N--Q);
draw(M--P);
draw(S--Z--X--zx);
draw(Y--T--Z);
draw(circumcircle(P, Q, M));

dot("$M$", M, NE);
dot("$N$", N, NW);
dot("$Y$", Y, SE);
dot("$X$", X, W);
dot("$P$", P, SW);
dot("$Q$", Q, SE);
dot("$S$", S, NE);
dot("$T$", T, SE);
dot("$Z$", Z, NW);

markscalefactor = 1;

draw(anglemark(M, Y, T, 0.2));
draw(anglemark(Z, Y, P, 0.2));
pair y1dir = dir(dir(M - Y) + dir(T - Y));
pair y2dir = dir(dir(T - Y) + dir(P - Y));
label("$\alpha$", Y + 0.2 * y1dir, y1dir, fontsize(6pt));
label("$\alpha$", Y + 0.2 * y2dir, y2dir, fontsize(6pt));

draw(anglemark(M, X, S, 0.07, 0.06));
draw(anglemark(S, X, N, 0.07, 0.06));
draw(anglemark(zx, X, Q, 0.07, 0.06));
draw(anglemark(P, X, zx, 0.07, 0.06));
pair x1dir = dir(dir(M - X) + dir(S - X));
pair x2dir = dir(dir(S - X) + dir(N - X));
label("$\beta$", X + 0.1 * x1dir, fontsize(6pt));
label("$\beta$", X + 0.1 * x2dir, fontsize(6pt));

draw(anglemark(Y, Z, S, 0.06, 0.05, 0.04, 0.03));
pair z1dir = dir(dir(Y - Z) + dir(S - Z));
label("$x$", Z + 0.09 * z1dir, fontsize(6pt));

draw(anglemark(N, M, P, 0.08, 0.07, 0.06));
pair m1dir = dir(dir(N - M) + dir(P - M));
label("$\varphi$", M + 0.11 * m1dir, fontsize(6pt));