# TrainGuard: Empowering Ticket Collectors with Smart Passenger Monitoring


## Team Details
<details>
<summary>details</summary>
    
> *  Semester: 3rd Sem B. Tech. CSE
> * Section: S1

* 221CS137, Md. Faisal Raza, mohammadfaisalraza.221cs137@nitk.edu.in, 6307707818
* 221CS128, Harsh Gupta, harsh.221cs128@nitk.edu.in, 9555468659
* 221CS141, Rahul, rahul.221cs141@nitk.edu.in, 9468121389
</details>

## Abstract: 
<details>
<summary>details</summary>

<h2>Idea</h2> To make a digital system which counts passenger entered in 
trains and warn us if no of passengers are over limit.
   
 
<h3>Components Required:
</h3>
1.Microcontroller (e.g., Arduino Uno)
2.Push Buttons (for manual input)
3.LED Display Module (e.g., 7-segment display)
4.Resistors (for pull-up/pull-down)
<h2>Circuit Connections:-</h2>
Here's how to connect the components on the 
breadboard:
Connect the common cathode of the 7-segment display 
to Arduino's ground (GND).
Connect the eight segments (a, b, c, d, e, f, g, dp) of the 
7-segment display to digital pins on the Arduino (e.g., pins 
4 to 11). Use current-limiting resistors (220-330 ohms) for 
each segment.
Connect the two push buttons to digital pins on the 
Arduino (e.g., pins 2 and 3). Use pull-down resistors (10k 
ohms) to connect one side of each button to ground.
Connect the other side of each push button to a separate 
digital pin on the Arduino.
Connect both common cathodes of the 7-segment 
display to separate digital pins on the Arduino (e.g., pins 
12 and 13).
Connect the 7-segment display to a 5V power source 
(VCC) and ground (GND).
<h2>DESCRIPTION:</h2>
The Train Passenger Counter project aims to address the 
critical issue of monitoring and managing passenger 
occupancy in train compartments for the safety and comfort 
of commuters. With the ever-growing demand for public 
transportation, it has become imperative to ensure that trains 
do not exceed their designated passenger limits, as 
overcrowding can lead to safety hazards and discomfort for 
passengers. This project proposes a comprehensive solution 
that leverages modern technology to achieve efficient 
passenger counting and provide timely warnings if the 
passenger count exceeds safe limits.
The project's primary objective is to introduce a reliable 
counting mechanism that not only enhances passenger safety 
but also facilitates the compliance with occupancy
regulations within the public transportation system. This 
innovative approach benefits both passengers and train 
operators, contributing to a more secure and enjoyable travel 
experience for all.
The key components required for this project include a 
microcontroller (such as Arduino Uno), push buttons for 
manual input, a 7-segment LED display module, and resistors 
for pull-up/pull-down operations. The circuit connections 
involve connecting the 7-segment display to the 
microcontroller, configuring push buttons, and setting up the 
common cathodes, allowing the system to accurately count 
passengers.
In operation, passengers can manually input their entry or 
exit into the train compartment using the push buttons. The 
7-segment display provides a real-time count of the number 
of passengers in the compartment. If the passenger count 
exceeds a predefined limit, the system triggers a warning, 
indicating that the occupancy threshold is approaching or has 
been breached. This proactive approach ensures the safety of 
passengers and assists train operators in making informed 
decisions regarding compartment occupancy.
The Train Passenger Counter project represents a valuable 
addition to the realm of public transportation, making travel 
safer and more convenient for passengers while aiding train 
operators in managing their services efficiently. It 
demonstrates the power of technology in addressing realworld challenges and emphasizes the importance of 
innovation in modern transportation systems.
</details>

