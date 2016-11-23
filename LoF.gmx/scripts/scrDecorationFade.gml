if instance_place(x, y, objEntityLiving)
{
//   draw_set_blend_mode(bm_subtract);
   draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.6);
}
else
{
   draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1.0);
}

draw_set_blend_mode(bm_normal);

