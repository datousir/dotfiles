#!/usr/bin/env python

import os
import os.path
import argparse

parser = argparse.ArgumentParser(description='Delete unused files.')
parser.add_argument('-d',
                    action='store_true',
                    help='delete files (default: print files)')
args = parser.parse_args()

for root, dirs, files in os.walk('.'):
    for name in files:
        if name.startswith("._"):
            print(os.path.join(root, name))
            if args.d:
                os.remove(os.path.join(root, name))
