shader_type canvas_item;
uniform sampler2D mask_texture;



void fragment(){
	COLOR = texture(TEXTURE, UV);
	if (COLOR.a != 0f) {
		vec4 vmask = texture(mask_texture, UV);
		COLOR = vec4(vmask.x, vmask.y, 0f, 1f);
	}
}