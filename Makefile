ifeq ($(DEBUG),1)
	LESSC=lessc
else
	LESSC=lessc -x
endif

all: main.css

main.css: $(wildcard src/*.less)

%.css: src/%.less
	$(LESSC) $< > $@