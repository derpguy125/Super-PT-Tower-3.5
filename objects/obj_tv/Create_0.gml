global.collect = 1357924;

global.roomname = "PIZZA TOWER ISLAND";
showroomname = false;

frame = 0;

tvsprite = spr_tv_noia_normal;
tvindex = 0;

yi  = 286;
yi2 = 0;

global.scorefont = font_add_sprite_ext(spr_scorenumbers,"0123456789:",true,-2);
global.font		 = font_add_sprite(spr_mainfont,ord("!"),true,1);
global.font2	 = font_add_sprite(spr_mainfont2,ord("!"),true,1);

pal_swap_init_system(shd_pal_swapper);