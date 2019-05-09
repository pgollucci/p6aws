p6_aws_guardduty_detectors_list() {

    p6_log_and_run aws guardduty list-detectors "$@"
}
