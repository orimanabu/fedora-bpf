# fedora-bpf
Fedora container image with bpf related tools

# How to use

- with `--privileged`

```
$ sudo podman run -it --privileged --rm quay.io/manabu.ori/fedora-bpf:latest bpftool prog list
33: lsm  name restrict_filesystems  tag e8932b6bae2b9745  gpl run_time_ns 165081 run_cnt 188
	loaded_at 2025-02-05T08:02:04+0000  uid 0
	xlated 560B  jited 306B  memlock 4096B  map_ids 11
	btf_id 54
426: cgroup_device  name sd_devices  tag be31ae23198a0378  gpl
	loaded_at 2025-02-28T14:47:41+0000  uid 0
	xlated 464B  jited 298B  memlock 4096B
...
```

- with CAP_BPF capability

```
$ sudo podman run -it --cap-add bpf --rm quay.io/manabu.ori/fedora-bpf:latest bpftool prog list
Error: can't get next program: Operation not permitted
```

- with CAP_BPF,CAP_SYS_ADMIN capabilities

```
$ sudo podman run -it --cap-add bpf,sys_admin --rm quay.io/manabu.ori/fedora-bpf:latest bpftool prog list
Error: can't get prog by id (33): Permission denied
```
