x1 = oPlayer.x - 75;
y1 = oPlayer.y - 60;
x2 = oPlayer.x - 40;
y2 = oPlayer.y - 30;


draw_set_colour(c_black);
draw_rectangle(x1,y1,x1+(x2-x1)*(4),y2,1);

//Funciones draw_* solo pueden ir dentro del evento draw
draw_set_colour(c_red);
//El rectangulo se queda creado
draw_rectangle(x1,y1,x1+(x2-x1)*(charge),y2,0); 
