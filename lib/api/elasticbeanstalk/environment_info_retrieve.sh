p6_aws_elasticbeanstalk_environment_info_retrieve() {
    local info_type="$1"
    shift 1

    p6_run_write_cmd aws elasticbeanstalk retrieve-environment-info --info-type $info_type "$@"
}
