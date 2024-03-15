10 input"pi digits";n%: t=ti: l%=int(10*n%/3)+1: dim a%(l%): z$="000000": t$="999999"
20 for i=1 to l%: a%(i)=2: next i: m=0: p=0: for j=1 to n%: q=0: k%=2*l%+1
30 for i=l% to 1 step -1: k%=k%-2: x=10*a%(i)+q*i: q=int(x/k%): a%(i)=x-q*k%: next i
40 y = int(q/10): a%(1)=q-10*y: q=y: if q=9 then m=m+1: goto 70
41 p$=str$(p):p$=right$(p$,len(p$)-1)
42 p1$=str$(p+1):p1$=right$(p1$,len(p1$)-1)
50 if q=10 then print p1$;left$(z$,m);: p=0: m=0: goto 70
60 print p$;left$(t$,m);: p=q: m=0
70 next j: print p1$
80 print (ti-t)/60;"seconds"
