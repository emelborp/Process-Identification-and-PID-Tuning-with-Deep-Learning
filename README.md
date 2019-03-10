# Process-Identification-and-PID-Tuning-with-Deep-Learning
A program that can do Process Identification and PID Tuning by using Deep Learning designed for people studying and researching chemical engineering.

A method of approximating a process to First Order Plus Time Delay(FOPTD) or Second Order Plus Time Delay(SOPTD) using unit step input change data and Deep Learning. In other words, by using Deep learning, the process variables like time constant, time delay and decay ratio are obtained.

Although there are many types of First or secondary processes with time delay, they are approximated in the simplest form of K/(τs+1) e^(-θs) and K/(τ^2 s^2+2ξτs+1) e^(-θs)

PID Tuning using ITAE Tuning Method and IMC Tuning Method is implemented.

Data on the First Order Plus Time Delay(FOPTD) process and data on the Second Order Plus Time Delay(SOPTD) process were obtained in large quantities from MATLAB and used as training data.
- In the First Order Plus Time Delay(FOPTD) process, the features of training data was defined as the time when the process output reached 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80%, 90% and 95% of the steady state.
- In the Second Order Plus Time Delay(SOPTD), the features of training data was defined as RiseTime, SettingTime, SettingMin, SettingMax, Overshoot, and PeakTime. These values can be obtained by using a built-in function called stepinfo in MATLAB.
  *When predicting the time delay variable of the secondary order process, add the time when the process output reaches 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80%, 90%, 95% of the steady state to the training data as First order process.
  
extra
1. There is also an algorithm for finding the optimal hyper parameters using RandomizedSearchCV.
2. You can also use the tensorboard to view Computational Graph and learning curves.

*Most artificial neural network methods were used in the tensorflow library, and most algorithms referred to algorithms from Hands-On Machine Learning with Scikit-Learn & Tensorflow.
and The tuning method used here refers to a book process identification with pid control and process dynamics and control techniques.
- , process identification with pid control, Wieley.
- seborg, melichamp, doyle, edgar, process dynamics and control techniques 4th ed. , John Wiley & Sons. (2017)

*프로그램을 만들면서 정리해본 보고서가 있습니다. 한국분들은 올려져 있는 워드파일 보시면 이해가 더 잘 되실 거 같습니다.
