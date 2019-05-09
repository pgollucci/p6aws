p6_aws_elasticbeanstalk_environment_rebuild() {

    p6_run_write_cmd aws elasticbeanstalk rebuild-environment "$@"
}
