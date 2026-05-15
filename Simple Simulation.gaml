model SimpleSimulation

global {
    int nb_agents <- 50;
    init {
        create my_agent number: nb_agents;
    }
}

species my_agent skills: [moving] {
    rgb color <- #blue;
    
    reflex move {
        do wander;
    }
    
    aspect default {
        draw circle(2) color: color;
    }
}

experiment main_experiment type: gui {
    output {
        display map {
            species my_agent;
        }
    }
}