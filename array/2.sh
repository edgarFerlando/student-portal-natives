#!/bin/bash
a=($(cat))
echo ${a[@]/*[Aa]*/}
