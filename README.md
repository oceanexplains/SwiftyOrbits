# SwiftyOrbits

This is a simulation of the orbits of the planets in the solar system. This project is intended to help me better understand the mechanics of orbital motion and to provide a fun and educational tool for exploring the solar system. I am hoping to expand it to include support for features such as Hohmann transfers calculations and simulations, live planetary data, and the ability to see the planets for a given date and time.

## Installation

To install and run this simulation, follow these steps:

Clone this repository to your local machine.
Install Xcode and open the project in Xcode.
Build and run the project in the Xcode simulator.

If you copy and paste the models and views into a Swift Playground App you can also just run it that way, which might be easier for you if you don't have a mac (VSCode playground) or are working on an iPad.

## Usage

To use the simulation, follow these steps:

Open the simulation in the Xcode simulator.
Use the sliders to adjust the date and time of the simulation.
Use the buttons to view the orbits of the planets or to calculate Hohmann transfers.
Use the information panel to view live data on the planets, such as their position and velocity.

## Code Structure

The code for this project is organized into several components:

**Planet:** This struct represents a planet and its orbital parameters.
**Orbit:** This struct represents an orbit and provides methods for calculating the position of an object in the orbit at a given time.
**PlanetView:** This view represents a planet in the simulation.
**SunView:** This view represents the sun in the simulation.
**OrbitPathView:** This view represents the orbit path of a planet in the simulation.
**ContentView:** This view represents the main content view of the simulation.


### Aligning the orbits

The foci of the elliptical orbits are not perfectly centered on the sun after making certain unpredictable edits. I am actively working on a solution to ensure that the foci of all orbits are consistently and accurately aligned with the sun, regardless of any changes made to the code or simulation parameters.

### Hook up to Real Data

Right now I am using real orbital elements for each of the planets, but their starting positions are not realized from an actual ephemeris. This is next up on the list.


## License

This project is released under the GPL License. See LICENSE for more information.



