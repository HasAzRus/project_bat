shader_set(shader);

shader_set_uniform_f(brightness, 0.2);
shader_set_uniform_f(contrast, 1.4);

shader_set_uniform_f(bloom, 0.1);

draw_surface(application_surface, 0, 0);

shader_reset();