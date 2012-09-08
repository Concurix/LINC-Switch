.PHONY: all compile rel test clean deep-clean

all: compile

compile: rebar
	./rebar get-deps compile

rel: compile
	./rebar generate -f
	./scripts/post_generate_hook

test: compile
	./rebar skip_deps=true eunit

clean: rebar
	./rebar clean

deep-clean: clean
	./rebar delete-deps

rebar:
	wget -q http://cloud.github.com/downloads/basho/rebar/rebar
	chmod u+x rebar

setup_dialyzer:
	dialyzer --build_plt --apps erts kernel stdlib mnesia compiler syntax_tools runtime_tools crypto tools inets ssl webtool public_key observer
	dialyzer --add_to_plt deps/*/ebin

dialyzer: compile
	dialyzer apps/*/ebin

doc:
	./rebar skip_deps=true doc

purity:	compile
	if [ ! -d purity ]; then mkdir purity; fi
	purity -v -m -l 2 -s purity/stats -o purity/results --top-funs purity/top_functions --apps apps/of_switch/ebin deps/*/ebin
