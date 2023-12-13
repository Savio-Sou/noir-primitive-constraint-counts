# Noir Primitive Constraint Counts

This repository contains minimal Noir programs of different Noir primitives, for the purpose of measuring constraint counts of the different primitives.

## Environment

Existing results were gathered using:
- Nargo v0.19.4 (paired with the default [barretenberg](https://github.com/AztecProtocol/aztec-packages/tree/master/barretenberg) proving backend)

## Results

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