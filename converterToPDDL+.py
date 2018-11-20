#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir
import random
from random import randint

local_path = dirname(realpath(__file__))

rootdir = local_path + '/PDDL/problems'

joints_numbers_list = [3,4,5,6,7,8,10,12,15] 

def joints_counter(joints_number):
	count = []
	for x in range (1,1+joints_number):
		count.append(x)
	return count

def write_problem_file(data_file_name, joints_number):	
	data_file = open(data_file_name,"w")

	data_file.write("define (problem example)\n")
	data_file.write("(:domain paco3d)\n")
	data_file.write("(:objects ")
	
	for x in range (1, 1+joints_number):
		data_file.write("L"+str(x)+" ")

	data_file.write("\nxyaxes ZAXES - axis\n)\n")
	data_file.write("(:init\n")
	data_file.write("\n")		
	
	data_file.write("(vertical ZAXES)\n")
	data_file.write("\n")
	

	data_file.write("(= (speed-i) 10)\n")
	data_file.write("(= (speed-d) 10)\n")
#	data_file.write("((= (speed-g) 1)\n")
	for x in range (1, 1+joints_number):
		data_file.write("((= (speed-g L" + str(x)+") 0.1)\n")	
	
	data_file.write("\n")

	for x in range (1, 1+joints_number):
		data_file.write("(= (angle L"+str(x)+" xyaxes) "+str(round(random.uniform(0,360), 1)) +")\n")
		data_file.write("(= (angle L"+str(x)+" ZAXES) "+str(round(random.uniform(0,360), 1)) +")\n")

	data_file.write("\n")

	for x in range (1, 1+joints_number):
		data_file.write("(freeToMove L"+str(x)+") \n")

	data_file.write("\n")

	for x in range (1, 1+joints_number):
		data_file.write("(connected L"+str(x)+" L"+str(x+1)+" )\n")

	data_file.write("\n")

	for x in range (1, 1+joints_number):
		data_file.write("(fake L"+str(x)+")\n")

	data_file.write("\n")

	for x in range (2, 1+joints_number):
		for k in range (x+1, 1+joints_number):
			data_file.write("(affects L"+str(x)+" L"+str(k)+" )\n")

	data_file.write(")\n\n")

	data_file.write("(:goal (and\n")	
 
	for x in range (1, 1+joints_number):
		ax = round(random.uniform(0,360), 1)
		data_file.write("(> (angle L"+str(x)+" xyaxes) "+ str(ax) +")\n")
		az = round(random.uniform(0,360), 1)
		data_file.write("(> (angle L"+str(x)+" ZAXES) "+ str(az) +")\n")

	J = joints_counter(joints_number)
	lenJ = len(J)
	for k in range(randint(1,joints_number),joints_number):
		aax = round(random.uniform(ax,360), 1) 
		j = J[randint(0,lenJ-1)]
		data_file.write("(< (angle L"+str(j)+" xyaxes) "+ str(aax) +")\n")	
		J.remove(j)
		lenJ = lenJ -1

	data_file.write("\n")
	data_file.write(") )\n)\n")	
	data_file.close()	


for q in range(1,len(joints_numbers_list)):
	for p in range(1,6):
		folder_name = "Problems_"+str(joints_numbers_list[q])
		data_name = "P"+str(joints_numbers_list[q])+"_i"+str(p)
		directory_path = local_path + "/PDDL+/Generated_Problems/improved/MCUA/g01/"+folder_name
		print directory_path
	
		if not os.path.exists(directory_path):
			os.makedirs(directory_path)
	
		write_problem_file(directory_path+"/"+data_name,joints_numbers_list[q])
		

