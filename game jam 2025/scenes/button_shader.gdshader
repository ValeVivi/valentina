shader_type canvas_item;

uniform float height = 2.0;
uniform float frequency = 10.0;
uniform float speed = 1.5;

void vertex() {
	VERTEX.y += height * sin((frequency * UV.x) + (speed * TIME));
}
