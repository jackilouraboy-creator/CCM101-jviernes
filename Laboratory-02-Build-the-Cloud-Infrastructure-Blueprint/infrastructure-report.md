# Infrastructure Report

**Laboratory Activity 2 — Checkpoint 2: Investigate the Cloud Server**
**Environment:** KillerCoda Playground

---

## 1. Operating System

**Command used:** `cat /etc/os-release`

```
PRETTY_NAME="Ubuntu 24.04.4 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.4 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
UBUNTU_CODENAME=noble
```

**Finding:** Ubuntu 24.04.4 LTS (Noble Numbat)

---

## 2. Kernel Version

**Command used:** `uname -r`

```
6.8.0-136-generic
```

**Finding:** Linux kernel 6.8.0-136-generic

---

## 3. CPU Model

**Command used:** `lscpu | grep "Model name"`

```
Model name:            Intel Xeon E312xx (Sandy Bridge, IBRS update)
BIOS Model name:       RHEL-9.6.0 PC (Q35 + ICH9, 2009)  CPU @ 2.0GHz
```

**Finding:** Intel Xeon E312xx (Sandy Bridge, IBRS update) — a virtualized CPU model presented to the guest by the underlying hypervisor.

---

## 4. Number of CPU Cores

**Command used:** `nproc`

```
1
```

**Finding:** 1 CPU core allocated to this environment.

---

## 5. Total RAM

**Command used:** `free -h`

```
              total        used        free      shared  buff/cache   available
Mem:          1.9Gi        420Mi       789Mi       1.1Mi       868Mi       1.4Gi
Swap:         1.0Gi          0B        1.0Gi
```

**Finding:** 1.9 GiB total RAM, with 1.0 GiB of swap space also configured.

---

## 6. Disk Capacity

**Command used:** `df -h`

```
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           191M 1000K  190M   1% /run
/dev/vda1        19G  5.4G   13G  30% /
tmpfs           952M   84K  952M   1% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/vda16      881M  117M  703M  15% /boot
/dev/vda15      105M  6.2M   99M   6% /boot/efi
```

**Finding:** Main root filesystem (`/dev/vda1`) has 19G total capacity, with 5.4G used and 13G available (30% used).

---

## 7. Mounted File Systems

**Command used:** `mount | column -t`

```
sysfs           on  /sys                        type  sysfs           (rw,nosuid,nodev,noexec,relatime)
proc            on  /proc                       type  proc            (rw,nosuid,nodev,noexec,relatime)
udev            on  /dev                        type  devtmpfs        (rw,nosuid,relatime,size=954832k,nr_inodes=238708,mode=755,inode64)
devpts          on  /dev/pts                    type  devpts          (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs           on  /run                        type  tmpfs           (rw,nosuid,nodev,noexec,relatime,size=194892k,mode=755,inode64)
/dev/vda1       on  /                           type  ext4            (rw,relatime,discard,errors=remount-ro,commit=30)
securityfs      on  /sys/kernel/security        type  securityfs      (rw,nosuid,nodev,noexec,relatime)
tmpfs           on  /dev/shm                    type  tmpfs           (rw,nosuid,nodev,inode64)
tmpfs           on  /run/lock                   type  tmpfs           (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
cgroup2         on  /sys/fs/cgroup              type  cgroup2         (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
pstore          on  /sys/fs/pstore              type  pstore          (rw,nosuid,nodev,noexec,relatime)
bpf             on  /sys/fs/bpf                 type  bpf             (rw,nosuid,nodev,noexec,relatime,mode=700)
systemd-1       on  /proc/sys/fs/binfmt_misc    type  autofs          (rw,relatime,fd=32,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=2162)
hugetlbfs       on  /dev/hugepages              type  hugetlbfs       (rw,nosuid,nodev,relatime,pagesize=2M)
mqueue          on  /dev/mqueue                 type  mqueue          (rw,nosuid,nodev,noexec,relatime)
debugfs         on  /sys/kernel/debug           type  debugfs         (rw,nosuid,nodev,noexec,relatime)
tracefs         on  /sys/kernel/tracing         type  tracefs         (rw,nosuid,nodev,noexec,relatime)
fusectl         on  /sys/fs/fuse/connections    type  fusectl         (rw,nosuid,nodev,noexec,relatime)
configfs        on  /sys/kernel/config          type  configfs        (rw,nosuid,nodev,noexec,relatime)
/dev/vda16      on  /boot                       type  ext4            (rw,relatime)
/dev/vda15      on  /boot/efi                   type  vfat            (rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro)
binfmt_misc     on  /proc/sys/fs/binfmt_misc    type  binfmt_misc     (rw,nosuid,nodev,noexec,relatime)
```

**Finding:** Key mount points include `/` (ext4, on `/dev/vda1`), `/boot` (ext4, on `/dev/vda16`), and `/boot/efi` (vfat, on `/dev/vda15`), along with numerous virtual/pseudo filesystems (`proc`, `sysfs`, `tmpfs`, `cgroup2`, etc.) used by the kernel and system services rather than for persistent storage.

---

## 8. Hostname

**Command used:** `hostname`

```
ubuntu
```

**Finding:** ubuntu

---

## 9. IP Address

**Command used:** `hostname -I`

```
172.30.1.2 172.17.0.1
```

**Finding:** The server has two internal IP addresses assigned: 172.30.1.2 and 172.17.0.1 (the latter is typically the Docker bridge network interface).

---

