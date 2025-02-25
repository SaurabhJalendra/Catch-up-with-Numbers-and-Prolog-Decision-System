# Artificial and Computational Intelligence Projects

## Project 1: Catch-Up with Numbers

### Description
A Python-based game utilizing the Min-Max algorithm and Alpha-Beta pruning to provide an intelligent gaming experience. Players take turns selecting numbers, and the game aims to maximize the player's score while minimizing the opponent's score.

### Features
- Configurable game difficulty (n value)
- Alpha-Beta pruning toggle
- Console interface with state visualization
- Intelligent AI opponent

### Technical Implementations
- Python class `CatchUpGame` manages game state
- Min-Max algorithm with depth-limited search
- Alpha-Beta pruning optimization

### How to Use
1. Run the Jupyter notebook or Python script.
2. Enter the highest number (n) to play with.
3. Choose whether to enable Alpha-Beta pruning.
4. Take turns with the AI, selecting numbers when prompted.

## Project 2: Water Resource Optimization System

### Description
A Prolog-based expert system utilizing decision trees to determine optimal water sources based on various environmental factors. This project aims to provide an intelligent solution for water resource management.

### Decision Logic Highlights
- Lake distance <10km → lake
- River distance <8km with rainfall <200mm → river
- Rainfall >150mm → rain
- Sandy aquifer analysis for groundwater

### Technical Implementations
- Prolog rule-based decision system
- Interactive CLI for data input
- Environmental factor analysis:
  - Distance matrices
  - Rainfall thresholds
  - Geological features

## Requirements
### Python Environment (for Project 1)
- Python 3.x
- Required libraries: 
  ```bash
  pip install -r requirements.txt
  ```

### Prolog Environment (for Project 2)
- SWI-Prolog ≥8.0
- No additional packages required

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/saurabhjalendra/Catch-up-with-Numbers-and-Prolog-Decision-System.git
   ```
2. Install Python dependencies for Project 1:
   ```bash
   pip install -r requirements.txt
   ```

## Contributing
We welcome contributions! Please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request with a clear description of your changes.

## Contact Information
- **Reddy Balaji .C**: 2023ac05862@wilp.bits-pilani.ac.in
- **Saurabh Jalendra**: 2023ac05912@wilp.bits-pilani.ac.in
- **Tushar Shandilya**: 2023ac05573@wilp.bits-pilani.ac.in
- **Bandana Kumari**: 2023ac05879@wilp.bits-pilani.ac.in
- **Monica Malik**: 2023ac05875@wilp.bits-pilani.ac.in

## Acknowledgments
- Thanks to all contributors and resources that helped in the development of this project.
