In the top level we design a Ripple counter made up of 4 T flipflops with negative edge triggering.
we design a asynchronous Upcounter by connecting the previous flipflop's output as the clock to the next flipflop.
Each flipflop is designed from a D flipflop by connecting the invere of the D flipflop's output as input to the Flipflop

Each D flipflop is designed using gatelevel modeling with D, clk, clear as input in the bottom level.
