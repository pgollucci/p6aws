p6_aws_ssm_parameters_by_path_get() {
    local path="$1"
    shift 1

    p6_log_and_run aws ssm get-parameters-by-path --path $path "$@"
}
