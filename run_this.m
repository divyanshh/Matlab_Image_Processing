subplot(3,3,1)
R = imnoise2('erlang', 1000000,1,2,5);
plot(hist(R, 50))
title('Erlang');

subplot(3,3,2)
R = imnoise2('salt & pepper', 1000000,1,0,1);
plot(hist(R, 50))
title('salt and pepper');

subplot(3,3,3)
R = imnoise2('uniform', 1000000,1,0,1);
plot(hist(R, 50))
title('uniform');

subplot(3,3,4)
R = imnoise2('lognormal', 1000000,1,0,1);
plot(hist(R, 50))
title('lognormal');

subplot(3,3,5)
R = imnoise2('rayleigh', 1000000,1,0,1);
plot(hist(R, 50))
title('rayleigh');

subplot(3,3,6)
R = imnoise2('exponential', 1000000,1,2,5);
plot(hist(R, 50))
title('Exponential');

subplot(3,3,7)
R = imnoise2('gaussian', 1000000,1,0,1);
plot(hist(R, 50))
title('Gaussian');