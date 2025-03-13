FROM fedora
RUN dnf update -y && \
    dnf install -y bpftool bpftrace bpftop \
    procps-ng strace nmap-ncat \
    && dnf clean all \
