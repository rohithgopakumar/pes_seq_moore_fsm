

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

# COURSE CONTENT

</details>
<details>
<summary>PART 1: SYNTHESIS TO GDS FLOW </summary>
<br>



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


</details>
<details>
<summary>PART 2: PHYSICAL DESIGN </summary>
<br>

# Getting Started With OpenLane:

## Table of Contents

1) [Introduction](#introduction)
2) [Prerequisites](#prerequisites)
3) [Installation](#installation)
4) [Usage](#usage)

## 1)Introduction

Provide a brief introduction to your project here. Explain what it does and why it's useful.



### 2)Prerequisites

Before you begin, ensure you have met the following requirements:

- **Linux Operating System**: Your project works on Linux. You can specify the required distribution if necessary.

- **Docker**: Docker is used for managing dependencies and isolating the environment.

Replace with additional prerequisites, if any.

### 3)Installation

Use this section to describe how to install your project. You can provide step-by-step instructions or scripts here. For example:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/your-project.git
   cd your-project
   ```

2. Set up the environment by pulling the Docker container:
   ```bash
   make build
   ```

3. Build the OpenLane tools:

   ```bash
   make openlane
   ```

4. Source the environment:

   ```bash
   source sourceme.sh
   ```

## 4)Usage

To run OpenLane, navigate to your project directory and use the provided run script:

   ```bash
      cd path/to/your/project
      run_designs
   ```
You can find more detailed usage instructions in the OpenLane documentation.

# Key Considerations

### 1. Functional Block Placement

Deciding where to place different functional blocks is crucial. Blocks that frequently exchange data should be positioned close to each other to minimize signal delays, while those with less interaction can be placed farther apart.

### 2. Power Distribution

Efficient power distribution networks are vital to ensure that all components receive a stable power supply. Careful consideration of power grid topology, voltage domains, and decoupling capacitors is necessary.

### 3. Signal Routing

Planning the routing of signals between blocks and components is critical for minimizing signal congestion, reducing wirelength, and maintaining signal integrity.

### 4. Clock Distribution

Designing a robust clock distribution network is essential for synchronizing operations across the chip. This involves determining clock sources, clock domains, and minimizing clock skew.

### 5. Thermal Management

Heat dissipation is a significant concern in chip design. Proper floor planning should include provisions for thermal management, such as placing power-hungry blocks away from critical areas and incorporating heat sinks.

### 6. Manufacturing Constraints

Compliance with manufacturing constraints, such as minimum feature size and design rule checks (DRC), is crucial to ensure that the chip can be fabricated successfully.

### 7. EDA Tools

Utilize Electronic Design Automation (EDA) tools for floor planning tasks. These tools assist in placement, routing, and verification processes, streamlining the design workflow.

## Table of Contents

1) [Preparation of the Design](#Preparation-of-the-Design)
2) [Running synthesis](#Running-synthesis)
3) [Running floorplan](#Running-floorplan)
4) [Running placement and cts](#Running-placement-and-cts)
5) [Running routing](#Running-routing)
6) [Running magic](#Running-magic)
7) [Running magic spice export](#Running-magic-spice-export)
8) [Running magic drc](#Running-magic-drc)
9) [Running lvs](#Running-lvs)
10) [Running antenna check](Running-antenna-check)



### 1) Preparation of the Design:
To get started with the Design preperation, follow these steps:

```bash
docker
./flow.tcl -interactive
require package openlane
prep -design <design_name>
```


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/032c2e25-13c5-4568-af36-aeb4e7e3c356)


we will get a meesage that says preperation complete which means the design file is ready to undergo synthesis.




### 2)Running synthesis:

In OpneLane use this commmand to run synthesis:
```bash
run_synthesis
```

this will run the synthesis 

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/5d014a06-9c44-4dad-9538-fa615bbf7f62)


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/b299d78c-8b82-469d-b670-cbd8a380f4ba)

If we get this prompt then we can conclude that the synthesis step has been completed 


### 3)Running floorplan:
use command 
```bash
run_floorplan
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/1adc80ec-383b-4163-aeb5-509d37ee111e)


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/75d7274e-3797-40d7-85e9-6265e523de07)

we can use the magic command to view the layout design 
```bash
magic -T /home/rohithgopakumar/Downloads/sky130A.tech lef read ../../tmp/merged.nom.lef def read seq_det_moore_fsm.def &
```
this will use the magic tool to view the layout

### 4)Running placement and CTS:
use this commands to run placement and cts:
```bash
run_placement
run_cts
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/f4919e3e-7894-4c05-ab33-ad065e6c4319)


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/f8d656f3-1153-4de4-a11e-8dba83b14d25)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/33ebd70c-2002-4043-84a7-188f3df01359)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/a6d17d87-44e3-4c4a-84ff-105e1c3a9f9d)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/47d3fc88-8535-403e-8000-7c0b2285b5a6)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/18d07585-90f3-478d-ae64-684a10855c72)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/dd421e00-d715-41aa-9cec-1864607d5fe7)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/2056455d-8083-414b-81c0-14d2b516de58)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/2e837d3c-546c-44a0-b723-0399bcd69feb)

### 5)Running routing:
use this command to run routing:
```bash
run_routing
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/d716ed6e-0121-4d5d-a810-21b3fbdc4c30)
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/c8d97693-4cb1-41d5-85f5-bde9325756d7)

)

we can see here the area of the die is a bit too much so we reduce it one by one 


i) case 1: die area=[0 0 100 100]

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/76872250-88cd-4ad5-941b-f542088141aa)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/9e0a04cd-5dff-4636-aac2-6295d5a06550)

ii case 2: die area=[0 0 75 75]

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/43b8a544-e22d-455d-addb-c9d49f93fb6d)


iii) case 3: die area=[0 0 60 60]


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/d2a1fc8a-7adb-4d21-9f4e-31f6e17b6553)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/8f5a0764-0c07-4062-b4f4-27c198a99273)


### 6)Run_magic
use the command in openlane
```bash
run_magic
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/12ddb613-0f96-44a2-b5a4-1b210c8ccd13)


### 7)Run_magic_spice_export

use the command in openlane
```bash
run_magic_spice_export
```


![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/31770b9d-e112-4942-9e5b-eb7cb4a12fde)


### 8)run_magic_drc


use the command in openlane 

```bash
run_magic_drc
```

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/07d4f474-f81d-453b-b255-c1dc0dc6114f)


### 9)run_lvs

use the command in openlane 

```bash
run_lvs
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/e90f05b1-9145-42ef-acb9-c8360658dccf)



### 10)run_antenna_check

use the command in openlane 

```bash
run_antenna_check
```
![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/3ec9cb63-89ed-4f28-b07a-02206a7ce79b)




### FINAL DESIGN AND STATISTICS: 
##DESIGN:

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/7dd61a08-c00d-4a43-baa4-6239d7c080ae)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/85eb2585-9dfa-44e0-b8da-a67530c66258)

![Uploading image.png…]()

#STATISTICS:

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/260308b0-5522-4ec1-8acf-b35becf3d9e7)

![image](https://github.com/rohithgopakumar/pes_seq_moore_fsm/assets/131611312/b3f74f67-8847-4fe1-9787-0dbfce0c00af)





