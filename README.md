# Minimal Intel SGX Enclave

This project is a minimal SGX Enclave, based on [linux-sgx/SampleCode](https://github.com/intel/linux-sgx/tree/main/SampleCode).

The application is small and is developed for exploration of SGX. This document includes:

- [Basic Enclave ergonomics](#sgx-ergonomics).
- [Remote Attestation](#remote-attestation).

## Demo

### Setup

It is assumed that you have the right hardware for running SGX and have installed `Intel SGX SDK` and `Intel SGX PSW`. [This external resource](https://codentium.com/setting-up-intel-sgx/) may be useful.

### Running

```sh
# build the app
make
## run the app
./app

## SAMPLE INTERACTION
# Enter the first number: 23
# Enter the second number: 434
# [Host RECEIVED MESSAGE FROM ENCLAVE:] Hello from enclave
# Result from enclave: 457
```

As you can see this application asks you for two numbers, calls `enclave_add` to calculate their sum inside the enclave and return the value back to non-enclave part of the program.

## Exploration

### SGX ergonomics

As you can see app is separated into `App` that manges the calling of code inside the enclave and `Enclave` which has the code running inside the enclave.

In addition to this, [Enclave.edl](./Enclave/Enclave.edl) defines the ingress/egress of the Enclave using the Enclave Definition Language. This definition includes 2 sections:

- `trusted` => any functions that is called from `App` but ran in `Enclave`.
  - In our case, this is the `enclave_add` function.
  - Whenever `App` calls this, a special `ECALL` mechanism is triggered to run the function in the enclave.
- `untrusted` => any function that is called from `Enclave` but ran in `App`.
  - In our case, this is the `host_print` function.
  - Whenever `Enclave` calls this, a special `OCALL` mechanism is triggered to run the function outside of the enclave.

Please refer to the [documentation](https://cdrdv2-public.intel.com/671446/input-types-and-boundary-checking-edl.pdf) for more details on SGX EDL.

Further, the [Enclave.lds](./Enclave/Enclave.lds) file instructs how the enclave object files should be linked. In this case, we haven't changed it, and is basically what is defined in [linux-sgx/SampleCode/SampleEnclave](https://github.com/intel/linux-sgx/tree/main/SampleCode/SampleEnclave).

Lastly, the [Enclave.config.xml](./Enclave/Enclave.config.xml) file is used to define enclave configuration parameters, which are used during the signing of the enclave. This ensure the authenticity of the enclave. This file instructs `sgx_sign` (used to sign and validate the integrity and authenticity of the enclave) what metadata is associated with the enclave.

## Remote Attestation

Although not part of the scope of this project, here are some notes on remote attestation in SGX.

Remote attestation is a process that allows a *remote party* to verify tha ta program is running *inside a genuine TEE*. Since host OS or cloud provider cannot be fully trusted, remote attestation provides a mechanism to trust enclave without having *physical access*. 

At a high level, RA includes the following: 

1. Enclave creates a report with `MRENCLAVE`, a cryptographic measurement of the enclave code and data at initialisation. This enables the identification of the enclave.
2. Host generatesa quote that includes the measurements from the enclave. 
3. Host sends the quotes to a *Quoting Enclave (QE)*, a pre-installed enclave, which signs the quote, producing a final *SGX quote*.
4. The Host sends the signed SGX quote to a remote verified (e.g. Intel Attestation Service), which verifies the signature and genuiness of the enclave.
5. The enclave is now proven to be trusted. 

Notes:
- The key signed by QE is hardwarebacked and tamper-proof, meaning that the authenticity of the quote is ensured. 
- QE is shipped as part of the SGX PSW. 