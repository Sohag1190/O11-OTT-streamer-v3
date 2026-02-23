
---

### 📦 Project Overview
- **Name:** O11 OTT Streamer v3  
- **Language:** 100% Shell scripts (`.sh`)  
- **Main Files:**  
  - `v3.sh` → installer script  
  - `v3.1.sh` → alternate installer script  
  - `v3p.zip` → packaged resources  

---

### 🚀 Installation Steps (from README)
1. **Clone or Download the Repository**
   ```bash
   git clone https://github.com/Sohag1192/O11-OTT-streamer-v3.git
   cd O11-OTT-streamer-v3
   ```
   Or download the ZIP manually.

2. **Download and Prepare Installer**
   ```bash
   wget https://raw.githubusercontent.com/Sohag1190/O11-OTT-streamer-v3/refs/heads/main/v3.1.sh
   chmod +x v3.1.sh
   sudo ./v3.1.sh
   ```

3. **Make the Installer Executable**
   ```bash
   chmod +x v3.sh
   ```

4. **Run the Installer Script**
   ```bash
   ./v3.sh
   ```
   ---

## 📊 Dashboard

Once running, access the dashboard in your browser:

```
http://serverip:1234
```

Replace `serverip` with your actual server IP address.

5. **Follow On-Screen Prompts**
   - Installs dependencies  
   - Configures stream sources  
   - Sets up services or cron jobs  

---

### ⚙️ Requirements
- Linux environment (Ubuntu/Debian recommended)  
- Tools: `bash`, `curl`, `wget`, `unzip`  
- Possibly `ffmpeg` or `nginx` if streaming is involved  

---

### 📝 Notes
- The README is minimal and assumes familiarity with Linux shell scripting.  
- The `v3.sh` and `v3.1.sh` scripts automate setup, so reviewing them before execution is recommended.  
- No official releases or packages are published; everything is contained in the repo.  

---


