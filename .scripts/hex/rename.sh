#!/bin/bash


for f in *.vdata; do
	cp -- "$f" "${f}.jpg"
done

