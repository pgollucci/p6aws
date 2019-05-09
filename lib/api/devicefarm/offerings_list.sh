p6_aws_devicefarm_offerings_list() {

    p6_run_read_cmd aws devicefarm list-offerings "$@"
}
