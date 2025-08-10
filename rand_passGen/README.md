# 🔑 Random Password Generator (Shell Script)

This is a simple Bash script to generate a secure random password using `/dev/urandom`, `tr`, and `head`.

## 📜 How It Works
1. **/dev/urandom** generates random bytes.
2. **tr -dc** keeps only the allowed characters (`A–Z`, `a–z`, `0–9`, and some special symbols).
3. **head -c** limits the password to the desired length.
4. The generated password is stored in a variable and printed.

## 🖥️ Usage

### 1. Make the script executable
```bash
chmod +x passgen.sh
