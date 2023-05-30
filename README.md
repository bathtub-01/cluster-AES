# A Pipelined AES and SM4 Hardware Implementation for Multi-Tasking Virtualized Environments

This repository contains the Chisel implementations of AES and SM4 cryptographic algorithm.

The designs adopt a round-based, four-staged pipeline structure. The main advantage of our designs is that it can support tasks from different guests (corresponding to different user keys) to be processed in parallel through the pipeline, offering good flexibility and hardware utilization rate in virutalized environments, where parallelism support in hardware level is often emphasized.

To generate the Verilog code for a standalone AES/SM4 module, run one of the following command, where `aes-enc` for AES encryption module, `aes-dec` for AES decryption module and `sm4` for SM4 module. The Verilog code will be generated under `./generated/`
```
sbt "run aes-enc"
sbt "run aes-dec"
sbt "run sm4"
```

It is also possible to generate a "group" for AES or SM4, which contains four instances of the corresponding cryptograhic modules. To do this, run:
```
sbt "run group-aes"
sbt "run group-sm4"
```
and specify the number of encryption modules within the group. The rest modules will be decryption ones.