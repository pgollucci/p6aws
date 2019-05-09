p6_aws_ssm_patch_properties_describe() {
    local operating_system="$1"
    local property="$2"
    shift 2

    p6_run_read_cmd aws ssm describe-patch-properties --operating-system $operating_system --property $property "$@"
}
