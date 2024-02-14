## :rocket: C-SHELL :rocket:
### A simple cryptographic tool for encrypting messages with an RSA keys!



<details>
  <summary>
    <strong>Prerequisites</strong>
  </summary>
  <i>
    <a href="https://git-scm.com/">Git</a> Ensure Git is installed on your system.<br>
    <a href="https://www.gnu.org/software/bash/">Bash</a> This script is designed for Bash, the default shell on most Linux and macOS systems.<br>
    <a href="https://www.openssl.org/">OpenSSL</a> The script utilizes OpenSSL for encryption and decryption. Verify its installation with openssl version. If not present, install it using your system's package manager.
  </i>
</details>



<details>
  <summary>
    <strong>How to use?</strong>
  </summary>
  <b>Clone the Repository </b><code>git clone https://github.com/0x892/c-shell.git</code><br>
  <b>Navigate to the Directory </b><code>cd c-shell</code><br>
  <b>Run shell script </b><code>sh ./main.sh</code><br>
</details>



<details>
  <summary>
    <strong>Choose a Mode</strong>
  </summary>
  The script will present a menu:<br>
  <code>0: Generation Keys: Generates a new public-private key pair for encryption and decryption.</code><br>
  <code>1: Encryption: Encrypts a plaintext message using the public key.</code><br>
  <code>2: Decryption: Decrypts an encrypted file using the private key.</code><br>
  Enter the desired mode number (0, 1, or 2) and press Enter.<br>
</details>



<details>
  <summary>
    <strong>Mode-Specific Instructions</strong>
  </summary>
— Mode 0 (Generation Keys):<br>
○ Enter a password to protect the private key.<br>
○ The script will generate a 4096-bit RSA key pair and store them in the ./keys directory.<br><br>

— Mode 1 (Encryption):<br>
○ Enter the text message to encrypt.<br>
○ Specify a filename to save the encrypted version of the text.<br>
○ The script will encrypt the message using the public key and save it to the specified file.<br><br>

— Mode 2 (Decryption):<br>
○ Enter the name of the encrypted file.<br>
○ Specify a filename to store the decrypted text.<br>
○ The script will decrypt the file using the private key and save the decrypted text to the specified file.<br><br>
</details>

> [!IMPORTANT]
> This repository is not a professional work or anything like that, it was created as an example of the RSA encryption technique.
