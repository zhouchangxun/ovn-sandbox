#!/bin/bash


source util.sh
source lib-vm.sh
source lib-ovn-net.sh
echo \
"====== ovn test env ready! =======
available cmd:
  1. vm_add vm_del
  2. switch_add switch_del switch_port_add switch_port_del
  3. router_add router_del router_interface_add router_interface_del
"

#########################################

switch_add ls1

as hv1
vm_add vm1 192.168.1.1/24 192.168.1.254 hv1
switch_port_add ls1 vm1

as hv2
vm_add vm2 192.168.1.2/24 192.168.1.254 hv2
switch_port_add ls1 vm2

#switch_add ls2
#vm_add vm2 10.1.1.1/24 10.1.1.254
#switch_port_add ls2 vm2
#
#router_add lr1
#router_interface_add lr1 ls1 192.168.1.254/24
#router_interface_add lr1 ls2 10.1.1.254/24


topo_show

