# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Ashley Johnson and Jared Lackerman 

## Summary
We created the D-Latch where the outupt changes only when enable is high, otherwise it hold its state. Then we created a simple 4 bit memeory by instantiating multiple 8-bit D-Latch blocks. We used the demultiplexers to route the input data and store the signals to the correct byte and multiplexers to select which byte's data appears on LEDs. After that we connected it to the Basys 3 board to make sure everything is working correctly. 
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verlog forms combinational loops for latches, which simulators handle but the synthesis tools like Vivado reject because they cause unstable, undefined hardware. Behavioral Verilog with 'always' blocks and 'reg' signals clearly defines storage and timing, allowing synthesis tools to implement the latches correctly.
### What is the meaning of always @(*) in a sensitivity block?
The always @(*) block is a sensitivity list that tells the simulator and synthesis tools to re-evaluate the block whenever any signal used inside the block changes. It's used for describing combinational logic, ensuring the outputs update immediately and correctly whenever the input changes, without needing to list every input signal explicitly.
### What importance is memory to digital circuits?
Memory is essential to digital circuits because it allows values to remain over time rather than changing instantly with inputs. This allows storing states or data for later use, synchronizing operations to specific events or clock signals, building complex devices like CPUs that require sequential steps and data retention. Without memeory elements like latches, circuits circuits could only perform immediate, combinational logic and couldn't maintain information across time.