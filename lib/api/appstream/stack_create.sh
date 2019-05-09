p6_aws_appstream_stack_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream create-stack --name $name "$@"
}
