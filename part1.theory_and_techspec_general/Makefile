help:
	@echo "Run 'make <target>'"
	@echo "Targets are: check, pdf, dvi, clean, distclean, all"
	@echo "For more help just 'less Makefile'"

all:
	./remake.sh
	./mkpdf.sh

pdf:
	./mkpdf.sh

dvi:
	./remake.sh

check:
	./check.sh && echo -e "\n All margins match. (OK state).\n"

clean:
	rm -vf *.log
	rm -vf *.lof
	rm -vf *.aux
	rm -vf *.lot
	rm -vf *.toc
	rm -vf *.idx
	rm -vf *.ilg
	rm -vf *.ind

distclean:
	rm -vf *.log
	rm -vf *.lof
	rm -vf *.aux
	rm -vf *.dvi
	rm -vf *.pdf
	rm -vf *.lot
	rm -vf *.toc
	rm -vf *.idx
	rm -vf *.ilg
	rm -vf *.ind
	rm -vf *.backup
	rm -vf *~
	rm -vf *.swp
	rm -vf items/*~
	rm -vf items/*.backup
	rm -vf items/*.bak

