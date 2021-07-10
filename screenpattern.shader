shader_type canvas_item;
uniform sampler2D mask_texture;

void fragment(){
	COLOR = texture(TEXTURE, UV);
	if (COLOR.a != 0f) {
		vec4 st = texture(mask_texture, SCREEN_UV);
		COLOR = vec4(st.x, st.y, st.z, 1.0);
	}
}
