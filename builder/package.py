# Kubos SDK
# Copyright (C) 2017 Kubos Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import vagrant
import subprocess
from utils import BoxAutomator

class BoxPackager(BoxAutomator):
    STATUS_KEY = 'package'
    status_steps = {
            'base': ['package'],
            'kubos-dev': ['package']
            }

    def __init__(self, args):
        super(BoxPackager, self).__init__(args)
        self.setup_status()


    def package(self, args):
        self.validate_path(args.box)
        if self.check_status('package'):
            print 'Box has previuosly been packaged. Skipping the packaging step..'
            return
        print 'Starting Box Packaging Process...'
        v = vagrant.Vagrant()
        try:
            v.package()
            self.update_status('package')
            print 'Packaging completed successfully...'

        except subprocess.CalledProcessError as e:
            print>>sys.stderr, 'Error: The package step failed %s' % e #print the error message from vagrant
            sys.exit(1)


def package_box(args):
    packager = BoxPackager(args)
    packager.package(args)

