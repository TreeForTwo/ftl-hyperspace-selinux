FTLhyperspace.pp: FTLhyperspace.mod
semodule_package -o FTLhyperspace.pp -m FTLhyperspace.mod

FTLhyperspace.mod: FTLhyperspace.te
checkmodule -M -m -o FTLhyperspace.mod FTLhyperspace.te

install: FTLhyperspace.pp
sudo semodule -X 300 -i FTLhyperspace.pp

uninstall:
sudo semodule -X 300 -r FTLhyperspace

clean:
rm FTLhyperspace.pp FTLhyperspace.mod

.PHONY: clean install uninstall
