p6_aws_ssm_parameters_by_path_get() {
    local path="$1"
    shift 1

    p6_run_read_cmd aws ssm get-parameters-by-path --path $path "$@"
}
