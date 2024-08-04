import matplotlib.pyplot as plt
 
# Senza ebpf
x1 = [500,1000,2000,5000,10000,15000,25000,30000,40000,50000]
y1 = [14,15,15,15,16,16,16,16,17,17]
plt.plot(x1, y1, label = "without eBPF")

# Con ebpf 
x2 = [500,1000,2000,5000,10000,15000,25000,30000,40000,50000]
y2 = [15,15,18,19,19,19,19,20,20,21]
plt.plot(x2, y2, label = "with eBPF")

 
# naming the x axis
plt.xlabel('request/sec')
# naming the y axis
plt.ylabel('latency (ms)')
 
# giving a title to my graph
plt.title('tcplife')

plt.xticks(range(0, 55000, 5000))  # Tick ogni 5000 unità sull'asse x
plt.yticks(range(14, 22, 1))       # Tick ogni 1 unità sull'asse y
plt.grid(True) 
plt.legend()

# function to show the plot
plt.show()
