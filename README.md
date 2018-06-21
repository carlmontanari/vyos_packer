A simple packer build to bootstrap a VyOs image for testing/labbing.

Replace values in obnoxious CAPS in the variables.json file with values relevant to your environment. These should be more or less self-explanatory.

This is setup to build on a distributed virtual switch, you can modify the VMX data to place it on a standard vSwitch if you prefer. If using a DVS, the DVS UUID is a long alpha-numeric UUID -- you can get this by browsing the MOB (https://[your vsphere ip]/mob and digging around in there) or querying it w/ PyVmomi or probably others as well. You can add additional NICs to the VM by adding adapters in the VMX section of the vyos_build.json file.

There is a down and dirty expect script in here that will enable the "guest hack" that allows Packer to find the IP address of the VM to connect to it after it fires up.

Running the buildme.sh script will enable the guest hack (you must first enable SSH on the ESX host), and the Packer build, passing in the variables from the variables.json file.

Happy VyOs'ing!
