p6_aws_globalaccelerator_accelerators_list() {

    p6_run_read_cmd aws globalaccelerator list-accelerators "$@"
}
