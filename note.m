function tone = note(key,dur)
  fs = 11025;
  t = 0:(1/fs):dur;
  freq = 440*2^((key-49)/12);
  env = (0.1*exp((-1)*t*5)+0.1*cos(1.25*t));
  tone = sin(2*pi*freq*t).*env;
end