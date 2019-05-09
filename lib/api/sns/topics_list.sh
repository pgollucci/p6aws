p6_aws_sns_topics_list() {

    p6_run_read_cmd aws sns list-topics "$@"
}
