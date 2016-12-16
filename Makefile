all: counter

counter: counter.v counter_tb.v
	iverilog -DSIMULATION -o design counter.v counter_tb.v

test:
	vvp -n design

wave: test
	gtkwave test.vcd
