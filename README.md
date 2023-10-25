

# Sequence Detection using Moore Finite State Machine (FSM)

## Introduction

This Python code example demonstrates sequence detection using a Moore Finite State Machine (FSM). A Moore FSM is a mathematical model commonly used in digital circuit design and sequential logic to detect specific sequences of inputs and produce corresponding outputs.

In this example, we will use a simple FSM to detect the sequence "1010" in a given input stream of binary values (0 or 1). The FSM will transition between states based on the input values and generate outputs. When the desired sequence is detected, the FSM will indicate its successful detection.

## Prerequisites

Before using this code example, make sure you have the following prerequisites:

- A basic understanding of Finite State Machines (FSMs) and their operation.
- Python installed on your system.
- A text editor or integrated development environment (IDE) for running Python scripts.

## Usage


1. Download or clone this repository to your local machine.

2. Open the `moore_fsm_sequence_detection.py` file in your preferred text editor or IDE.

3. Review and customize the FSM implementation according to your sequence detection requirements. You can modify the states, inputs, outputs, and transition rules in the `MooreFSM` class to match your specific use case.

4. Save your changes.

5. Run the Python script to simulate the FSM and detect sequences. You can execute the script using the following command:

   ```bash
   python moore_fsm_sequence_detection.py
   ```


# Implementation Details

The Moore FSM implementation consists of the following components:

1. FiniteStateMachine class: This class defines the FSM's structure, states, and transitions. It also contains methods for processing input data and detecting the target sequence.

2. State class: This class represents a state in the FSM. It has attributes for the state name and the output signal associated with that state.

3. main.py: This is the entry point for the program. It allows you to specify the target sequence and run the FSM simulation.

# SYNTHESIS TO GDS FLOW:
      step1:
      iverilog Sequence_Detector_MOORE.v tb_Sequence_Detector_Moore_FSM.v -o output_fsm.out
      step2:
      ./output_fsm.out
      

![Screenshot from 2023-10-15 15-55-30](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/84c1b337-621c-41ca-9cec-633f24ecde0d)


# SYNTHESIS USING YOSYS

![Screenshot from 2023-10-15 15-59-05](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/8038c897-29a6-4eba-9a90-aa3be1f3e385)



![Screenshot from 2023-10-15 16-01-45](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/a0c746d5-1d51-4567-b35a-e5fce4dc2d96)


# NETLIST

![Screenshot from 2023-10-15 15-10-16](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/2be2da4c-5f4f-4455-93cb-40cf751256e7)




![Screenshot from 2023-10-15 15-10-36](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/b8c668fd-8841-4948-a83e-0007719ecba9)


