    1  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
    2  ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
    3  source ~/.bashrc
    4  sudo apt update
    5  sudo apt install ansible -y
    6  ssh-keygen -t ed25519
    7  cat /home/vagrant/.ssh/id_ed25519.pub >> /home/vagrant/.ssh/authorized_keys
    8  for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
    9  # Add Docker's official GPG key:
   10  sudo apt-get update
   11  sudo apt-get install ca-certificates curl
   12  sudo install -m 0755 -d /etc/apt/keyrings
   13  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   14  sudo chmod a+r /etc/apt/keyrings/docker.asc
   15  # Add the repository to Apt sources:
   16  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
   17    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   18  sudo apt-get update
   19  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   20  cd UTN-FRA_SO_Examenes/
   21  ls -l
   22  cd 202406
   23  cd bash_script/
   24  cat Lista_Usuarios.txt 
   25  cd ..
   26  sudo fdisk /dev/sdc
   27  sudo fdisk /dev/sdd
   28  sudo wipefs -a /dev/sdc1 /dev/sdd1
   29  sudo pvcreate /dev/sdc1 /dev/sdd1
   30  sudo pvs
   31  sudo vgcreate vg_datos /dev/sdc1 /dev/sdd1
   32  sudo vgcreate vg_temp /dev/sdd2
   33  sudo vgcreate vg_temp /dev/sdd1
   34  sudo vgremove vg_datos
   35  sudo vgcreate vg_datos /dev/sdc1
   36  sudo vgcreate vg_temp /dev/sdd1
   37  sudo vgs
   38  sudo lvcreate -L 5M vg_datos -n lv_docker
   39  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
   40  sudo lvcreate -L 512M vg_temp -n lv_swap
   41  sudo lvs
   42  sudo fdisk -l
   43  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
   44  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
   45  sudo mkswap /dev/sdd1
   46  sudo mkswap /dev/vg_temp/lv_swap
   47  df -h
   48  free -h
   49  sudo mkdir -p /var/lib/docker
   50  sudo mkdir -p /work
   51  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   52  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   53  sudo swapon /dev/vg_temp/lv_swap
   54  df -h
   55  free -h
   56  sudo systemctl restart docker
   57  sudo systemctl status docker
   58  history
   59  sudo lvs
   60  ls -l
   61  cd UTN-FRA_SO_Examenes/
   62  cd 202406
   63  ls -l
   64  cd bash_script/
   65  ls -l
   66  cd ..
   67  cd /usr/local/bin/
   68  sudo mkdir RodicioAltaUser-Groups.sh
   69  ls -l
   70  vim RodicioAltaUser-Groups.sh/
   71  chmod 755 RodicioAltaUser-Groups.sh/
   72  sudo chmod 755 RodicioAltaUser-Groups.sh/
   73  ls -l
   74  sudo rmri RodicioAltaUser-Groups.sh/
   75  sudo rmdir RodicioAltaUser-Groups.sh/
   76  ls -l
   77  vim RodicioAltaUser-Groups.sh
   78  ls -l
   79  vim RodicioAltaUser-Groups.sh
   80  ls -l
   81  sudo vim RodicioAltaUser-Groups.sh
   82  ls -l
   83  chmod 755 RodicioAltaUser-Groups.sh 
   84  sudo chmod 755 RodicioAltaUser-Groups.sh 
   85  ls -l
   86  cd ..
   87  cd ~/UTN-FRA_SO_Examenes/202406/ansible
   88  ls -l
   89  cd roles/
   90  ls -l
   91  cd 2do_parcial/
   92  ls -l
   93  cd tests/
   94  ls -l
   95  cat test.yml 
   96  cd ..
   97  ls -l
   98  vim playbook.yml 
   99  cat README.md 
  100  cd roles/
  101  ls -l
  102  cd 2do_parcial/
  103  ls -l
  104  cd tasks/
  105  ls -l
  106  cd ..
  107  ls -l
  108  cat ansible.cfg 
  109  cd ..
  110  ls -l
  111  cd RTA_Examen_20241118/
  112  ls -l
  113  vim Punto_D.sh 
  114  sudo chmod 755 Punto_D.sh 
  115  ls -l
  116  ./Punto_D.sh 
  117  cd ..
  118  cd UTN-FRA_SO_Examenes/cd 202406
  119  ls -l
  120  cd UTN-FRA_SO_Examenes/
  121  ls -l
  122  cd 202406
  123  cd ansible/
  124  ls -l
  125  cat playbook.yml 
  126  ls -l
  127  cd roles/
  128  ls -l
  129  cd 2do_parcial/
  130  ls -l
  131  cd templates
  132  ls -l
  133  cd ..
  134  cd ansible/
  135  ls -l
  136  cd /home/vagrant
  137  ls -l
  138  /home
  139  cd /home
  140  ls -l
  141  cd vagrant/
  142  ls -l
  143  cd UTN-FRA_SO_Examenes/
  144  ls -l
  145  cd 202406
  146  ls -l
  147  cd ansible/
  148  ls -l
  149  cd inventory/
  150  ls -l
  151  cd ..
  152  cd logs/
  153  ls -l
  154  cd ..
  155  cd roles/
  156  ls -l
  157  cd 2do_parcial/
  158  ls -l
  159  cd /home/vagrant
  160  ls -l
  161  cd /home
  162  cd ..
  163  ls -l
  164  cd tmp
  165  ls -l
  166  cd 2do_parcial/
  167  ls -l
  168  cd alumno/
  169  ls -l
  170  cat datos_alumno.txt 
  171  cd .. 
  172  cd ..
  173  docker info
  174  cd /home/vagrant
  175  docker login
  176  sudo usermod -a -G docker $(whoami)
  177  exit
  178  id
  179  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
  180  apt install net-tools
  181  sudo apt install net-tools
  182  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
  183  history
  184  sudo groupadd "2P_GDesa"
  185  sudo groupadd "2P_GTest"
  186  sudo groupadd "2PSupervisores"
  187  sudo useradd -m -g "2P_GDesa" -d "/work/2P_202406_Prog1" "2P_202406_Prog1"
  188  sudo passwd 2P_202406_Prog1
  189  sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}'
  190  sudo useradd -m -g "2P_GDesa" -d "/work/2P_202406_Prog2" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Prog2"
  191  sudo useradd -m -g "2P_GTest" -d "/work/2P_202406_Test1" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Test1"
  192  sudo useradd -m -g "2PSupervisores" -d "/work/2P_202406_Supervisor" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Supervisor"
  193  sudo chown "2P_202406_Prog1:2P_GDesa" "/work/2P_202406_Prog1"
  194  sudo chown "2P_202406_Prog2:2P_GDesa" "/work/2P_202406_Prog2"
  195  sudo chown "2P_202406_Test1:2P_GTest" "/work/2P_202406_Test1"
  196  sudo chown "2P_202406_Supervisor:2PSupervisores" "/work/2P_202406_Supervisor"
  197  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  198  sudo usermod -a -G docker $(whoami)
  199  docker login -u natyrodicio
  200  echo "<div>
  201  <h1> Sistemas Operativos - UTNFRA </h1></br>
  202  <h2> 2do Parcial - Noviembre 2024 </h2> </br>
  203  <h3> Natalia Rodicio </h3>
  204  <h3> División: 115 </h3>
  205  </div>" > index.html
  206  cat <<EOF > Dockerfile
  207  FROM nginx
  208  COPY index.html /usr/share/nginx/html/index.html
  209  EOF
  210  docker build -t "natyrodicio/web1-rodicio" .
  211  docker container prune
  212  docker image prune
  213  docker volume prune
  214  docker network prune
  215  df -h
  216  docker build -t "natyrodicio/web1-rodicio" .
  217  # Crear Dockerfile
  218  cat <<EOF > Dockerfile
  219  FROM nginx
  220  COPY index.html /usr/share/nginx/html/index.html
  221  EOF
  222  # Construir y pushear la imagen
  223  docker build -t "natyrodicio/web1-rodicio" .
  224  # Modificar index.html
  225  echo "<div>
  226  <h1> Sistemas Operativos - UTNFRA </h1></br>
  227  <h2> 2do Parcial - Noviembre 2024 </h2> </br>
  228  <h3> Natalia Rodicio </h3>
  229  <h3> División: 115 </h3>
  230  </div>" > index.html
  231  docker build -t "natyrodicio/web1-rodicio" .
  232  sudo docker build -t "natyrodicio/web1-rodicio" .
  233  sudo docker build -t "natyrodicio/web1-rodicio:latest" .
  234  docker build -t "natyrodicio/web1-rodicionatalia" .
  235  docker push "natyrodicio/web1-rodicionatalia"
  236  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  237  ls -l
  238  exit
  239  docker build -t "natyrodicio/web1-rodicionatalia" .
  240  docker push "natyrodicio/web1-rodicionatalia"
  241  # Crear script run.sh
  242  cat <<EOF > run.sh
  243  #!/bin/bash
  244  docker run -d -p 8080:80 "natyrodicio/web1-rodicionatalia"
  245  EOF
  246  sudo chmod 755 run.sh
  247  id
  248  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  249  # Crear script run.sh
  250  cat <<EOF > run.sh
  251  #!/bin/bash
  252  docker run -d -p 8080:80 "natyrodicio/web1-rodicionatalia"
  253  EOF
  254  sudo chmod 755 run.sh
  255  cd ..
  256  cd vagrant/
  257  ls -l
  258  cd RTA_Examen_20241118/
  259  ls -l
  260  vim Punto_D.sh 
  261  ls -l
  262  vim Punto_A.sh 
  263  vim Punto_B.sh 
  264  vim Punto_D.sh 
  265  vim Punto_C.sh 
  266  ls -l
  267  sudo chmod 755 Punto_A.sh 
  268  sudo chmod 755 Punto_B.sh 
  269  sudo chmod 755 Punto_C.sh 
  270  ls -l
  271  cat Punto_A.sh 
  272  cat Punto_B.sh 
  273  cat Punto_C.sh 
  274  ./Punto_D.sh 
  275  ./Punto_D.sh
  276  vim Punto_D.sh 
  277  ./Punto_D.sh
  278  vim Punto_D.sh 
  279  ./Punto_D.sh
  280  vim Punto_D.sh 
  281  ./Punto_D.sh
  282  vim Punto_D.sh 
  283  ./Punto_D.sh
  284  cat Punto_A.sh 
  285  cd ..
  286  cd vagrant
  287  git clone https://github.com/NataliaRodicio/UTNFRA_SO_2do_Parcial_Rodicio.git
  288  ls -l
  289  cd UTNFRA_SO_2do_Parcial_Rodicio/
  290  ls -l
  291  history - l > $HOME/.bash_history 
  292  sudo echo history - l > $HOME/.bash_history 
  293  sudo bash -c 'history -l > $HOME/.bash_history'
  294  sudo bash -c 'history > $HOME/.bash_history'
  295  ls -l
  296  cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_Parcial_Rodicio
  297  ls -l
  298  cp -r ~/RTA_Examen_20241118 ~/UTNFRA_SO_2do_Parcial_Rodicio
  299  ls -l
  300  cd RTA_Examen_20241118/
  301  ls -l
  302  cd ..
  303  tree
  304  sudo apt install tree
  305  tree
  306  ls -l
  307  history > ~/UTNFRA_SO_2do_Parcial_Rodicio/.bash_history
