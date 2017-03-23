uniform lowp float roughness;
uniform highp sampler2D sampler2d;
varying lowp vec4 vertexColor;
varying highp vec2 texCoord;
void main (void)
{
	lowp vec4 t0 = texture2D(sampler2d, texCoord, roughness);
	gl_FragColor = vec4(1,1,1,t0.r)*vertexColor;
}