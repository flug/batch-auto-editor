# batch-cut.bat

This Windows batch script automates the processing of all `.mp4` files in a given folder using [auto-editor](https://github.com/WyattBlue/auto-editor).  
It generates an `.xml` file for each video, formatted for Adobe Premiere.

---

## 📄 Features

- Scans all `.mp4` files in the input directory
- Creates the output directory if it doesn't exist
- Runs `auto-editor` with:
  - Silence detection and removal (`--edit audio:threshold=-28dB`)
  - Premiere export format (`--export premiere`)
  - Saves the resulting `.xml` files in the output folder

---

## 🔧 Requirements

- Windows
- Python installed
- `auto-editor` installed via pip:

  ```bash
  pip install auto-editor
