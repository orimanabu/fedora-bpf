# fedora-bpf
Fedora container image with bpf related tools

# How to run bpftool

```
sudo podman run --security-opt label=disable --cap-add bpf,sys_admin --rm quay.io/manabu.ori/fedora-bpf:latest bpftool prog list
```

# How to run bpftop

As of writing this doc, bpftop in Fedora 41 is 0.5.1, and it has dependency on journald to run.
This issue is fixed in bpftop 0.5.2. https://github.com/Netflix/bpftop/issues/69

```
sudo podman run -it --security-opt label=disable --cap-add bpf,sys_admin --rm quay.io/manabu.ori/fedora-bpf:latest bash -c "mkdir -p /run/systemd/journal; nc -l -u -U /run/systemd/journal/socket > /dev/null & sleep 1; bpftop
```
