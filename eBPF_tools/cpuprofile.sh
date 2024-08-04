# 1. Sampling system processes 99 times per second and counts the number of hits for each process
sudo bpftrace -e 'profile:hz:99 { @[comm] = count(); }'

# 2. In multicore systems the cpu number can also be provided
sudo bpftrace -e 'profile:hz:99 { @[comm, cpu] = count(); }'

# 3. Profile kernel stacks
sudo bpftrace -e 'profile:hz:99 { @[kstack] = count(); }'

# 4. Sampling the CPU at every context switch
sudo bpftrace -e 'tracepoint:sched:sched_switch { @[comm] = count(); }'