## Working:
<details>
<summary>details</summary>
The Train Passenger Counter project functions by employing a 
microcontroller, such as an Arduino Uno, to efficiently 
monitor and manage passenger occupancy within train 
compartments. Here's a simplified explanation of its working:
1. **Initialization**: The system initializes when passengers 
board the train. The 7-segment LED display starts at zero, 
indicating an empty compartment.
2. **Manual Input**: Passengers interact with the system by 
using push buttons to signify their entry or exit from the 
compartment. When someone boards the train, they press 
the "entry" button, and when they disembark, they press the 
"exit" button.
3. **Counting Mechanism**: The microcontroller processes 
these inputs and adjusts the passenger count accordingly. For 
each entry, the count increases, and for each exit, it 
decreases.
4. **Real-time Display**: The updated passenger count is 
displayed on the 7-segment LED display in real-time, allowing 
passengers and train staff to keep track of the compartment's 
occupancy.
5. **Warning System**: The system continuously checks the 
passenger count against a predefined limit. If the count 
exceeds this limit, it triggers a warning, typically using visual 
or audible signals. This serves as an alert to both passengers 
and train operators that the compartment is nearing its safe 
occupancy limit.
6. **Safety and Efficiency**: By proactively monitoring 
passenger counts and providing warnings, the project 
ensures the safety and comfort of passengers, preventing 
overcrowding, and assisting train operators in maintaining 
compliance with occupancy regulations.
In summary, the Train Passenger Counter system is a 
responsive and efficient solution that combines technology 
with manual input to monitor and manage passenger counts 
in real-time, prioritizing passenger safety and travel 
convenience within train compartments.

<h1>Functional Table</h1>
<br>
<table>
    <tr>
        <th>Previous Count</th>
        <th>Passenger Enter (1) or Exit (0)</th>
        <th>Current Count</th>
        <th>Passenger Limit</th>
        <th>Safe (1) or Unsafe (0)</th>
    </tr>
    <tr>
        <td>0000</td>
        <td>1</td>
        <td>0001</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0001</td>
        <td>1</td>
        <td>0010</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0010</td>
        <td>1</td>
        <td>0011</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0011</td>
        <td>1</td>
        <td>0100</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0100</td>
        <td>1</td>
        <td>0101</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0101</td>
        <td>1</td>
        <td>0110</td>
        <td>0101</td>
        <td>0</td>
    </tr>
    <tr>
        <td>0110</td>
        <td>0</td>
        <td>0101</td>
        <td>0101</td>
        <td>1</td>
    </tr>
    <tr>
        <td>0101</td>
        <td>1</td>
        <td>0110</td>
        <td>0101</td>
        <td>0</td>
    </tr>
    <tr>
        <td>0110</td>
       <td>0</td>
        <td>0101</td>
        <td>0101</td>
        <td>1</td>
    </tr>
</table>

### Flow Chart

<details>
<summary>Flow Chart</summary>

![image](https://github.com/harsh232gupta/DDS-Mini-Project--TrainGuard/blob/master/Images/project.jpg)


</details>
</details>

## Logisim Circuit Diagram
<details>
<summary>details</summary>
    
![image](https://github.com/harsh232gupta/DDS-Mini-Project--TrainGuard/blob/master/Images/Screenshot%202023-11-06%20221331.png)
</details>

## Verilog Code
<details>
    <summary>
        details
    </summary>


<details>
<summary>Verilog</summary>

    

```
module up_counter(
input wire clk, // Clock input
input wire rst, // Reset input
output reg [3:0] count // 4-bit counter output
);
always @(posedge clk or posedge rst) begin
if (rst) begin
count <= 4'b0000; // Reset the count to 0 when the reset signal is 
active
end else begin
count <= count + 1; // Increment the count on each rising clock edge
end
end
endmodule
```

</details>


<details>
<summary>Test Bench</summary>

````
module up_counter_tb;
reg clk; // Clock signal
reg rst; // Reset signal
wire [3:0] count; // Counter output
// Instantiate the up_counter module
up_counter counter(
.clk(clk),
.rst(rst),
.count(count)
);
initial begin
// Initialize signals
clk = 0;
rst = 0;
// Reset the counter
rst = 1;
#5 rst = 0;
// Simulate clock and observe counter values
$display("Time\tCount");
$monitor("%d\t%d", $time, count);
// Generate clock signal (oscillate between 0 and 1)
repeat(4) begin
#5 clk = ~clk;
end
end
endmodule


````

</details>



</details>
       
