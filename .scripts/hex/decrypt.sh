#!/bin/bash

for f in *.vdata; do
	dd bs=8 skip=1 if="$f" of="$f.jpg"
done

