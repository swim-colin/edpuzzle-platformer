/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculat movment
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Obj_wall)) && (key_jump)
{
 	vsp = -jumpsp
}

//horizontal collison
if (place_meeting(x+hsp,y,Obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,Obj_wall))
    {
	   x = x + sign(hsp);
    }
	hsp = 0;
}
x = x + hsp;
//vertical collison
if (place_meeting(x,y+vsp,Obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),Obj_wall))
    {
	   y = y + sign(vsp);
    }
	vsp = 0;
}
y = y + vsp;

//animation
if (!place_meeting(x,y+1,Obj_wall))
{
	sprite_index = Spr_jump;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Spr_player
	}
	else
	{
		sprite_index = Spr_player_run
	}
}	

if (hsp != 0) image_xscale = sign(-hsp);
		
		
		
		