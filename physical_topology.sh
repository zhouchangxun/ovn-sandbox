
#start nb sb northd
#ovn_start


#ovn-nbctl ls-add lsw0

net_add n1

for i in 1 2; do
    sim_add hv$i
    as hv$i
    echo ovn_attach n1 eth_hv$i 192.168.0.$i
    ovn_attach n1 eth0 192.168.0.$i
done

