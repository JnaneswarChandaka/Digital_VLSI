# PRIORITY ENCODER

The Priority Encoder is a combinational logic circuit that produces an equivalent binary code at its output pins, unique to each combination state of its inputs. As discussed in previous articles, an encoder produces a unique binary code that is related to a specific input combination, and the inputs handled by an encoder are given by 2n. The binary code then can be processed through a Decoder to obtain the original input combination. The Priority Encoder works in a similar way and produces a binary code but with the highest priority.

In case of an ordinary encoder, one and only one decimal input can be activated at any given time. But in the case of some practical digital systems, two or more decimal inputs can unintentionally become active at the same time that might cause a confusion. For example, on a keyboard, a user presses key 4 before releasing another key 2. In such a situation, the output will be corresponding to (6)10, instead of being (4)10 or (2)10. This kind of problems can be solved with the help of priority encoder.


<img width="552" height="362" alt="images" src="https://github.com/user-attachments/assets/87a50968-a5ff-42c6-a0b8-04fe0648ff77" />








