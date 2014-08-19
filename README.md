iotop
===

`iotop` watches I/O usage information output by the Linux kernel (requires 2.6.20 or later) and displays a table of current I/O usage by processes or threads on the system. At least the `CONFIG_TASK_DELAY_ACCT`, `CONFIG_TASK_IO_ACCOUNTING`, `CONFIG_TASKSTATS` and `CONFIG_VM_EVENT_COUNTERS` options need to be enabled in your Linux kernel build configuration.

`iotop` displays columns for the I/O bandwidth read and written by each process/thread during the sampling period. It also displays the percentage of time the thread/process spent while swapping in and while waiting on I/O. For each process, its I/O priority (class/level) is shown. In addition, the total  I/O bandwidth read and written during the sampling period is displayed at the top of the interface.

Use  the  left  and  right  arrows to change the sorting, r to reverse the sorting order, [space key] to toggle the `--processes` option or q to quit. Any other key will force a refresh.

Prerequirements
---

Depends on `ncurses` library in the interactive mode.

Building with CMake
---

    git clone https://github.com/sampinet/iotop.git
    cd iotop && mkdir build && cd build
    cmake ..
    make
    
Building with Make
---

    git clone https://github.com/sampinet/iotop.git
    cd iotop
    make
    
---

This iotop is just C implementation of original iotop.py written by Guillaume Chazarain.
[Python iotop's homepage](http://guichaz.free.fr/iotop/)

