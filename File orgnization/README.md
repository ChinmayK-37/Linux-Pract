# 📂 File Organizer (Bash)

A simple Bash script that organizes files into folders based on their extensions.  
It uses a predefined mapping of file extensions to custom folder names, and moves matching files into the corresponding folders.  
Files with extensions not in the mapping are moved into an `OtherFiles` folder.  

---

## 📜 How It Works
1. The script reads all file extensions in the current directory (except `.sh` scripts).
2. It checks if the extension exists in a predefined `folder_map` array.
3. If a match is found, the file is moved into that mapped folder.
4. If no match is found, the file is moved into the `OtherFiles` folder.

---

## 🖥️ Usage

### 1. Make the script executable
```bash
chmod +x organize.sh
