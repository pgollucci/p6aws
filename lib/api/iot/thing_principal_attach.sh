p6_aws_iot_thing_principal_attach() {
    local thing_name="$1"
    local principal="$2"
    shift 2

    p6_run_write_cmd aws iot attach-thing-principal --thing-name $thing_name --principal $principal "$@"
}
