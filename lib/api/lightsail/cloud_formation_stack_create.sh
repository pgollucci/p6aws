p6_aws_lightsail_cloud_formation_stack_create() {
    local instances="$1"
    shift 1

    p6_run_write_cmd aws lightsail create-cloud-formation-stack --instances $instances "$@"
}
