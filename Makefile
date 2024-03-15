all: tokenize run

tokenize:
	petcat -w2 -o pi2.prg -- pi2.bas

run:
	xvic -basicload pi2.prg

clean:
	rm -f pi2.prg
