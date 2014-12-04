#!/usr/bin/env python
# -*- coding: utf-8 -*-

import abc

from subprocess import Popen, PIPE

from os import mkdir
from os.path import abspath

class Benchmark(object):
    __metaclass__ = abc.ABCMeta
    
    def __init__(self, config):
        self.config = config
        self.data = {} 

    def run_benchmark(self):
        for grid_size in range(int(self.config['min_sm']), int(self.config['max_sm']) + 1):
            try:
                mkdir(abspath(self.config['output_dir']))
            except: 
                pass

            for n_threads in range(int(self.config['min_threads']), int(self.config['max_threads']) + 1, 8): # step of 8 for the simulator  
                if self.config['verbose'] == "1": 
                    print "    "+unichr(9500)+unichr(9472)+" %i threads, %i SMs" % (n_threads, grid_size)

                process = Popen([self.config['binary'],
                                 str(n_threads),
                                 str(int(self.config['number_of_operations'])/int(self.config['unroll_factor'])),
                                 str(grid_size)], stdout=PIPE, stderr=PIPE)

                (c_out, c_err) = process.communicate()
	       		 
                t_times = []        
                # we create the table of tuple from stderr
                # it's better to iterate on items directly than iterating over
                # indice and getting elements in list from index
		print c_err
		for el in c_err.split(" \n"):
		    t_times.append(el.split())
               	 
                self.collect_data(t_times, grid_size, n_threads)
	self.write_data()
                
    @abc.abstractmethod
    def collect_data(self, data, grid_size, n_threads):
        """Method that defines what and how data are collected.
           It MUST return a dictionary filepath:[values to write]"""


    def write_data(self):
        for filename in self.data.keys():
            out_f = open(filename, "w+")
            out_f.write(self.config['headers']+ "\n")
        
            for el in self.data[filename]:
                out_f.write(el + "\n")
            out_f.close()


class TotalTimesBenchmark(Benchmark):
    
    def __init__(self, config):
        super(TotalTimesBenchmark, self).__init__(config)
        self.times = []

    def collect_data(self, data, grid_size, n_threads):
        """Gets the lowest and highest clktic present in the result table"""
        min_clk = min([int(t[0]) for t in data])
        max_clk = max([int(t[1]) for t in data])

        self.times.append("%i,%i,%i" % (min_clk, max_clk, int(max_clk) - int(min_clk)))
       
	if n_threads >= int(self.config['max_threads']) - 8:
            self.data['%s/times_%i_SM.csv' % (self.config['output_dir'], grid_size)] = self.times
            self.times = []

class IndividualTimesBenchmark(Benchmark):
    """Keeps raw starting and ending times of each threads"""

    def collect_data(self, data, grid_size, n_threads):
        times = []
        for l in data:
            times.append("%s,%s" % (l[0], l[1]))
        self.data['%s/times_%i_threads_%i_SM.csv' % (self.config['output_dir'], 
                                                     n_threads,
                                                     grid_size)] = times
