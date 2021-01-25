# installer for HP1000DRIVER
# Copyright 2017 Susan Mackay

from setup import ExtensionInstaller

def loader():
    return ProcessHP1000Installer()

class ProcessHP1000Installer(ExtensionInstaller):
    def __init__(self):
        super(ProcessHP1000Installer, self).__init__(
            version="1.3",
            name='HP1000',
            description='Driver for the HP1000, WS1001 and XC0422 weather stations.',
            author="Susan Mackay",
            author_email="vk3anz@gmail.com",
            files=[('bin/user', ['bin/user/HP1000.py'])]
            )
