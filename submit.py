#!/usr/bin/env python

import os
import re

if __name__ == '__main__':
    if not os.path.exists('submit'):
        os.mkdir('submit')
    for dir in os.walk('.'):
        if not dir[0].endswith('submit'):
            for file in dir[2]:
                if file.endswith('.h') or file.endswith('.cc'):
                    file_path = os.path.join(dir[0],file)
                    submit_path = os.path.join('submit',file)
                    with open(file_path, 'r') as fs:
                        with open(submit_path,'w') as fd:
                            for line in fs:
                                fd.write(re.sub('#include *"(.*)/(.*)\.h"','#include "\\2.h"',line))
