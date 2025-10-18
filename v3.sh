#!/bin/bash

echo "Installing ffmpeg and unzip..."
sudo apt-get update
sudo apt-get install -y ffmpeg unzip

echo "Creating /home/o11 directory..."
mkdir -p /home/o11
cd /home/o11

echo "Downloading v3p.zip..."
wget https://senator.pages.dev/v3p.zip

echo "Unzipping v3p.zip..."
unzip v3p.zip

echo "Changing permissions on v3p_launcher..."
chmod +x v3p_launcher


echo "Creating systemd service..."
echo "[Unit]
Description=o11 Service
After=network.target

[Service]
Type=simple
User=root
Group=root
WorkingDirectory=/home/o11
ExecStart=/home/o11/v3p_launcher -p 2086 -noramfs
KillMode=control-group
Restart=on-failure
RestartSec=3
TasksMax=infinity
LimitNOFILE=infinity
LimitNPROC=infinity

[Install]
WantedBy=multi-user.target graphical.target" | sudo tee /etc/systemd/system/o11.service > /dev/null


echo "Reloading systemd and enabling o11 service..."
sudo systemctl daemon-reload
sudo systemctl enable o11.service
sudo systemctl restart o11.service

echo "Setup completed successfully!"
