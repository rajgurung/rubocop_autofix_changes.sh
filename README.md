# rubocop_autofix_changes.sh

## 🚀 RuboCop Auto-Fix Script for Rails project — Quick Setup Guide

### 📝 Step 1: Save the Script

Save the shell script as `rubocop_autofix.sh`, ideally in a directory like `~/scripts` or somewhere you keep utility scripts.

---

### 🔒 Step 2: Make the Script Executable

```bash
chmod +x ~/scripts/rubocop_autofix.sh
```

---

### 🚣️ Step 3: Add Script Directory to Your PATH

Open your `.zshrc` (or `.bashrc` if you're using Bash):

```bash
nano ~/.zshrc
```

Add the following line at the bottom:

```bash
export PATH="$HOME/scripts:$PATH"
```

Then reload your shell config:

```bash
source ~/.zshrc
```

---

### 🧪 Step 4: Run the Script

Now you can run the script from any project directory by simply typing:

```bash
rubocop_autofix.sh
```

Or, if you want to pass a specific directory or file:

```bash
rubocop_autofix.sh app/models
```

---

### ⚙️ What the Script Does

- Runs `rubocop -A` on your project or target directory
- Applies **automatic fixes** where safe
- Logs output so you can see what changed

---

