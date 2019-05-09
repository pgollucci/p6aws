p6_aws_dax_parameter_group_create() {
    local parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws dax create-parameter-group --parameter-group-name $parameter_group_name "$@"
}
