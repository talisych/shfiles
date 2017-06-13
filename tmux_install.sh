# tmux v2.3 installation steps for Ubuntu [various OS versions]
sudo apt-get update -yqqu
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu16.04.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu15.10.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu15.04.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu14.04.1
# sudo apt-get install -yqq tmux-next=2.3~20160913~bzr3547+20-1ubuntu1~ppa0~ubuntu12.04.1
tmux-next -V

# tmux v2.0 installation steps for Ubuntu 14.04 (Trusty Tahr)
tmux -V
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu tmux
# sudo apt-get install -yqqu tmux=2.0-1~ppa1~t
tmux -V

# tmux v1.9 installation steps for Ubuntu 14.04 (Trusty Tahr)
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu tmux=1.9a-1~ppa1~t
tmux -V

# On Ubuntu 12.04 (Precise Pangolin), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~p
# On Ubuntu 13.10 (Saucy Salamander), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~s
