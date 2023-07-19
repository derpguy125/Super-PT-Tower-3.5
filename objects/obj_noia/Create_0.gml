/// @description Initialize Player Vars
hsp			= 0;				// Horizontal Speed
vsp			= 0;				// Vertical Speed

movespeed	= 0;				// Movespeed

dir			= 1;				// Character Direction

grv			= 0.25;				// Gravity
ground		= true;				// On Ground
varJump		= false;			// Variable Jump

image_speed = 0.25;				// Image speed stays constant

global.pal  = 0;				// Player Palette

global.char = "N";				// Character

character_sprites();			// Initialize character sprites

state		= "nothing";		// Current State
savestate	= "nothing";		// Saved State (for taunt)
savesprite  = spr_idle;			// Saved Sprite
savehsp		= 0;				// Saved Hor.Speed
savevsp		= 0;				// Saved Ver.Speed
savemach2	= 0;				// Saved Mach 2 Timer
taunttimer	= 0;				// Taunt Timer

momentum	= false;			// Jump Momentum
mach2		= 0;				// Mach 2 Timer
ceilHit		= 0;				// Ceiling Hit Timer
bumptimer	= 0;				// Bumping Timer

targetRoom  = Realtitlescreen;	// Target Room
targetDoor	= "A";				// Target Door

hallway		= false;			// Hallway
hallwaydir	= 1;				// Hallway Direction

vhallway	= false;			// Vertical Hallway
vhallwaydir = 1;				// Vertical Hallway Direction

depth		= -999;				// Just to make sure NOIA is drawn over everything else