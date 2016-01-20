default: build

build:
	python3 now/render.py `cat build_target`

install:
	mkdir -p ${DESTDIR}/usr/bin
	cp bin/now ${DESTDIR}/usr/bin/now

clean:
	rm -rf bin
