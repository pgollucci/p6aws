p6_aws_guardduty_detectors_list() {

    p6_run_read_cmd aws guardduty list-detectors "$@"
}
