//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 vTexcoord1 = v_vTexcoord + vec2(0.003, 0.0);
	vec2 vTexcoord2 = v_vTexcoord - vec2(0.003, 0.0);
	vec2 vTexcoord3 = v_vTexcoord + vec2(0.0, 0.003);
	vec2 vTexcoord4 = v_vTexcoord - vec2(0.0, 0.003);
	
	vec4 vColour1 = texture2D(gm_BaseTexture, vTexcoord1);
	//vColour1.w = 0.5;
	
	vec4 vColour2 = texture2D(gm_BaseTexture, vTexcoord2);
	//vColour2.w = 0.5;
	
	vec4 vColour3 = texture2D(gm_BaseTexture, vTexcoord3);
	//vColour3.w = 0.5;
	
	vec4 vColour4 = texture2D(gm_BaseTexture, vTexcoord4);
	//vColour4.w = 0.5;
	
    gl_FragColor = v_vColour * (vColour1 + vColour2 + vColour3 + vColour4);// + texture2D(gm_BaseTexture, v_vTexcoord));
}
