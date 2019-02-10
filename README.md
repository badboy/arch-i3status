# Building i3status-git on Arch Linux

## Build docker container

```
docker build -t arch-i3status .
```

## Run the container & build the package

```
docker run -it --rm arch-i3status /bin/bash
```

```
su - i3
cd src
makepkg
```

## Current failure

```
[...]
build configured:

  i3status version:       2.12-83-g49461ac (2019-02-03, branch "master")
  is release version:     no

  enable debug flags:     yes
  code coverage:          no
  enabled sanitizers:     address

To compile, run:

  cd /home/i3/src/src/i3status/x86_64-pc-linux-gnu && make -j8
--------------------------------------------------------------------------------
Makefile:1177: warning: overriding recipe for target 'src/i3status-auto_detect_format.o'
Makefile:858: warning: ignoring old recipe for target 'src/i3status-auto_detect_format.o'
Makefile:1201: warning: overriding recipe for target 'src/i3status-first_network_device.o'
Makefile:869: warning: ignoring old recipe for target 'src/i3status-first_network_device.o'
Makefile:1225: warning: overriding recipe for target 'src/i3status-general.o'
Makefile:880: warning: ignoring old recipe for target 'src/i3status-general.o'
Makefile:1249: warning: overriding recipe for target 'src/i3status-output.o'
Makefile:891: warning: ignoring old recipe for target 'src/i3status-output.o'
Makefile:1273: warning: overriding recipe for target 'src/i3status-print_battery_info.o'
Makefile:902: warning: ignoring old recipe for target 'src/i3status-print_battery_info.o'
Makefile:1297: warning: overriding recipe for target 'src/i3status-print_cpu_temperature.o'
Makefile:913: warning: ignoring old recipe for target 'src/i3status-print_cpu_temperature.o'
Makefile:1321: warning: overriding recipe for target 'src/i3status-print_cpu_usage.o'
Makefile:924: warning: ignoring old recipe for target 'src/i3status-print_cpu_usage.o'
Makefile:1345: warning: overriding recipe for target 'src/i3status-print_ddate.o'
Makefile:935: warning: ignoring old recipe for target 'src/i3status-print_ddate.o'
Makefile:1369: warning: overriding recipe for target 'src/i3status-print_disk_info.o'
Makefile:946: warning: ignoring old recipe for target 'src/i3status-print_disk_info.o'
Makefile:1393: warning: overriding recipe for target 'src/i3status-print_eth_info.o'
Makefile:957: warning: ignoring old recipe for target 'src/i3status-print_eth_info.o'
Makefile:1417: warning: overriding recipe for target 'src/i3status-print_ip_addr.o'
Makefile:968: warning: ignoring old recipe for target 'src/i3status-print_ip_addr.o'
Makefile:1441: warning: overriding recipe for target 'src/i3status-print_ipv6_addr.o'
Makefile:979: warning: ignoring old recipe for target 'src/i3status-print_ipv6_addr.o'
Makefile:1465: warning: overriding recipe for target 'src/i3status-print_load.o'
Makefile:990: warning: ignoring old recipe for target 'src/i3status-print_load.o'
Makefile:1489: warning: overriding recipe for target 'src/i3status-print_mem.o'
Makefile:1001: warning: ignoring old recipe for target 'src/i3status-print_mem.o'
Makefile:1513: warning: overriding recipe for target 'src/i3status-print_path_exists.o'
Makefile:1012: warning: ignoring old recipe for target 'src/i3status-print_path_exists.o'
Makefile:1537: warning: overriding recipe for target 'src/i3status-print_run_watch.o'
Makefile:1023: warning: ignoring old recipe for target 'src/i3status-print_run_watch.o'
Makefile:1561: warning: overriding recipe for target 'src/i3status-print_time.o'
Makefile:1034: warning: ignoring old recipe for target 'src/i3status-print_time.o'
Makefile:1585: warning: overriding recipe for target 'src/i3status-print_volume.o'
Makefile:1045: warning: ignoring old recipe for target 'src/i3status-print_volume.o'
Makefile:1609: warning: overriding recipe for target 'src/i3status-print_wireless_info.o'
Makefile:1056: warning: ignoring old recipe for target 'src/i3status-print_wireless_info.o'
Makefile:1633: warning: overriding recipe for target 'src/i3status-process_runs.o'
Makefile:1067: warning: ignoring old recipe for target 'src/i3status-process_runs.o'
Makefile:1657: warning: overriding recipe for target 'src/i3status-pulse.o'
Makefile:1078: warning: ignoring old recipe for target 'src/i3status-pulse.o'
Makefile:1887: *** unterminated variable reference.  Stop.
==> ERROR: A failure occurred in build().
    Aborting...
```
