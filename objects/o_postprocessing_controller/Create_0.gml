application_surface_draw_enable(false);

shader = shd_postprocess;

brightness = shader_get_uniform(shader, "u_Brightness");
contrast = shader_get_uniform(shader, "u_Contrast");

bloom = shader_get_uniform(shader, "u_BloomIntensity");