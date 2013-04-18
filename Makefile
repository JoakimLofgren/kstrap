ifeq ($(DEBUG),1)
	LESSC=lessc
else
	LESSC=lessc -x
endif

all: main.css

%.css: src/%.less
	$(LESSC) $< > $@