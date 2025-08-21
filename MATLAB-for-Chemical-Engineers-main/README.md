# Numerical Methods in MATLAB for Chemical Engineering  

## 📌 Overview  
This repository contains MATLAB implementations of various numerical methods commonly used in **chemical engineering computations**. The project is based on the **Computational Tools for Chemical Engineers (CHC204)** course and includes methods for **root-finding, interpolation, regression, non-linear and differential equations, and matrix operations**.


## 📂 Repository Structure  
- **README.md** → Project documentation  
- **src/** → MATLAB scripts (`.m` files) for numerical methods  
- **LICENSE** → License details  
- **.gitignore** → Files to be ignored by Git  

## 🚀 Getting Started  
### Prerequisites  
- MATLAB (R2021a or later recommended)  
- Basic understanding of numerical methods  

### Installation  
1. Clone the repository:  
   ```bash
   git clone https://github.com/Sans14o4/MATLAB-for-Chemical-Engineers.git
2. Open MATLAB and navigate to the cloned folder.
3. Run any script from the src/ directory to test a numerical method.

## 📖 Numerical Methods Covered  

### 🔹 Root-Finding Methods  
- **Newton-Raphson Method** ([Code](src/newton_raphson.m))  
- **Quasi-Newton-Raphson Method** ([Code](src/quasi_newton.m))  
- **Secant Method** ([Code](src/secant.m))  
- **Regula Falsi (False-Position) Method** ([Code](src/regula_falsi.m))  

### 🔹 Linear Algebra & Matrix Operations  
- **Gauss Elimination** ([Code](src/gauss_elimination.m))  
- **Matrix Operations-I (Addition, Inversion)** ([Code](src/matrix_operations.m))
- **Matrix Operations-II (Multiplication)** ([Code](src/matrix_operations2.m))  

### 🔹 Non-Linear Algebraic Equations
- **Trust-region/levenberg-marquardt** ([Code](src/trust_region.m))

### 🔹 Interpolation & Regression  
- **Least Squares Regression** ([Code](src/least_squares.m))  
- **Spline Interpolation** ([Code](src/spline_interp.m))  

### 🔹 Differential Equations   
- **Runge-Kutta Method(RK2)** ([Code](src/runge_kutta2.m))
- **Runge-Kutta Method(RK4)** ([Code](src/runge_kutta4.m))  
  

## 📊 Case Studies & Applications  

This project includes **chemical engineering case studies** where these numerical methods are applied:  
- **Root-finding in phase equilibrium calculations**  
- **Regression for chemical reaction rate modeling**  
- **Interpolation in process optimization**  
- **Differential equations in reaction kinetics**  

## 🔗 Resources & References  

- **Textbook:** Steven C. Chapra, Raymond P. Canale, *Numerical Methods for Engineers*, McGraw-Hill  
- **MATLAB Documentation:** [MathWorks Official Docs](https://www.mathworks.com/help/matlab/)  
- **Chemical Engineering Applications:** IIT (ISM) Dhanbad Course Materials  

## 👥 Contributing  

Contributions are welcome! If you’d like to improve the codes or add more methods, follow these steps:  

1. **Fork** the repository  
2. **Create a new branch** (`feature-new-method`)  
3. **Commit your changes** and push to GitHub  
4. **Open a Pull Request**  

## 📜 License
This project is licensed under the MIT License - see the LICENSE file for details.

## ⭐ Acknowledgments
Special thanks to IIT (ISM) Dhanbad and faculty members for providing insights into numerical methods for chemical engineering.
