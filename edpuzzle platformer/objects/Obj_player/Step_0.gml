/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculat movment
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

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
if (place_meeting(x,y ,Obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,Obj_wall))
    {
	   x = x + sign(hsp);
    }
	hsp = 0;
}
x = x + hsp;