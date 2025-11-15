sudo apt update
sudo apt install openvas
sudo gvm-check-setup
sudo greenbone-feed-sync --type cert
sudo greenbone-feed-sync --type scap
sudo gvm-check-setup
sudo gvm-start
