global.collect = 0;

global.roomname = "PIZZA TOWER ISLAND";
showroomname = false;

frame = 0;

tvsprite = spr_tv_noia_normal;
tvindex = 0;

yi  = 286;
yi2 = 0;

xi  = 480;

global.scorefont = font_add_sprite_ext(spr_scorenumbers,"0123456789:",true,-2);
global.font		 = font_add_sprite(spr_mainfont,ord("!"),true,1);
global.font2	 = font_add_sprite(spr_mainfont2,ord("!"),true,1);

global.hud_enabled = false;

message = ""
showtext = 0
promptsurface = surface_create(266,32)
promptx = 280
promptxstart = promptx
promptspd = 2

msg_store = ds_queue_create();

pal_swap_init_system(shd_pal_swapper);

display_set_gui_size(480, 270)