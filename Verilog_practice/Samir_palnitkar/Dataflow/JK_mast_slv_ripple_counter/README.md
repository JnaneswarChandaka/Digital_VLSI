A master-slave flip-flop is a sequential digital circuit formed by connecting two latches—a master and a slave—in series to eliminate the race-around condition and ensure stable, predictable output transitions. 

A JK flip flop is a type of 1-bit memory element having inputs namely J and K, one clock input, and two output specified by Q and Q'. The JK flip flop is an improved version of SR flip flop which does not have forbidden state. To avoid the forbidden or indeterminate state, the outputs of the JK flip flop are fed back to its inputs.

However, due to these feedback paths, a new problem is raised in the circuit, which is called race around condition. Race around condition in the JK flip is a major problem in which the outputs of flip flop are toggled continuously till the end of applied clock signal.

To avoid the problem of race around condition in JK flip flop, we use the JK flip flop in the Master and Slave Mode. Hence, the JK flip flop is called Master-Slave Flip Flop.


<img width="529" height="214" alt="sequential-seq14" src="https://github.com/user-attachments/assets/37abb8a8-d754-4f19-8936-defe8c213417" />



In this combination of two JK flip flop, one acts as a master flip flop and the other acts as a slave flip flop. In this master-slave flip flop, the outputs of the master JK flip flop are connected to the inputs of the slave JK flip flop. The outputs of the slave flip flop are fed back to the inputs of the master JK flip flop.

In the master-slave JK flip flop, a NOT gate (Inverter) is also used which is connected to clock signal in a manner that the inverted clock signal is applied to the slave flip flop.

Therefore, when clock signal to master flip flop is 0, then for slave flip flop the clock signal is 1, and if the clock signal to master flip flop is 1, then for the slave flip flop it 0.
