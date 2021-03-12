# Script created by emeirelles@vmware.com
# Created March 02nd, 2021
# change the variables bellow to reflect your enviroment

# ***** System Variable ********
reg=demo.goharbor.io
#proj=emeirelles
usr=emeirelles

# echo "Type your password"
# read sPW
clear
echo "*** Logging to Docker Registry ***"
echo ""
docker login
echo ""
echo "*** Pulling Images ***"
echo ""
docker pull nginx
echo ""
docker pull busybox
echo ""
docker pull emeirell/apache:php7
clear
echo ""
echo "Login to internal Registry"
echo ""
docker login $reg
echo "*** Type the project where to store the images ***"
read proj
echo ""
echo "*** tagging images ***"
echo ""
docker tag nginx $reg/$proj/nginx:latest
docker tag busybox $reg/$proj/busybox:latest
docker tag emeirell/apache:php7 $reg/$proj/apache:latest
clear
echo ""
echo "*** Pushing images to Registry ***"
docker push $reg/$proj/nginx:latest
echo ""
docker push $reg/$proj/busybox:latest
echo ""
docker push $reg/$proj/apache:latest
