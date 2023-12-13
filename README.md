# Noir Primitive Constraint Counts

This repository contains minimal Noir programs of different Noir primitives, for the purpose of measuring constraint counts of the different primitives.

## Environment

Existing results were gathered using:
- Nargo v0.19.4 (paired with the default [barretenberg](https://github.com/AztecProtocol/aztec-packages/tree/master/barretenberg) proving backend)

## Results

Note that in UltraPlonk (which the default proving backend is based on as of testing), constructions could contain constant overheads shared by different sub-circuits of a circuit and are amortizable away (for instance range constraints). For two circuits `c1` and `c2`, you could see `circuit_size(c1||c2)` < `circuit_size(c1)` + `circuit_size(c2)` given the optimizations. The difference in circuit sizes of a single Keccak256 hash versus multiple as shown below is an example.

| Primitive                     | Backend Circuit Size |
|-------------------------------|----------------------|
| keccak256                     | 54830                |
| keccak256 (100 times)         | 1829949              |
| sha256 (32 bytes)             | 38815                |
| ecdsa_secp256k1               | 35218                |
| sha256 + ecdsa_secp256k1      | 41033                |
| schnorr                       | 48166                |
| compute_merkle_root (depth 4) | 28858                |

## Run it yourself

To gather your own results, [install Nargo](https://noir-lang.org/getting_started/nargo_installation) and in the sub-folder run:

```
nargo info
```