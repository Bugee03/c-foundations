# Lesson 01 — Stack and ISR

## Goal
Understand stack growth, local variable addresses,
recursion behavior and ISR design rules.

##
1. func(10) - proccessor - stack or reg - saving Addr and return - cr mem for local variable - cleaning stack - return
2. stack growns downwards
3. stack overflow !!! a) overwrite mem
                      b) damage registors
                      c) kill the program
                      MCU has not protect!

4. underfined behavior - you are reffering to random ADDR MCU: a)overwrite registors
                                                               b)dammage stack
                                                               c)Hardfault calling! 
                                                               MCU will just hang!

## Files
- main.c — stack demonstration example
- README.md — theoretical explanation

## Build

gcc -O0 main.c -o stack_demo
./stack_demo

