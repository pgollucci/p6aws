p6_aws_elasticbeanstalk_environment_terminate() {

    p6_run_write_cmd aws elasticbeanstalk terminate-environment "$@"
}
