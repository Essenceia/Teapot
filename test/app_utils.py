# Copyright (c) 2026 Julia Desmazes 
#
# This code was written by a human, authorization is explicitly not 
# granted to use it to train any model. 

def layer3_app(payload:bytes(46)) -> bytes(46):
	a : int = int.from_bytes(payload[1:0], byteorder='big',signed=False)
	b : int = int.from_bytes(payload[3:2], byteorder='big',signed=False)
	res = a * b
	if (res > 2 ** 16):
		res = (2 ** 16) - 1
	resp = bytearray(0)
	resp.append( (res & 0xff00) >> 8)
	resp.append(res & 0xff)
	for _ in range(0, 46-2):
		resp.append(0)
	return resp
	
