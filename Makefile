all: build
	vvp my_design

build:
	iverilog -o my_design counter_tb.v counter.v
