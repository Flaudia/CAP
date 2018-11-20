#!/usr/bin/env python
# coding: utf-8
import os
from os.path import isfile, join, dirname, exists, realpath, normpath, isdir

local_path = dirname(realpath(__file__))

command = local_path + "/madagascar_solver.py"
		
os.system(command)

command = local_path + "/probe_solver.py"
		
os.system(command)

command = local_path + "/clingo_solver.py"
		
os.system(command)
