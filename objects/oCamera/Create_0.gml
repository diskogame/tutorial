cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; //En este caso es igual que poner x
yTo = ystart; //En este caso es igual que poner y

//Screen shake
shake_lenght = 60;
shake_magnitude = 0;
shake_remain = 0;
//buff para no salirnos de la pantalla al hacer el shake
buff = 32;