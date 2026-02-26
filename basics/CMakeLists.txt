cmake_minimum_required(VERSION 3.28)
project(docNvim C)

set(CMAKE_C_STANDARD 11)

add_executable(docNvim
        lesson1/main.c
        lesson2/main.c
        lesson3Math/math.c
        lesson4_circleference/circle.c
        lesson4_circleference/hipotenuse.c
        lesson5_Switch/main.c
        lesson5_Switch/temp.c
        lesson6_function/main.c
        lesson7_stringFunc/main.c)
