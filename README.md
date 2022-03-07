@[toc]

# 安装Ubuntu

# 1 zsh环境配置

1）安装zsh

```bash
sudo apt-get update
sudo apt-get install cmake git zsh
```

2）安装ohmyzsh

```bash
wget -p ~/ https://github.com/ohmyzsh/ohmyzsh/blob/master/tools/install.sh
sudo chmod +x ~/install.sh
sh ~/install.sh
```

3）安装插件

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

4）修改zshrc

```bash
gedit ~/.zshrc
```

在文件中添加

```bash
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)
alias ezs="gedit ~/.zshrc"
alias szs="source ~/.zshrc"
alias sss="source devel/setup.zsh"
# 填写你的软件路径
alias clion=""
# 填写你的软件路径
alias pych="" 

# source /opt/ros/melodic/setup.zsh
# export PATH=~/anaconda3/bin:$PATH

setopt no_nomatch # 允许使用 *缺省
```

4）安装terminator

```bash
sudo apt-get install terminator
```

安装后创建目录

```bash
mkdir ~/.config/terminator
gedit ~/.config/terminator/config
```

讲下面内容拷贝进去，并保存

```bash
[global_config]
  title_font = Ubuntu Mono 11[keybindings]
[keybindings]
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      type = Terminal
    [[[window0]]]
      parent = ""
      size = 1200, 600
      type = Window
[plugins]
[profiles]
  [[default]]
    background_color = "#002b36"
    background_darkness = 0.91
    background_image = None
    background_type = transparent
    font = Ubuntu Mono 15
    foreground_color = "#e0f0f1"
    show_titlebar = False
    use_system_font = False

```

# 2 anaconda

anaconda直接官网下载就好了，安装完后在zshrc中添加

```bash
export PATH=~/anaconda3/bin:$PATH# >>> conda initialize >>># !! Contents within this block are managed by 'conda init' !!__conda_setup="$('/home/yunfan/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"if [ $? -eq 0 ]; then    eval "$__conda_setup"else    if [ -f "/home/yunfan/anaconda3/etc/profile.d/conda.sh" ]; then        . "/home/yunfan/anaconda3/etc/profile.d/conda.sh"    else        export PATH="/home/yunfan/anaconda3/bin:$PATH"    fifiunset __conda_setup# <<< conda initialize <<<
```



# 3 eigen

```bash
sudo apt-get install libeigen3-dev sudo ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
```



# 4 ros-melodic

http://wiki.ros.org/melodic/Installation/Ubuntu

```bash
sudo apt-get install curlsudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrcsource ~/.zshrc
```

# 5 mavros pcl

```bash
sudo apt-get install ros-melodic-mavros*sudo apt-get install ros-melodic-pcl*sudo ln -s /usr/include/pcl-1.8/pcl /usr/include/pcl
```

# 6 clion

clion装好后要装三个插件比较舒服

* CodeGlance
* Hatchery
* Rainbow Brackets

# 7 simplescreenrecorder

录屏软件

```bash
 sudo apt-get install simplescreenrecorder
```



# 8 flameshot

截图软件

```bash
sudo apt-get install flameshot
```

添加快捷键：在系统设置的keymap里

![](README.assets/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L1JpbGVHb3VsZQ==,size_16,color_FFFFFF,t_70.png)


# 9 VLC

视屏播放软件

```bash
sudo apt-get install vlc
```

# 10 git ssh生成

```bash
ssh-keygen -t rsa -C “your-email”
```
一路回车
然后
```bash
cat ~/.ssh/id_rsa.pub
```
将得到的链接复制进入github -> Settings -> SSH and GPG keys -> new SSH key，取个名字即可

# 11 Backwardcpp

```bash
 sudo apt-get install libdw-dev 
```

随后下载头文件
https://raw.githubusercontent.com/bombela/backward-cpp/master/backward.hpp
复制到根目录
sudo mv backward.hpp /usr/include

# 12 OOQP

https://github.com/RENyunfan/ooqp_group

