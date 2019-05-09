p6_aws_mq_brokers_list() {

    p6_run_read_cmd aws mq list-brokers "$@"
}
