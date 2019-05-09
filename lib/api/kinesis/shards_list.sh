p6_aws_kinesis_shards_list() {

    p6_log_and_run aws kinesis list-shards "$@"
}
