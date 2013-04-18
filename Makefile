ifeq ($(DEBUG),1)
	LESSC=lessc
else
	LESSC=lessc -x
endif

SRCLESS=$(wildcard src/*.less)
ALLCSS=$(patsubst src/%.less, %.css, $(SRCLESS))

main: main.css
all: $(ALLCSS)

stats: $(ALLCSS)
	@wc -l $^ | sort -n

main.css: $(SRCLESS)

clean:
	rm *.css

%.css: src/%.less
	$(LESSC) $< > $@
