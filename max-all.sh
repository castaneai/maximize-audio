#!/bin/bash
ls -1 "$@" | xargs -I{} ./max.sh '{}'