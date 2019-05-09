p6_aws_robomaker_simulation_application_create() {
    local name="$1"
    local sources="$2"
    local simulation_software_suite="$3"
    local robot_software_suite="$4"
    local rendering_engine="$5"
    shift 5

    p6_log_or_run aws robomaker create-simulation-application --name $name --sources $sources --simulation-software-suite $simulation_software_suite --robot-software-suite $robot_software_suite --rendering-engine $rendering_engine "$@"
}
