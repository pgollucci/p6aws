p6_aws_iotevents_input_describe() {
    local input_name="$1"
    shift 1

    p6_run_read_cmd aws iotevents describe-input --input-name $input_name "$@"
}
