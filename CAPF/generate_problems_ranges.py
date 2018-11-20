#!/usr/bin/env python

import os

resolutions = [ 36, 18, 12, 9, 8, 6, 4, 2]

joint_number = 15

sample_number = 10

for joint_number in range(3, joint_number):
	for resolution in resolutions:
		command = "./generate_problems.py "+str(joint_number)+" "+str(sample_number)+" -n -r "+str(resolution)
		os.system(command)
		
