p6_aws_sqs_queues_list() {

    p6_run_read_cmd aws sqs list-queues "$@"
}
