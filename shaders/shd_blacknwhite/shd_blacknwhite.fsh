//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 original = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float m = (original.r + original.g + original.b) / 3.0;
	vec4 color = vec4(m, m, m, original.a);
	
    gl_FragColor = color;
}
