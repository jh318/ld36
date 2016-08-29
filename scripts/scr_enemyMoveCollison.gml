//MOVEMENT
if (self.x > obj_village.x){ //determine position of village
    mdirection = -1;  } //Move left
else{
    mdirection = 1; } //Move right
     
hsp = mdirection * msp; //Assign hsp move right/left
self.image_xscale = mdirection;
x+=hsp;  //Move horizontally
y+=vsp; //Apply vertical movement speed; probably not used

///COLLISION
if (vsp < 10) vsp += grav; //apply gravity to object

if (place_meeting(x,y+1,obj_tile)) //check if ground is 1px below obj
{
    vsp = 0; //DO NOT pass ground
}

/*if (place_meeting(x+sign(hsp),y,obj_village)) //check for village collision
    {
        msp = 0; //DO NOT pass village
    }*/
