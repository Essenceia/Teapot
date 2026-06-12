import zlib 
import struct 

# CRC-32/ISO-HDLC
def calc_fcs(data):                                        
	return struct.pack('<I',zlib.crc32(data))
            
