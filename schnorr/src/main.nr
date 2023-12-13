use dep::std;

/*
+---------+------------------------+--------------+----------------------+
| Package | Language               | ACIR Opcodes | Backend Circuit Size |
+---------+------------------------+--------------+----------------------+
| schnorr | PLONKCSat { width: 3 } | 97           | 48166                |
+---------+------------------------+--------------+----------------------+
*/

fn main(
    message: [u8; 32],
    pub_key_x: Field,
    pub_key_y: Field,
    signature: [u8; 64]
) -> pub bool {
    std::schnorr::verify_signature(pub_key_x, pub_key_y, signature, message)
}