//for now just destroy
var unit = argument0;
var damage = argument1;
if (unit.alive) {
    unit.hp -= damage;
    
    if (unit.hp <= 0) {
        unit.alive = false;
    }
    
    c_log("pre blood spatter", C_LOG__DEBUG);
        
    if (object_is_ancestor(unit.object_index, o_infected)) {
        part_emitter_region(
            glb_part_system_blood,
            glb_part_emitter_blood,
            unit.x,
            unit.x + unit.width,
            unit.y,
            unit.y + unit.height,
            ps_shape_ellipse,
            ps_distr_gaussian
        );
        
        part_emitter_burst(
            glb_part_system_blood,
            glb_part_emitter_blood,
            glb_particle_blood,
            10
        );
    }
}
