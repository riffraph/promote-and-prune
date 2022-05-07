TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

check: $(TESTS:tests/%.sh=tmp/tests/%.diff)
	@echo SUCCESS

tmp/tests/%.diff: tmp/tests/%.output tests/%.expected
	@diff --side-by-side $^ > $@ || ! cat $@

tmp/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
	@mkdir -p $(dir $@)/$*
	@(cd $(dir $@)/$* && \
	  PATH=/bin:/usr/bin:$(abspath src):$(abspath tests) \
	  PS4='+ ' \
	    /bin/sh $(abspath $<) > $(abspath $@) 2>&1) || ! cat $@

clean:
	rm -rf tmp/

.PHONY: all clean
.PRECIOUS: tmp/tests/%.output
.DELETE_ON_ERROR: