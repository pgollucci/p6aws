p6_aws_shield_protections_list() {

    p6_run_read_cmd aws shield list-protections "$@"
}
