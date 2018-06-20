set DRONOLOGY_DIR /home/michael/Dronology

set LAUNCHER_DIR          "$DRONOLOGY_DIR/edu.nd.dronology.services.launch"
set GROUND_STATION_DIR    "$DRONOLOGY_DIR/python/edu.nd.dronology.gstation1.python/src"
set VAADIN_DIR            "$DRONOLOGY_DIR/edu.nd.dronology.ui.vaadin"

function launcher_func
    cd "$LAUNCHER_DIR"
    mvn exec:java
end

function vaadin_func
    cd $VAADIN_DIR
    mvn jetty:run
end

function ground_station_func
    cd "$GROUND_STATION_DIR"
    python main.py
end