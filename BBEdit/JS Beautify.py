#!/usr/bin/env python3

## -------------------------
#  JavasScript Beautifier for BBEdit
#
#  Requires `jsbeautifier`
#  https://pypi.org/project/jsbeautifier/
#  $ pip install jsbeautifier
#
#  Install in ~/Library/Application Support/BBEdit/Text Filters/
## -------------------------

import sys
import jsbeautifier

# beautifiedText = jsbeautifier.beautify('your javascript string')
# beautifiedText = jsbeautifier.beautify_file('filename.js')

# Get the BBEdit text input from stdin, and read() it to a string
bbeditText = sys.stdin.read()

# Beautify and print to stdout, which goes back to BBEdit
beautifiedText = jsbeautifier.beautify(bbeditText)
print(beautifiedText)
