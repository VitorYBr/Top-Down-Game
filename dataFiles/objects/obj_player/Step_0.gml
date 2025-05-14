//Inputs
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
dash = keyboard_check_pressed(vk_space);

// x and y speed WASD
xspd = (rightKey - leftKey) * moveSpd;
yspd = (downKey - upKey) * moveSpd;

//Collisions
if place_meeting(x + xspd, y, obj_wall){
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall){
		yspd = 0; 
}


//move player

x += xspd;
y += yspd;











