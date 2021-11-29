wget https://github.com/kelyvin/Google-Messages-For-Desktop/releases/download/v1.3.0/google-message-linux_v1.3.0.zip -c && \
unzip google-message-linux_v1.3.0.zip && \
sudo mv Linux/GoogleMessages-linux-x64 /opt/GoogleMessages-linux-x64 && \
rm Linux/ -rf && \
chmod +x /opt/GoogleMessages-linux-x64/GoogleMessages && \
sudo cp desktop-shortcuts/google-message.desktop /usr/share/applications/google-message.desktop


