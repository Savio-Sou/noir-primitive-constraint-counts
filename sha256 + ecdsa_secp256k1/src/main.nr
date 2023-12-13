use dep::std;

/*
+-----------------+------------------------+--------------+----------------------+
| Package         | Language               | ACIR Opcodes | Backend Circuit Size |
+-----------------+------------------------+--------------+----------------------+
| ecdsa_secp256k1 | PLONKCSat { width: 3 } | 162          | 41033                |
+-----------------+------------------------+--------------+----------------------+
*/

fn main(
    raw_message: [u8;32],
    pub_key_x: [u8;32],
    pub_key_y: [u8;32],
    signature: [u8;64]
) -> pub bool {
    let message = std::hash::sha256(raw_message);
    std::ecdsa_secp256k1::verify_signature(pub_key_x, pub_key_y, signature, message)
}
