This repository contains Chisel implementations of the AES and SM4 cryptographic algorithms. It is the work from paper "A Pipelined AES and SM4 Hardware Implementation for Multi-Tasking Virtualized Environments" accepted by ICA3PP 2023. Preprint available at https://easychair.org/publications/preprint/BNHg.

The designs feature a round-based, four-stage pipeline structure. The main advantage of our designs is their ability to support tasks from different guests (corresponding to different user keys) processed in parallel through the pipeline. This offers better flexibility and hardware utilization rates in virtualized environments, where hardware-level parallelism support is often emphasized.

To generate the Verilog code for a standalone AES/SM4 module, execute one of the following commands, where `aes-enc` corresponds to the AES encryption module, `aes-dec` to the AES decryption module, and `sm4` to the SM4 module. The generated Verilog code will be located in the `./generated/` directory:
```
sbt "run aes-enc"
sbt "run aes-dec"
sbt "run sm4"
```

You can also generate a "group" for AES or SM4, which contains four instances of the corresponding cryptographic modules. To do this, execute:
```
sbt "run group-aes"
sbt "run group-sm4"
```
and specify the number of encryption modules within the group. The remaining modules will be decryption ones.
