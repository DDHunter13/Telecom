out = randerr(1,4) + randerr(1,4);
disp(out);
code = encode (out, 7, 4, 'hamming/binary');
disp(code);
dcode = decode (code, 7, 4, 'hamming/binary');
if (dcode == out) disp('Got it for Hamming!'); 
end;

out = randerr(1,4) + randerr(1,4);
disp(out);
code = encode (out, 7, 4, 'cyclic/binary');
disp (code);
dcode = decode (code, 7, 4, 'cyclic/binary');
if (dcode == out) disp('Got it for cyclic!'); 
end; 

m = 4;
n = 2^m-1; 
k = 5;       
nwords = 10; 

code = gf(randi([0 1],nwords,k));

[~,t] = bchgenpoly(n,k);

enc = bchenc(code,n,k);

noisycode = enc + randerr(nwords,n,1:t);

dcode = bchdec(noisycode,n,k);
code
dcode
if (code == dcode) disp ('Got it for BCH');
end;

m = 3;           
n = 2^m - 1;    
k = 3;          

msg = gf([2 7 3; 4 0 6; 5 1 1],m);
code = rsenc(msg,n,k);

errors = gf([2 0 0 0 0 0 0; 3 4 0 0 0 0 0; 5 6 7 0 0 0 0],m);
noisycode = code + errors;

[dcode,cnumerr] = rsdec(noisycode,n,k);

cnumerr