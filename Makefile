*.snap: build
build:
	snapcraft
clean:
	snapcraft clean
	rm -fv *.snap *.tar.bz2
install: *.snap
	snap install *.snap --force-dangerous
build-release: clean
	sed "s/name: tor/name: tor-mkg20001/g" -i snap/snapcraft.yaml
	snapcraft cleanbuild
	sed "s/name: tor-mkg20001/name: tor/g" -i snap/snapcraft.yaml
