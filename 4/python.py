import fcntl
import sys
import os
import time
import tty
import termios
import re

# http://ballingt.com/2014/03/01/nonblocking-stdin-in-python-3.html
class raw(object):
		def __init__(self, stream):
				self.stream = stream
				self.fd = self.stream.fileno()
		def __enter__(self):
				self.original_stty = termios.tcgetattr(self.stream)
				tty.setcbreak(self.stream)
		def __exit__(self, type, value, traceback):
				termios.tcsetattr(self.stream, termios.TCSANOW, self.original_stty)

class nonblocking(object):
		def __init__(self, stream):
				self.stream = stream
				self.fd = self.stream.fileno()
		def __enter__(self):
				self.orig_fl = fcntl.fcntl(self.fd, fcntl.F_GETFL)
				fcntl.fcntl(self.fd, fcntl.F_SETFL, self.orig_fl | os.O_NONBLOCK)
		def __exit__(self, *args):
				fcntl.fcntl(self.fd, fcntl.F_SETFL, self.orig_fl)

def findNextPrime(num):
	num +=1
	while True:
		prime = True
		for i in range(2,num-1):
			if num % i == 0: prime = False
			if not prime: break
		if prime: return num
		num +=1

print("Press enter to start finding prime numbers! Spacebar or Enter to stop. (Unix only)")
input()

num = 1
with raw(sys.stdin):
		with nonblocking(sys.stdin):
				while True:
						c = sys.stdin.read(1)
						if re.match('\s', c) :
								break
						else:
								num = findNextPrime(num)
								print(num)