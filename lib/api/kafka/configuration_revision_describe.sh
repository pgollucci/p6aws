p6_aws_kafka_configuration_revision_describe() {
    local arn="$1"
    local revision="$2"
    shift 2

    p6_run_read_cmd aws kafka describe-configuration-revision --arn $arn --revision $revision "$@"
}
