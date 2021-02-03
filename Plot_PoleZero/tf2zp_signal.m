M = randi([2 10], [1,1]);
N = randi([2 10], [1,1]);

SP = -1 + (1-(-1)).*rand(1,M);
KP = -1 + (1-(-1)).*rand(1,N);

[SP,KP] = eqtflength(SP,KP);
[z,p,k] = tf2zp(SP,KP);

fvtool(KP,SP,'polezero')
text(real(z)+.1,imag(z),'Zero')
text(real(p)+.1,imag(p),'Pole')