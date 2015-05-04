# Jvmtop
The primary capability of this utility is to view a
single jvm's threads analagously to how top shows processes.

With this utility, one can identify which threads are
utilizing the cpu.

## Useful parameters
* `-w #` Thread name display width in detail mode
* `-threadlimit #` sets the number of displayed threads in detail mode
* `-n #` jvmtop will exit after n output iterations
 * Note: Detail mode requires two iterations
* `-h` Complete list of options

## Example output
```
 $ sudo -u mesos /usr/local/bin/jvmtop -w 35 -n 2 53868
 JvmTop 0.8.0 alpha - 14:42:10,  amd64, 32 cpus, Linux 3.14.34-4, load avg 1.86
 http://code.google.com/p/jvmtop

 PID 53868: ./ProspectsApiWeb/target/ProspectsApiWeb-1.1-SNAPSHOT.jar 
 ARGS: server ../ProspectsApiWeb.yaml
 VMARGS: -Xms128m -Xmx512m -XX:MaxPermSize=128m -Xss256k -XX:+PrintGCDetai[...]
 VM: Oracle Corporation Java HotSpot(TM) 64-Bit Server VM 1.8.0_25
 UP: 1003:23m #THR: 181  #THRPEAK: 184  #THRCREATED: 123127 USER: mesos       
 GC-Time:  0: 0m   #GC-Runs: 1989      #TotalLoadedClasses: 10486   
 CPU:  0.00% GC:  0.00% HEAP: 120m / 455m NONHEAP: 108m /  n/a

    TID NAME                                         STATE      CPU    TOTALCPU BLOCKEDBY 
 123173 RMI TCP Connection(11)-172.16.6.80        RUNNABLE  5.07%     0.00%       
 123174 JMX server connection timeout 12317  TIMED_WAITING  0.50%     0.00%       
   5630 Abandoned connection cleanup thread  TIMED_WAITING  0.02%     4.62%       
    195 Hashed wheel timer #8                TIMED_WAITING  0.02%     4.68%       
     84 Hashed wheel timer #2                TIMED_WAITING  0.02%     4.60%       
    268 qtp1000347057-268 Selector0               RUNNABLE  0.01%     1.70%       
     36 main-SendThread(sakrorak.iad02.hubi       RUNNABLE  0.01%     0.16%       
    161 New I/O worker #100                       RUNNABLE  0.01%     0.83%       
     69 New I/O worker #20                        RUNNABLE  0.01%     0.83%       
     65 New I/O worker #16                        RUNNABLE  0.01%     0.82%       
    191 New I/O worker #130                       RUNNABLE  0.01%     0.82%       
    169 New I/O worker #108                       RUNNABLE  0.01%     0.82%       
     75 New I/O worker #26                        RUNNABLE  0.01%     0.83%       
     54 New I/O worker #5                         RUNNABLE  0.01%     0.83%       
     68 New I/O worker #19                        RUNNABLE  0.01%     0.82%       
     67 New I/O worker #18                        RUNNABLE  0.01%     0.83%       
     64 New I/O worker #15                        RUNNABLE  0.01%     0.83%       
     61 New I/O worker #12                        RUNNABLE  0.01%     0.83%       
     60 New I/O worker #11                        RUNNABLE  0.01%     0.83%       
    176 New I/O worker #115                       RUNNABLE  0.01%     0.83%       
     78 New I/O worker #29                        RUNNABLE  0.01%     0.83%       
     66 New I/O worker #17                        RUNNABLE  0.01%     0.83%       
    166 New I/O worker #105                       RUNNABLE  0.01%     0.83%       
    170 New I/O worker #109                       RUNNABLE  0.01%     0.82%       
    172 New I/O worker #111                       RUNNABLE  0.00%     0.82%       
    187 New I/O worker #126                       RUNNABLE  0.00%     0.82%       
    177 New I/O worker #116                       RUNNABLE  0.00%     0.82%       
     74 New I/O worker #25                        RUNNABLE  0.00%     0.83%       
    181 New I/O worker #120                       RUNNABLE  0.00%     0.82%       
     81 New I/O worker #32                        RUNNABLE  0.00%     0.83% 
 Note: Only top 30 threads (according cpu load) are shown!
```
