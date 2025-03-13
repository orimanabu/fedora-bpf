#!/bin/bash

REPO=quay.io/manabu.ori/fedora-bpf:latest

podman build -t ${REPO} .
podman push ${REPO}
