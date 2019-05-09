p6_aws_cloudhsm_available_zones_list() {

    p6_run_read_cmd aws cloudhsm list-available-zones "$@"
}
