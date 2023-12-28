##################################################################################
## Makefile for Cosmos OpenSSD
## Copyright (c) 2014 Hanyang University ENC Lab.
## Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
##                Youngjin Jo <yjjo@enc.hanyang.ac.kr>
##                Sangjin Lee <sjlee@enc.hanyang.ac.kr>
##
## This file is part of Cosmos OpenSSD.
##
## Cosmos OpenSSD is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3, or (at your option)
## any later version.
##
## Cosmos OpenSSD is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
## See the GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Cosmos OpenSSD; see the file COPYING.
## If not, see <http://www.gnu.org/licenses/>.
##################################################################################

##################################################################################
## Company: ENC Lab. <http://enc.hanyang.ac.kr>
## Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
##
## Project Name: Cosmos OpenSSD
## Design Name: Ubuntu block device driver
## File Name: Makefile
##
## Version: v1.0.0
##
## Description:
##   - Makefile for Cosmos OpenSSD Ubuntu block device driver.
##################################################################################

##################################################################################
## Revision History:
##
## * v1.0.0
##   - First draft
##################################################################################

obj-m	:= enc_pcie.o

KDIR	:= /lib/modules/$(shell uname -r)/build
PWD	:= $(shell pwd)

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
clean:
	rm -rf *.ko
	rm -rf *.mod.*
	rm -rf .*.cmd
	rm -rf *.o
	rm -rf *.order
	rm -rf *.symvers
